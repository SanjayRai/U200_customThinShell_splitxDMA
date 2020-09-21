proc bd_ooc_runs {bd_path bd_name num_jobs} {
set_property synth_checkpoint_mode Hierarchical [get_files  ${bd_path}]
#validate_bd_design -force

generate_target all [get_files  [get_files  ${bd_path}]]
create_ip_run [get_files -of_objects [get_fileset sources_1] ${bd_path}]

set run_names [get_runs ${bd_name}*_synth_1]

   if {${run_names} != ""} {

set run_names_needed ""

#Temp only for DDR options with shell/dynamic build
set ddr_runs [get_runs *ddr*_synth_1]

   if {${ddr_runs} != ""} {

foreach ddr ${ddr_runs} {
set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-verilog_define XSDB_SLV_DIS} -objects [get_runs $ddr]

}
}


foreach run ${run_names} {
set run_property [get_property PROGRESS [get_runs $run]]


   if {${run_property} != "100%"} {
  lappend run_names_needed $run
  }

}


puts ${run_names_needed}



  if {${run_names_needed} != ""} {
      set name_runs ${run_names_needed}
      set name_runs_get [get_runs ${name_runs}]
      
      launch_runs -jobs ${num_jobs} $name_runs_get
      
	foreach wait_run ${run_names_needed} {
        
        wait_on_run $wait_run
	
	}
     
      #launch_runs -jobs 4 ${run_names_needed}
      #wait_on_run [get_runs ${run_names_needed}]      
  }
 
 }
  }