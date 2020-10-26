
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab3 -dir "C:/hlocal/Lab3/planAhead_run_1" -part xc3s1000ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/hlocal/Lab3/Mult_with_Adders.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/hlocal/Lab3} }
set_property target_constrs_file "pins.ucf" [current_fileset -constrset]
add_files [list {pins.ucf}] -fileset [get_property constrset [current_run]]
link_design
