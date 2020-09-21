/* Sanjay Rai - Routine to access PCIe via  dev.mem mmap  */
#ifndef FPGA_MMIO_UTILS_H_
#define  FPGA_MMIO_UTILS_H_

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <string.h>
#include <errno.h>
#include <inttypes.h>
#include <iostream>
#include <iomanip>

using namespace std;

#define FAUT_CONDITION do { fprintf(stderr, "Error at line %d, file %s (%d) [%s]\n", __LINE__, __FILE__, errno, strerror(errno)); exit(1); } while(0)

//#define PAGE_SIZE (4*1024UL*1024UL)

class fpga_dev_mem {
	private :
            void *virt_page_base;
            uint32_t PAGE_SIZE_VF;
            int fpga_fp_dev;

	public :
		fpga_dev_mem (void) {}

		int fpga_dev_mem_init(uint32_t VF_PAGE_SZ, uint32_t PCIe_BASE_ADDR) {
                        if((fpga_fp_dev = open("/dev/mem", O_RDWR | O_SYNC)) == -1) FAUT_CONDITION;
                        fflush(stdout);
                        PAGE_SIZE_VF = VF_PAGE_SZ;
                        virt_page_base = mmap(NULL, (uint32_t)VF_PAGE_SZ, PROT_READ | PROT_WRITE, MAP_SHARED, fpga_fp_dev, (PCIe_BASE_ADDR & ~(VF_PAGE_SZ-1)));
                        //cout << " Virtual Base Address = " << hex << virt_page_base << endl;
                        if(virt_page_base == (void *) -1) FAUT_CONDITION;

			return 0;
		}

                int fpga_poke (uint32_t register_offset, uint32_t val) {
                    volatile uint32_t *tmp_addr;
                    tmp_addr = (volatile uint32_t *)((volatile uint8_t *)virt_page_base + register_offset);

                    *((volatile uint32_t *)tmp_addr) = val;
                    return 0;
                }

                uint32_t fpga_peek (uint32_t register_offset) {
                    volatile uint32_t *tmp_addr;
                    volatile uint32_t ret_val;
                    tmp_addr = (volatile uint32_t *)((volatile uint8_t *)virt_page_base + register_offset);
                    ret_val = *((volatile uint32_t *)tmp_addr);
                    return(ret_val);
                }

		int fpga_dev_mem_clean() {
                        if(munmap(virt_page_base, PAGE_SIZE_VF) == -1) FAUT_CONDITION;
                        close(fpga_fp_dev);
			return 0;
		}
}; 

#endif
