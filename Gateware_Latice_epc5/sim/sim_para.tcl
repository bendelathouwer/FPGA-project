lappend auto_path "C:/lscc/diamond/3.14/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {ECP5U}
set ::bali::simulation::Para(PROJECT) {sim}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/bende/Documents/GitHub/FPGA-project/Gateware_Latice_epc5}
set ::bali::simulation::Para(FILELIST) {"C:/Users/bende/Documents/GitHub/FPGA-project/Gateware_Latice_epc5/hub75E_Driver.vhd" "C:/Users/bende/Documents/GitHub/FPGA-project/Gateware_Latice_epc5/dithering.vhd" "C:/Users/bende/Documents/GitHub/FPGA-project/Gateware_Latice_epc5/clk_div.vhdl" "C:/Users/bende/Documents/GitHub/FPGA-project/Gateware_Latice_epc5/top.vhdl" "C:/Users/bende/Documents/GitHub/FPGA-project/Gateware_Latice_epc5/clockdivider_TB.vhdl" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(LANGSTDLIST) {"" "" "" "" "" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_ecp5u}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {clockdivider_TB}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {C:/lscc/diamond/3.14}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(SIMULATION_RESOLUTION)  {10ms}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
set ::bali::simulation::Para(OPTIMIZEARGS)  {+acc}
set ::bali::simulation::Para(OPTIMIZATION_DEBUG)  {1}
::bali::simulation::QuestaSim_Run
