#include<stdio.h>
#include<math.h>
#include <errno.h>

#include <fcntl.h>
#include <sys/types.h>
#include <sys/mman.h>

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <chrono>
#include <cmath>
#include "pcie_memio.h" 
#include "srai_accel_utils.h" 
#define ZERO_f 1.0e-4
#define ITERATION_SZ 1
//#define ITERATION_SZ 4096
//#define ITERATION_SZ 8192
//#define ITERATION_SZ 16384
//#define ITERATION_SZ 32768
#define ONE_GIG (1024UL*1024UL*1024UL)

#define TEST_DATA_SIZE 1024

#define USE_UDMABUF


#define HW_Kernel_frequency 250000000.0


using namespace std;


int check_buf(unsigned char* buf, unsigned int size)
{
    int i;
    int error_count = 0;
    for(i = 0; i < size; i++) {
        buf[i] = (char)0xA5;
    }
    for(i = 0; i < size; i++) {
        if (buf[i] != (char)0xA5) {
         error_count++;
        }
    }
    return error_count;
}


int main(int argc, char** argv) {

  int            fd;
  char  attr[1024];
  unsigned int   udma_buf_size;
  uint32_t   buf_size;
  uint32_t   result_buffer_offset;
  uint64_t phys_addr;
  uint64_t phys_addr_upper;
  unsigned long  debug_vma = 0;
  unsigned long  sync_mode = 2;
  uint32_t dbg_counter = 0;
  uint32_t test_data_byte_count = 0;

  unsigned long int itrn = 0;
  int compute_itn_count;
  uint32_t TCR0;
  volatile uint32_t TCSR0;
  uint32_t itn_count = 0;
  time_t t;
  srand((unsigned) time(&t));
  double high_res_elapsed_time = 0.0f;
  double high_res_elapsed_time_HW = 0.0f;
  double high_res_elapsed_time_SW = 0.0f;
  chrono::high_resolution_clock::time_point start_t;
  chrono::high_resolution_clock::time_point stop_t;
  chrono::duration<double> elapsed_hi_res;


  int   fd_kmem;
  void* kmem_buf;
  unsigned char * kmem_buf_ptr;

  ofstream  sref_dbg_data_file;

  sref_dbg_data_file.open("sref_dbg_ddr4_data.txt");
  sref_dbg_data_file << "Written / Expected" <<  " :: " << "Read Back / Gotback" << endl;


  SysMon_temp_struct sys_temprature;
  deviceDNA_struct deviceDNA;
  bool RESULT_SUCESSFULL;
  kernel_execution_metric_struct kernel_execution_metric; 

  uint64_t cal_itn_count = 0;

// Compile for SRAI custom HLS accelerator platform 
    uint32_t PCI_BAR_base_VF0;
    uint32_t PCI_BAR_base_VF1;
    stringstream PCI_BAR_VF0_base_str;
    stringstream PCI_BAR_VF1_base_str;
    string PR_binFile_name;

    if (argc != 4) {
        printf("usage: %s fpga_bin_file \n", argv[0]);
        return -1;
    }

    PCI_BAR_VF0_base_str << hex <<  argv[1]; 
    PCI_BAR_VF1_base_str << hex <<  argv[2]; 
    PR_binFile_name = argv[3];

    PCI_BAR_VF0_base_str >> PCI_BAR_base_VF0;
    PCI_BAR_VF1_base_str >> PCI_BAR_base_VF1;

    
    cout << "VF0 Base Addr = 0x"  << hex << PCI_BAR_base_VF0 << endl;
    cout << "VF1 Base Addr = 0x"  << hex << PCI_BAR_base_VF1 << endl;

    cout << "Initializing FPGA\n";
    fpga_dev_mem *fpga_ptr_vf0 = new fpga_dev_mem;
    fpga_dev_mem *fpga_ptr_vf1 = new fpga_dev_mem;
    // BAR SIZE for VF0 = (4*1024*1024)
    fpga_ptr_vf0->fpga_dev_mem_init((4*1024*1024), PCI_BAR_base_VF0);

    // BAR SIZE for VF1 = (1*1024*1024)
    fpga_ptr_vf1->fpga_dev_mem_init((1*1024*1024), PCI_BAR_base_VF1);


#ifdef USE_UDMABUF
    // __ udmabuf kernal mode driver needs to be installed 
    if ((fd  = open("/sys/class/udmabuf/udmabuf0/phys_addr", O_RDONLY)) != -1) {
      read(fd, attr, 1024);
      sscanf(attr, "%llx", &phys_addr);
      close(fd);
    }

    if ((fd  = open("/sys/class/udmabuf/udmabuf0/size"     , O_RDONLY)) != -1) {
      read(fd, attr, 1024);
      sscanf(attr, "%d", &udma_buf_size);
      close(fd);
    }

    if ((fd  = open("/sys/class/udmabuf/udmabuf0/sync_mode", O_WRONLY)) != -1) {
      sprintf(attr, "%d", sync_mode);
      write(fd, attr, strlen(attr));
      close(fd);
    }

    if ((fd  = open("/sys/class/udmabuf/udmabuf0/debug_vma", O_WRONLY)) != -1) {
      sprintf(attr, "%d", debug_vma);
      write(fd, attr, strlen(attr));
      close(fd);
    }

    //check_buf_test((64*1024), 0, 0);
    if ((fd  = open("/sys/class/udmabuf/udmabuf0/sync_mode", O_WRONLY)) != -1) {
      sprintf(attr, "%d", sync_mode);
      write(fd, attr, strlen(attr));
      close(fd);
    }

    buf_size = udma_buf_size;
    result_buffer_offset = (buf_size/2);
    //buf_size = 512*1024;
    test_data_byte_count = (TEST_DATA_SIZE > (buf_size/2)) ? (buf_size/2) : TEST_DATA_SIZE; 

    cout << "Test data set size = " << dec << test_data_byte_count << endl;

    printf("phys_addr=0x%llx\n", phys_addr);
    printf("size=%d\n", udma_buf_size);
    printf("DMA size=%d\n", buf_size);
    printf("sync_mode=%d, O_SYNC=%d, ", sync_mode, (O_SYNC)?1:0);

    if ((fd_kmem  = open("/dev/udmabuf0", O_RDWR | O_SYNC)) != -1) {
      kmem_buf = mmap(NULL, buf_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
      kmem_buf_ptr = (unsigned char *)kmem_buf;
      printf ("SRAI__DBG :: Virtual Address = %llx\n", kmem_buf);
      //error_count = check_buf((unsigned char *)kmem_buf, size);
    }
    // __SRAI Initialize Kernel buffer (1MB worth)
    for (int i = 0; i < buf_size; i++) {
        kmem_buf_ptr[i] = (unsigned char)((rand() % 256));
//          if (i < (buf_size/2)) { 
//              //kmem_buf_ptr[i] = (0x000000FF & i);
//              kmem_buf_ptr[i] = i; 
//          } else {
//              kmem_buf_ptr[i] = (0xA5);
//          }
    }
    // __ udmabuf kernal mode driver needs to be installed 
   printf("-------------------------------------------------------------\n\n\n");

#endif //USE_UDMABUF



    uint32_t curr_shell_version = fpga_report_SHELL_VER (fpga_ptr_vf1);
    cout << "Shell Version Number = 0x" << hex << curr_shell_version << endl;
    cout << "EFUSE val = 0x" << hex << fpga_report_EFUSE_VAL (fpga_ptr_vf1) << endl;

    cout << dec << "Testing Shell BRAM 8K Memory \n";
    fpga_test_AXIL_LITE_8KSCRATCHPAD_BRAM (fpga_ptr_vf0);
    cout << dec << "Testing Shell VF1 BRAM 8K Memory \n";
    fpga_test_AXIL_LITE_8KSCRATCHPAD_BRAM_VF1 (fpga_ptr_vf1);

    //DeIsolate before doing anyting on AXI Buses
    cout << "DeIsolate PR region \n";
    fpga_PR_DEISOLATE (fpga_ptr_vf1);
    unset_ddr4_RESET_GATE (fpga_ptr_vf1);
    SR_CL_ddr_deassert_all (fpga_ptr_vf0, AXI_LITE_DDR4_0_SREF_REG, AXI_LITE_DDR4_0_SREF_STATE);
    SR_CL_ddr_deassert_all (fpga_ptr_vf0, AXI_LITE_DDR4_1_SREF_REG, AXI_LITE_DDR4_1_SREF_STATE);
    SR_CL_ddr_deassert_all (fpga_ptr_vf0, AXI_LITE_DDR4_2_SREF_REG, AXI_LITE_DDR4_2_SREF_STATE);
    SR_CL_ddr_deassert_all (fpga_ptr_vf0, AXI_LITE_DDR4_3_SREF_REG, AXI_LITE_DDR4_3_SREF_STATE);
    cout << "Deassert SW reset to PR region PR region \n";
    assert_DDR_rst_all (fpga_ptr_vf1);
    assert_CL_rst_main_n (fpga_ptr_vf1);
    deassert_CL_rst_main_n (fpga_ptr_vf1);
    deassert_DDR_rst_all (fpga_ptr_vf1);
    cout << "...Waiting for Cal Done......" << endl;
    cal_itn_count = wait_ddr_CAL_DONE (fpga_ptr_vf0, 4);//ddr_mask 4 = 0xf = all DDR's
    cout << " ***********__SRAI_DBG cal_itn_count = " << cal_itn_count << endl;

    SR_CL_ddr_XSDB_read (fpga_ptr_vf0, "mig_0_temp_test_GOLD.txt", 0);
    SR_CL_ddr_XSDB_read (fpga_ptr_vf0, "mig_1_temp_test_GOLD.txt", 1);
    SR_CL_ddr_XSDB_read (fpga_ptr_vf0, "mig_2_temp_test_GOLD.txt", 2);
    SR_CL_ddr_XSDB_read (fpga_ptr_vf0, "mig_3_temp_test_GOLD.txt", 3);

    fpga_read_temprature(fpga_ptr_vf1, &sys_temprature, 10);
    cout << "Current FPGA Die Temprature (deg C) =  " << sys_temprature.current_temp << endl;
    cout << "Current FPGA Max Die Temprature (deg C) =  " << sys_temprature.maximum_temp << endl;
    cout << "Current FPGA Min Die Temprature (deg C) =  " << sys_temprature.minimum_temp << endl;

    fpga_device_DNA (fpga_ptr_vf1, &deviceDNA);
    cout << "FPGA Device DNA reg A = 0x" << hex << deviceDNA.devDNA_A << endl;
    cout << "FPGA Device DNA reg B = 0x" << hex << deviceDNA.devDNA_B << endl;
    cout << "FPGA Device DNA reg C = 0x" << hex << deviceDNA.devDNA_C << endl;

    cout << "Start HLS execution " << endl;
    cout << " ............... Programing PR clock ------------------ " << endl;
    fpga_PROGRAM_PR_CLOCK (fpga_ptr_vf0, HW_Kernel_frequency);
    cout << " ....DONE ...... Programing PR clock ------------------ " << endl;
    //

    /* Program Partial Bit file */
    cout << " ............... Programing PR Kernel  bitstream  ------------------ " << endl;
    assert_DDR_rst_all (fpga_ptr_vf1);
    set_ddr4_RESET_GATE (fpga_ptr_vf1);
    // //__|fpga_ICAP_RESET_CRC_VALUE (fpga_ptr_vf0);
    fpga_PROGRAM_NORTH_PR(fpga_ptr_vf1, PR_binFile_name);
    // //__| cout << " FPGA PR Bin file HW CRC Read back = " << hex  << fpga_ICAP_READ_CRC_VALUE(fpga_ptr_vf0) << endl;
    unset_ddr4_RESET_GATE (fpga_ptr_vf1);
    deassert_DDR_rst_all(fpga_ptr_vf1);
    cout << "...Waiting for Cal Done......" << endl;
    cal_itn_count = wait_ddr_CAL_DONE (fpga_ptr_vf0, 0x4); //ddr_mask = 0xf = all DDR's
    cout << " ***********__SRAI_DBG cal_itn_count = " << cal_itn_count << endl;
    cout << " ............... Done Programing PR Kernel Bitstream ------------------ " << endl;

    cout << "Testing ROLE  BRAM 4K BRAM Memory \n";
    fpga_test_AXIL_LITE_4KSCRATCHPAD_BRAM_ROLE (fpga_ptr_vf0);

    cout << "ROLE  CDMA Reset Test\n";
    fpga_CDMA_RESET (fpga_ptr_vf0);



#ifdef USE_UDMABUF
    phys_addr_upper = phys_addr + (uint64_t)(result_buffer_offset);

    uint32_t XFER_buf_size;

    //XFER_buf_size = 512;
    XFER_buf_size = buf_size;
    // Throughput testing
    //SRAI_dbg_wait("Bandwidth test From Host to Card");
// ---------------------------------------------------
    cout << "\n\nTesting Host to Card C0 Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (fpga_ptr_vf0, phys_addr, (AXI_MM_DDR4_C0 + itrn*XFER_buf_size), XFER_buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Host Memory to Card DDR4 xfer  Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Host Memory to Card DDR4 xfer  THroughput =  " <<  ((itrn*XFER_buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec  << (itrn*XFER_buf_size) << " bytes\n";

    cout << "\n\nTesting Card C0 HOST Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (fpga_ptr_vf0, (AXI_MM_DDR4_C0 + itrn*XFER_buf_size), phys_addr, XFER_buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Host Memory to Card DDR4 xfer  Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Host Memory to Card DDR4 xfer  THroughput =  " <<  ((itrn*XFER_buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec  << (itrn*XFER_buf_size) << " bytes\n";
// ---------------------------------------------------
    cout << "\n\nTesting Host to Card C1 Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (fpga_ptr_vf0, phys_addr, (AXI_MM_DDR4_C1 + itrn*XFER_buf_size), XFER_buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Host Memory to Card DDR4 xfer  Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Host Memory to Card DDR4 xfer  THroughput =  " <<  ((itrn*XFER_buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec  << (itrn*XFER_buf_size) << " bytes\n";


    cout << "\n\nTesting Card C1 Host Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (fpga_ptr_vf0, (AXI_MM_DDR4_C1 + itrn*XFER_buf_size), phys_addr, XFER_buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Host Memory to Card DDR4 xfer  Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Host Memory to Card DDR4 xfer  THroughput =  " <<  ((itrn*XFER_buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec  << (itrn*XFER_buf_size) << " bytes\n";
// ---------------------------------------------------
    cout << "\n\nTesting Host to Card C2 Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (fpga_ptr_vf0, phys_addr, (AXI_MM_DDR4_C2 + itrn*XFER_buf_size), XFER_buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Host Memory to Card DDR4 xfer  Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Host Memory to Card DDR4 xfer  THroughput =  " <<  ((itrn*XFER_buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec  << (itrn*XFER_buf_size) << " bytes\n";


    cout << "\n\nTesting Card C2 Host Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (fpga_ptr_vf0, (AXI_MM_DDR4_C2 + itrn*XFER_buf_size), phys_addr, XFER_buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Host Memory to Card DDR4 xfer  Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Host Memory to Card DDR4 xfer  THroughput =  " <<  ((itrn*XFER_buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec  << (itrn*XFER_buf_size) << " bytes\n";
// ---------------------------------------------------
    cout << "\n\nTesting Host to Card C3 Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (fpga_ptr_vf0, phys_addr, (AXI_MM_DDR4_C3 + itrn*XFER_buf_size), XFER_buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Host Memory to Card DDR4 xfer  Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Host Memory to Card DDR4 xfer  THroughput =  " <<  ((itrn*XFER_buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec  << (itrn*XFER_buf_size) << " bytes\n";


    cout << "\n\nTesting Card C3 Host Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (fpga_ptr_vf0, (AXI_MM_DDR4_C3 + itrn*XFER_buf_size), phys_addr, XFER_buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Host Memory to Card DDR4 xfer  Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Host Memory to Card DDR4 xfer  THroughput =  " <<  ((itrn*XFER_buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec  << (itrn*XFER_buf_size) << " bytes\n";
// ---------------------------------------------------


    //SRAI_dbg_wait("CDMA From_Host");
    // __SRAI Initialize Kernel buffer (1MB worth)
    for (int i = 0; i < buf_size; i++) {
        kmem_buf_ptr[i] = (unsigned char)((rand() % 256));
    }

    start_t = chrono::high_resolution_clock::now();
    cout << " Initiating CDMA XFER From host to DDR_C0 (shell DDR4)----------- " << endl;
    fpga_CDMA_XFER (fpga_ptr_vf0, phys_addr, AXI_MM_DDR4_C0,  test_data_byte_count);

    cout << " Initiating CDMA XFER From DDR_C0 to DDR_C1 (shell DDR4)----------- " << endl;
    fpga_CDMA_XFER (fpga_ptr_vf0, AXI_MM_DDR4_C0, AXI_MM_DDR4_C1,  test_data_byte_count);

    cout << " Initiating CDMA XFER From DDR_C1 to DDR_C2 (shell DDR4)----------- " << endl;
    fpga_CDMA_XFER (fpga_ptr_vf0, AXI_MM_DDR4_C1, AXI_MM_DDR4_C2, test_data_byte_count);

    cout << " Initiating CDMA XFER From DDR_C2 to DDR_C3 (shell DDR4)----------- " << endl;
    fpga_CDMA_XFER (fpga_ptr_vf0, AXI_MM_DDR4_C2, AXI_MM_DDR4_C3, test_data_byte_count);

    cout << " Initiating CDMA XFER From DDR_C3 to host (shell DDR4)----------- " << endl;
    fpga_CDMA_XFER (fpga_ptr_vf0, AXI_MM_DDR4_C3, phys_addr_upper, test_data_byte_count);


    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "CDMA HOST -> 4x DDR4 -> Host xfer time =  " <<  high_res_elapsed_time_HW << "s\n";
    
    unsigned int val_error = 0;
    for (int i = 0; i < test_data_byte_count;  i++) {
        if(kmem_buf_ptr[i] != kmem_buf_ptr[i + result_buffer_offset]) {
            //cout << " At index = " << i <<"  Expected  " << hex << (unsigned int)kmem_buf_ptr[i] << " But Got  " << (unsigned int)kmem_buf_ptr[i + buf_size] << endl;
            val_error++;
        }
    }

    cout << "Kernel buffer validation : No. of Errors = " << dec << val_error << endl;
    cout << "------------------------------------------------------------------------\n";

    // ------------ Clean -----------------------
    close(fd_kmem);
#endif //USE_UDMABUF
// __SRAI __|
// __SRAI __|    // Software reset rst_main_n test
// __SRAI __|    dbg_counter = fpga_ptr_vf0->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT); 
// __SRAI __|    cout << "DBG_counter itn_1  before SW rst man_rst_n = " << dbg_counter << endl;
// __SRAI __|    dbg_counter = fpga_ptr_vf0->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT); 
// __SRAI __|    cout << "DBG_counter itn_2  before SW rst man_rst_n = " << dbg_counter << endl;
// __SRAI __|    cout << "Assert CL rst_n \n";
// __SRAI __|    assert_CL_rst_main_n (fpga_ptr_vf1);
// __SRAI __|    deassert_CL_rst_main_n (fpga_ptr_vf1);
// __SRAI __|    cout << "deassert CL rst_n \n";
// __SRAI __|    dbg_counter = fpga_ptr_vf0->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT); 
// __SRAI __|    cout << "DBG_counter itn_1  after SW rst man_rst_n = " << dbg_counter << endl;
// __SRAI __|    dbg_counter = fpga_ptr_vf0->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT); 
// __SRAI __|    cout << "DBG_counter itn_2  after SW rst man_rst_n = " << dbg_counter << endl;
// __SRAI __|
// __SRAI __|//-----------------------------------------------------------------------------------
// __SRAI __|//***********************************************************************************
// __SRAI __|//  SRAI test _temp
// __SRAI __|//-----------------------------------------------------------------------------------
// __SRAI __|if (1) { // __SRAI DBG
// __SRAI __|        cout << "**************************************************Srai temp test start...................\n"; 
// __SRAI __|        fpga_CDMA_RESET (fpga_ptr_vf0);
// __SRAI __|        assert_CL_rst_main_n (fpga_ptr_vf1);
// __SRAI __|        deassert_CL_rst_main_n (fpga_ptr_vf1);
// __SRAI __|        
// __SRAI __|        bool PR_FPGA = false;
// __SRAI __|        //bool PR_FPGA = true;
// __SRAI __|        uint32_t MAX_NUM_ITERATIONS = 2;
// __SRAI __|        //uint32_t MAX_NUM_ITERATIONS = 10;
// __SRAI __|        //uint32_t MAX_NUM_ITERATIONS = 100;
// __SRAI __|        //uint32_t MAX_NUM_ITERATIONS = 1000;
// __SRAI __|        //uint32_t MAX_NUM_ITERATIONS = 5000;
// __SRAI __|        uint32_t SREF_SUCESS = 0;
// __SRAI __|        uint32_t KER_VALID_SUCESS = 0;
// __SRAI __|
// __SRAI __|        uint32_t AXI_LITE_SREF_REG = AXI_LITE_DDR4_2_SREF_REG;
// __SRAI __|        uint32_t AXI_LITE_SREF_STATE = AXI_LITE_DDR4_2_SREF_STATE;
// __SRAI __|        uint64_t AXI_MM_DDR4 = AXI_MM_DDR4_C2;
// __SRAI __|        string MIG_XSDB_GOLDEN_DATA_FILE = "mig_2_temp_test_GOLD.txt";
// __SRAI __|        uint32_t CAL_DONE_MASK_SREF = 0x02;
// __SRAI __|        uint32_t CAL_DONE_MASK_NON_SREF = 0x0D;
// __SRAI __|        uint32_t sref_ddr_intf = 2; 
// __SRAI __|
// __SRAI __|        uint32_t DDR_TEST_INTERFACE = 2;
// __SRAI __|
// __SRAI __|        DDR_TEST_INTERFACE = 0;
// __SRAI __|        for (uint32_t indx = 0; indx < MAX_NUM_ITERATIONS; indx++) {
// __SRAI __|            sref_ddr_intf = (unsigned char)((rand() % 4));
// __SRAI __|//             if (sref_ddr_intf == 1) {
// __SRAI __|//                 DDR_TEST_INTERFACE = 3;
// __SRAI __|//             } else {
// __SRAI __|                 DDR_TEST_INTERFACE = sref_ddr_intf;
// __SRAI __|//             }
// __SRAI __|
// __SRAI __|            DDR_TEST_INTERFACE = 0;
// __SRAI __|            cout << "************ SREF Testing for DDR Interface " << DDR_TEST_INTERFACE << " Start ................." << endl;
// __SRAI __|            sref_dbg_data_file << "************ SREF Testing for DDR Interface " << DDR_TEST_INTERFACE << " Iteration  " << indx << endl;
// __SRAI __|
// __SRAI __|            switch (DDR_TEST_INTERFACE) {
// __SRAI __|                case 0 :
// __SRAI __|                    AXI_LITE_SREF_REG = AXI_LITE_DDR4_0_SREF_REG;
// __SRAI __|                    AXI_LITE_SREF_STATE = AXI_LITE_DDR4_0_SREF_STATE;
// __SRAI __|                    MIG_XSDB_GOLDEN_DATA_FILE = "mig_0_temp_test_GOLD.txt";
// __SRAI __|                    AXI_MM_DDR4 = AXI_MM_DDR4_C0;
// __SRAI __|                    CAL_DONE_MASK_SREF = 0x08;
// __SRAI __|                    CAL_DONE_MASK_NON_SREF = 0x07;
// __SRAI __|                    break;
// __SRAI __|                case 1 :
// __SRAI __|                    AXI_LITE_SREF_REG = AXI_LITE_DDR4_1_SREF_REG;
// __SRAI __|                    AXI_LITE_SREF_STATE = AXI_LITE_DDR4_1_SREF_STATE;
// __SRAI __|                    MIG_XSDB_GOLDEN_DATA_FILE = "mig_1_temp_test_GOLD.txt";
// __SRAI __|                    AXI_MM_DDR4 = AXI_MM_DDR4_C1;
// __SRAI __|                    CAL_DONE_MASK_SREF = 0x04;
// __SRAI __|                    CAL_DONE_MASK_NON_SREF = 0x0B;
// __SRAI __|                    break;
// __SRAI __|                case 2 :
// __SRAI __|                    AXI_LITE_SREF_REG = AXI_LITE_DDR4_2_SREF_REG;
// __SRAI __|                    AXI_LITE_SREF_STATE = AXI_LITE_DDR4_2_SREF_STATE;
// __SRAI __|                    MIG_XSDB_GOLDEN_DATA_FILE = "mig_2_temp_test_GOLD.txt";
// __SRAI __|                    AXI_MM_DDR4 = AXI_MM_DDR4_C2;
// __SRAI __|                    CAL_DONE_MASK_SREF = 0x02;
// __SRAI __|                    CAL_DONE_MASK_NON_SREF = 0x0D;
// __SRAI __|                    break;
// __SRAI __|                case 3 :
// __SRAI __|                    AXI_LITE_SREF_REG = AXI_LITE_DDR4_3_SREF_REG;
// __SRAI __|                    AXI_LITE_SREF_STATE = AXI_LITE_DDR4_3_SREF_STATE;
// __SRAI __|                    MIG_XSDB_GOLDEN_DATA_FILE = "mig_3_temp_test_GOLD.txt";
// __SRAI __|                    AXI_MM_DDR4 = AXI_MM_DDR4_C3;
// __SRAI __|                    CAL_DONE_MASK_SREF = 0x01;
// __SRAI __|                    CAL_DONE_MASK_NON_SREF = 0x0E;
// __SRAI __|                    break;
// __SRAI __|                deafult :
// __SRAI __|                    AXI_LITE_SREF_REG = AXI_LITE_DDR4_2_SREF_REG;
// __SRAI __|                    AXI_LITE_SREF_STATE = AXI_LITE_DDR4_2_SREF_STATE;
// __SRAI __|                    MIG_XSDB_GOLDEN_DATA_FILE = "mig_2_temp_test_GOLD.txt";
// __SRAI __|                    AXI_MM_DDR4 = AXI_MM_DDR4_C2;
// __SRAI __|                    CAL_DONE_MASK_SREF = 0x02;
// __SRAI __|                    CAL_DONE_MASK_NON_SREF = 0x0D;
// __SRAI __|                    break;
// __SRAI __|            
// __SRAI __|            }
// __SRAI __|
// __SRAI __|
// __SRAI __|            //SRAI_dbg_wait("SREF Start..");
// __SRAI __|
// __SRAI __|            for (int i = 0; i < buf_size; i++) {
// __SRAI __|                kmem_buf_ptr[i] = (unsigned char)((rand() % 256));
// __SRAI __|            }
// __SRAI __|           
// __SRAI __|            fpga_CDMA_XFER (fpga_ptr_vf0, phys_addr, AXI_MM_DDR4, test_data_byte_count);
// __SRAI __|
// __SRAI __|            sref_dbg_data_file << "************ Immedeate readback SREF Testing for DDR Interface " << DDR_TEST_INTERFACE << " Iteration  " << indx << endl;
// __SRAI __|            fpga_CDMA_XFER (fpga_ptr_vf0, AXI_MM_DDR4, phys_addr_upper, test_data_byte_count);
// __SRAI __|            unsigned int val_error = 0;
// __SRAI __|            for (int i = 0; i < test_data_byte_count; i++) {
// __SRAI __|                if(kmem_buf_ptr[i] != kmem_buf_ptr[i + result_buffer_offset]) {
// __SRAI __|                    val_error++;
// __SRAI __|                }
// __SRAI __|                sref_dbg_data_file << hex << i << " ::_IMM_:: " << (uint32_t)kmem_buf_ptr[i] <<  " :: " << (uint32_t)kmem_buf_ptr[i + result_buffer_offset] << endl;
// __SRAI __|            }
// __SRAI __|            sref_dbg_data_file << hex << " _IMM_X Read back Error = " << dec << val_error << "  Errors  !! \n"; 
// __SRAI __|            SR_CL_ddr_sref_request (fpga_ptr_vf0, AXI_LITE_SREF_REG, AXI_LITE_SREF_STATE);
// __SRAI __|            set_ddr4_RESET_GATE (fpga_ptr_vf1);
// __SRAI __|
// __SRAI __|            if (PR_FPGA) {
// __SRAI __|                cout << "** SREF Entering FPGA PR Prog protocol" << endl;
// __SRAI __|                fpga_ICAP_RESET_CRC_VALUE (fpga_ptr_vf0);
// __SRAI __|                fpga_PROGRAM_NORTH_PR(fpga_ptr_vf0, PR_binFile_name);
// __SRAI __|                cout << " FPGA PR Bin file HW CRC Read back = " << hex  << fpga_ICAP_READ_CRC_VALUE(fpga_ptr_vf0) << endl;
// __SRAI __|            } else {
// __SRAI __|                cout << "** SREF Entering NON PR emulation" << endl;
// __SRAI __|                cout << "** SREF ...Waiting  6 sec post config ............................." << endl;
// __SRAI __|                usleep(6000000);
// __SRAI __|                cout << "** SREF ... Done Waiting " << endl;
// __SRAI __|            }
// __SRAI __|            
// __SRAI __|            SR_CL_ddr_mem_init_skip_assert (fpga_ptr_vf0, AXI_LITE_SREF_REG, AXI_LITE_SREF_STATE);
// __SRAI __|            unset_ddr4_RESET_GATE (fpga_ptr_vf0);
// __SRAI __|            cal_itn_count = wait_ddr_CAL_DONE (fpga_ptr_vf0, CAL_DONE_MASK_NON_SREF); // wait for DDR_0 
// __SRAI __|            cout << "** SREF  ***********__SRAI_DBG SREF RESTORE cal_itn_count for DDR4_... = " << cal_itn_count << endl;
// __SRAI __|            cout << "** SREF ....End FPGA PR Prog protocol" << endl;
// __SRAI __|            usleep(10000);
// __SRAI __|
// __SRAI __|
// __SRAI __|            SR_CL_ddr_XSDB_write (fpga_ptr_vf0, MIG_XSDB_GOLDEN_DATA_FILE, DDR_TEST_INTERFACE);
// __SRAI __|            SR_CL_ddr_XSDB_read (fpga_ptr_vf0, "mig_temp_test_rd.txt", DDR_TEST_INTERFACE);
// __SRAI __|
// __SRAI __|            SR_CL_ddr_app_restore_complete_assert (fpga_ptr_vf0, AXI_LITE_SREF_REG, AXI_LITE_SREF_STATE);
// __SRAI __|            cout << "** SREF ...Waiting for Cal Done for DDR4......" << endl;
// __SRAI __|            cal_itn_count = wait_ddr_CAL_DONE (fpga_ptr_vf0,DDR_TEST_INTERFACE); // ddr_mask = 0x1 = DDR_3
// __SRAI __|            cout << " ** SREF ***********__SRAI_DBG cal_itn_count for DDR4 = "  << dec << cal_itn_count << endl;
// __SRAI __|            SR_CL_ddr_deassert_all (fpga_ptr_vf0, AXI_LITE_SREF_REG, AXI_LITE_SREF_STATE);
// __SRAI __|            if (cal_itn_count > 50000) {
// __SRAI __|                cout << " DDR Self Refresh Failed !!!!! \n";
// __SRAI __|                SR_CL_ddr_XSDB_read (fpga_ptr_vf0, "mig_temp_test_rd_FAIL.txt", DDR_TEST_INTERFACE);
// __SRAI __|                assert_CL_rst_n(fpga_ptr_vf0, DDR_TEST_INTERFACE);
// __SRAI __|                deassert_CL_rst_n(fpga_ptr_vf0, DDR_TEST_INTERFACE);
// __SRAI __|                cal_itn_count = wait_ddr_CAL_DONE (fpga_ptr_vf0, DDR_TEST_INTERFACE); // ddr_mask = 0x1 = DDR_3
// __SRAI __|                cout << " ***********__SRAI_DBG cal_itn_count for DDR4 = " << cal_itn_count << endl;
// __SRAI __|            } else {
// __SRAI __|                SREF_SUCESS++;
// __SRAI __|                cout << " DDR Self Refresh sucessfully finished\n";
// __SRAI __|                cout << " Initiating CDMA XFER From DDR to host (SREF  DDR4 )----------- " << endl;
// __SRAI __|                sref_dbg_data_file << "************ ATTEMPT 1  SREF Testing for DDR Interface " << DDR_TEST_INTERFACE << " Iteration  " << indx << endl;
// __SRAI __|                fpga_CDMA_XFER (fpga_ptr_vf0, AXI_MM_DDR4, phys_addr_upper, test_data_byte_count);
// __SRAI __|                unsigned int val_error = 0;
// __SRAI __|                for (int i = 0; i < test_data_byte_count; i++) {
// __SRAI __|                    if(kmem_buf_ptr[i] != kmem_buf_ptr[i + result_buffer_offset]) {
// __SRAI __|                        val_error++;
// __SRAI __|                    }
// __SRAI __|                    sref_dbg_data_file << hex << i << " :: " << (uint32_t)kmem_buf_ptr[i] <<  " :: " << (uint32_t)kmem_buf_ptr[i + result_buffer_offset] << endl;
// __SRAI __|                }
// __SRAI __|                sref_dbg_data_file << "************ Finished ATTEMPT 1  SREF Testing for DDR Interface " << DDR_TEST_INTERFACE << " Iteration  " << indx <<  " No. data Error = " << val_error << endl;
// __SRAI __|                if (val_error == 0) {
// __SRAI __|                    cout << "----- Kernel buffer validation sucessful -------------------------------\n";
// __SRAI __|                    cout << "Kernel buffer validation : No. of Errors = " << dec << val_error << endl;
// __SRAI __|                    cout << "------------------------------------------------------------------------\n";
// __SRAI __|                    KER_VALID_SUCESS++;
// __SRAI __|                } else {
// __SRAI __|                    cout << " !!!! ATTEMPT #2 Initiating CDMA XFER From DDR to host (SREF  DDR4 )----------- " << endl;
// __SRAI __|                    sref_dbg_data_file << "************ ATTEMPT 2  SREF Testing for DDR Interface " << DDR_TEST_INTERFACE << " Iteration  " << indx << endl;
// __SRAI __|                    fpga_CDMA_XFER (fpga_ptr_vf0, AXI_MM_DDR4, phys_addr_upper, test_data_byte_count);
// __SRAI __|                    unsigned int val_error = 0;
// __SRAI __|                    for (int i = 0; i < test_data_byte_count; i++) {
// __SRAI __|                        if(kmem_buf_ptr[i] != kmem_buf_ptr[i + result_buffer_offset]) {
// __SRAI __|                            val_error++;
// __SRAI __|                        }
// __SRAI __|                        sref_dbg_data_file << hex << i << " ::_2_:: " << (uint32_t)kmem_buf_ptr[i] <<  " :: " << (uint32_t)kmem_buf_ptr[i + result_buffer_offset] << endl;
// __SRAI __|                    }
// __SRAI __|
// __SRAI __|                sref_dbg_data_file << "************ Finished ATTEMPT 2  SREF Testing for DDR Interface " << DDR_TEST_INTERFACE << " Iteration  " << indx <<  " No. data Error = " << val_error << endl;
// __SRAI __|                    cout << "Kernel buffer validation : No. of Errors = " << dec << val_error << endl;
// __SRAI __|                }
// __SRAI __|                cout << "------------------------------------------------------------------------\n";
// __SRAI __|            }
// __SRAI __|
// __SRAI __|            sref_dbg_data_file << "*********************************************************************************************"<< endl;
// __SRAI __|
// __SRAI __|            cout << "Testing ROLE  BRAM 4K BRAM Memory \n";
// __SRAI __|            fpga_test_AXIL_LITE_4KSCRATCHPAD_BRAM_ROLE (fpga_ptr_vf0);
// __SRAI __|
// __SRAI __|            cout << "\n*****************************************************************************************\n"; 
// __SRAI __|            cout << "Iteration Count = " << (indx+1) << "  Sref scuss =  " << SREF_SUCESS << "  Sucess Rate = " << (double)((double)(SREF_SUCESS*100.0)/(double)(indx+1)) << "% "<< endl;
// __SRAI __|            cout << "Iteration Count = " << (indx+1) << "  Ker Validation scuss =  " << KER_VALID_SUCESS << "  Sucess Rate = " << (double)((double)(KER_VALID_SUCESS*100.0)/(double)(indx+1)) << "% "<< endl;
// __SRAI __|            cout << "*****************************************************************************************\n"; 
// __SRAI __|            cout << "**************************************************Srai temp test *End*...................\n"; 
// __SRAI __|    }
// __SRAI __|
// __SRAI __|} // __SRAI DBG
// __SRAI __|
// __SRAI __|//-----------------------------------------------------------------------------------
// __SRAI __|//***********************************************************************************
// __SRAI __|//  SRAI test _temp
// __SRAI __|//-----------------------------------------------------------------------------------


    sref_dbg_data_file.close();
    fpga_clean(fpga_ptr_vf0);
    fpga_clean(fpga_ptr_vf1);
    cout << "*************     Test finished ****************************************************************************\n"; 
    return 0;
}


