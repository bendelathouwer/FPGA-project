# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DIVISOR1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DIVISOR2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DIVISOR3" -parent ${Page_0}


}

proc update_PARAM_VALUE.DIVISOR1 { PARAM_VALUE.DIVISOR1 } {
	# Procedure called to update DIVISOR1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIVISOR1 { PARAM_VALUE.DIVISOR1 } {
	# Procedure called to validate DIVISOR1
	return true
}

proc update_PARAM_VALUE.DIVISOR2 { PARAM_VALUE.DIVISOR2 } {
	# Procedure called to update DIVISOR2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIVISOR2 { PARAM_VALUE.DIVISOR2 } {
	# Procedure called to validate DIVISOR2
	return true
}

proc update_PARAM_VALUE.DIVISOR3 { PARAM_VALUE.DIVISOR3 } {
	# Procedure called to update DIVISOR3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIVISOR3 { PARAM_VALUE.DIVISOR3 } {
	# Procedure called to validate DIVISOR3
	return true
}


proc update_MODELPARAM_VALUE.DIVISOR1 { MODELPARAM_VALUE.DIVISOR1 PARAM_VALUE.DIVISOR1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIVISOR1}] ${MODELPARAM_VALUE.DIVISOR1}
}

proc update_MODELPARAM_VALUE.DIVISOR2 { MODELPARAM_VALUE.DIVISOR2 PARAM_VALUE.DIVISOR2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIVISOR2}] ${MODELPARAM_VALUE.DIVISOR2}
}

proc update_MODELPARAM_VALUE.DIVISOR3 { MODELPARAM_VALUE.DIVISOR3 PARAM_VALUE.DIVISOR3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIVISOR3}] ${MODELPARAM_VALUE.DIVISOR3}
}

