# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DOWN_BOUND" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LEFT_BOUND" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RIGHT_BOUND" -parent ${Page_0}
  ipgui::add_param $IPINST -name "UP_BOUND" -parent ${Page_0}
  ipgui::add_param $IPINST -name "down_pos" -parent ${Page_0}
  ipgui::add_param $IPINST -name "left_pos" -parent ${Page_0}
  ipgui::add_param $IPINST -name "right_pos" -parent ${Page_0}
  ipgui::add_param $IPINST -name "up_pos" -parent ${Page_0}


}

proc update_PARAM_VALUE.DOWN_BOUND { PARAM_VALUE.DOWN_BOUND } {
	# Procedure called to update DOWN_BOUND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DOWN_BOUND { PARAM_VALUE.DOWN_BOUND } {
	# Procedure called to validate DOWN_BOUND
	return true
}

proc update_PARAM_VALUE.LEFT_BOUND { PARAM_VALUE.LEFT_BOUND } {
	# Procedure called to update LEFT_BOUND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LEFT_BOUND { PARAM_VALUE.LEFT_BOUND } {
	# Procedure called to validate LEFT_BOUND
	return true
}

proc update_PARAM_VALUE.RIGHT_BOUND { PARAM_VALUE.RIGHT_BOUND } {
	# Procedure called to update RIGHT_BOUND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RIGHT_BOUND { PARAM_VALUE.RIGHT_BOUND } {
	# Procedure called to validate RIGHT_BOUND
	return true
}

proc update_PARAM_VALUE.UP_BOUND { PARAM_VALUE.UP_BOUND } {
	# Procedure called to update UP_BOUND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UP_BOUND { PARAM_VALUE.UP_BOUND } {
	# Procedure called to validate UP_BOUND
	return true
}

proc update_PARAM_VALUE.down_pos { PARAM_VALUE.down_pos } {
	# Procedure called to update down_pos when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.down_pos { PARAM_VALUE.down_pos } {
	# Procedure called to validate down_pos
	return true
}

proc update_PARAM_VALUE.left_pos { PARAM_VALUE.left_pos } {
	# Procedure called to update left_pos when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.left_pos { PARAM_VALUE.left_pos } {
	# Procedure called to validate left_pos
	return true
}

proc update_PARAM_VALUE.right_pos { PARAM_VALUE.right_pos } {
	# Procedure called to update right_pos when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.right_pos { PARAM_VALUE.right_pos } {
	# Procedure called to validate right_pos
	return true
}

proc update_PARAM_VALUE.up_pos { PARAM_VALUE.up_pos } {
	# Procedure called to update up_pos when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.up_pos { PARAM_VALUE.up_pos } {
	# Procedure called to validate up_pos
	return true
}


proc update_MODELPARAM_VALUE.UP_BOUND { MODELPARAM_VALUE.UP_BOUND PARAM_VALUE.UP_BOUND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UP_BOUND}] ${MODELPARAM_VALUE.UP_BOUND}
}

proc update_MODELPARAM_VALUE.DOWN_BOUND { MODELPARAM_VALUE.DOWN_BOUND PARAM_VALUE.DOWN_BOUND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DOWN_BOUND}] ${MODELPARAM_VALUE.DOWN_BOUND}
}

proc update_MODELPARAM_VALUE.LEFT_BOUND { MODELPARAM_VALUE.LEFT_BOUND PARAM_VALUE.LEFT_BOUND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LEFT_BOUND}] ${MODELPARAM_VALUE.LEFT_BOUND}
}

proc update_MODELPARAM_VALUE.RIGHT_BOUND { MODELPARAM_VALUE.RIGHT_BOUND PARAM_VALUE.RIGHT_BOUND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RIGHT_BOUND}] ${MODELPARAM_VALUE.RIGHT_BOUND}
}

proc update_MODELPARAM_VALUE.up_pos { MODELPARAM_VALUE.up_pos PARAM_VALUE.up_pos } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.up_pos}] ${MODELPARAM_VALUE.up_pos}
}

proc update_MODELPARAM_VALUE.down_pos { MODELPARAM_VALUE.down_pos PARAM_VALUE.down_pos } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.down_pos}] ${MODELPARAM_VALUE.down_pos}
}

proc update_MODELPARAM_VALUE.left_pos { MODELPARAM_VALUE.left_pos PARAM_VALUE.left_pos } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.left_pos}] ${MODELPARAM_VALUE.left_pos}
}

proc update_MODELPARAM_VALUE.right_pos { MODELPARAM_VALUE.right_pos PARAM_VALUE.right_pos } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.right_pos}] ${MODELPARAM_VALUE.right_pos}
}

