$PBExportHeader$w_rpt_control_conceptos.srw
forward
global type w_rpt_control_conceptos from w_rpt_base
end type
end forward

global type w_rpt_control_conceptos from w_rpt_base
integer height = 1916
windowstate windowstate = normal!
end type
global w_rpt_control_conceptos w_rpt_control_conceptos

on w_rpt_control_conceptos.create
call super::create
end on

on w_rpt_control_conceptos.destroy
call super::destroy
end on

type cb_ultimo from w_rpt_base`cb_ultimo within w_rpt_control_conceptos
integer x = 1490
integer y = 1488
end type

type cb_anterior from w_rpt_base`cb_anterior within w_rpt_control_conceptos
integer x = 1033
integer y = 1488
end type

type cb_siguiente from w_rpt_base`cb_siguiente within w_rpt_control_conceptos
integer x = 576
integer y = 1488
end type

type cb_primero from w_rpt_base`cb_primero within w_rpt_control_conceptos
integer x = 123
integer y = 1488
end type

type cb_cancelar from w_rpt_base`cb_cancelar within w_rpt_control_conceptos
integer x = 1033
integer y = 1316
end type

type cb_imprimir from w_rpt_base`cb_imprimir within w_rpt_control_conceptos
integer x = 576
integer y = 1316
end type

type cb_ver from w_rpt_base`cb_ver within w_rpt_control_conceptos
integer x = 123
integer y = 1316
end type

type em_final from w_rpt_base`em_final within w_rpt_control_conceptos
string mask = "####"
end type

type em_inicial from w_rpt_base`em_inicial within w_rpt_control_conceptos
string mask = "#"
end type

type st_2 from w_rpt_base`st_2 within w_rpt_control_conceptos
end type

type st_1 from w_rpt_base`st_1 within w_rpt_control_conceptos
end type

type dw_datos from w_rpt_base`dw_datos within w_rpt_control_conceptos
integer height = 844
string dataobject = "dw_rpt_control_conceptos"
end type

