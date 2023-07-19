$PBExportHeader$w_rpt_empleados_x_area.srw
forward
global type w_rpt_empleados_x_area from w_rpt_base_2
end type
end forward

global type w_rpt_empleados_x_area from w_rpt_base_2
end type
global w_rpt_empleados_x_area w_rpt_empleados_x_area

on w_rpt_empleados_x_area.create
call super::create
end on

on w_rpt_empleados_x_area.destroy
call super::destroy
end on

type cb_salir from w_rpt_base_2`cb_salir within w_rpt_empleados_x_area
end type

type cb_ultimo from w_rpt_base_2`cb_ultimo within w_rpt_empleados_x_area
end type

type cb_anterior from w_rpt_base_2`cb_anterior within w_rpt_empleados_x_area
end type

type cb_siguiente from w_rpt_base_2`cb_siguiente within w_rpt_empleados_x_area
end type

type cb_primero from w_rpt_base_2`cb_primero within w_rpt_empleados_x_area
end type

type cb_cancelar from w_rpt_base_2`cb_cancelar within w_rpt_empleados_x_area
end type

type cb_imprimir from w_rpt_base_2`cb_imprimir within w_rpt_empleados_x_area
end type

type cb_ver from w_rpt_base_2`cb_ver within w_rpt_empleados_x_area
end type

type dw_datos from w_rpt_base_2`dw_datos within w_rpt_empleados_x_area
string dataobject = "dw_rpt_empleados_x_area"
string icon = "Asterisk!"
end type

type em_final from w_rpt_base_2`em_final within w_rpt_empleados_x_area
end type

type em_inicial from w_rpt_base_2`em_inicial within w_rpt_empleados_x_area
end type

type st_2 from w_rpt_base_2`st_2 within w_rpt_empleados_x_area
end type

type st_1 from w_rpt_base_2`st_1 within w_rpt_empleados_x_area
end type

