proc ip_ooc_runs {num_jobs} {

set standalone_ip [get_files *.xci -filter {IS_GENERATED == ""}]

set_property generate_synth_checkpoint true [get_files $standalone_ip]


#validate_bd_design -force

generate_target all [get_files  [get_files $standalone_ip]]

set run_names ""

foreach stand_run ${standalone_ip} {
set run_name_tmp [create_ip_run [get_files $stand_run]]

   if {${run_name_tmp} != ""} {

   if {[llength ${run_name_tmp}] != 1} {
   puts ${run_name_tmp}
    lappend run_names [lindex ${run_name_tmp} 0]
  } else {
	lappend run_names $run_name_tmp  
  }
}

}

#set run_names [get_runs ${bd_name}*_synth_1]
    #puts ${run_names}
    
   if {${run_names} != ""} {

set run_names_needed ""




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