$PBExportHeader$w_rpt_control_conceptos.srw
forward
global type w_rpt_control_conceptos from w_rpt_base
end type
type st_3 from statictext within w_rpt_control_conceptos
end type
end forward

global type w_rpt_control_conceptos from w_rpt_base
integer height = 1916
windowstate windowstate = normal!
st_3 st_3
end type
global w_rpt_control_conceptos w_rpt_control_conceptos

on w_rpt_control_conceptos.create
int iCurrent
call super::create
this.st_3=create st_3
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_3
end on

on w_rpt_control_conceptos.destroy
call super::destroy
destroy(this.st_3)
end on

type cb_ultimo from w_rpt_base`cb_ultimo within w_rpt_control_conceptos
integer x = 1490
integer y = 1488
integer taborder = 90
end type

type cb_anterior from w_rpt_base`cb_anterior within w_rpt_control_conceptos
integer x = 1033
integer y = 1488
integer taborder = 80
end type

type cb_siguiente from w_rpt_base`cb_siguiente within w_rpt_control_conceptos
integer x = 576
integer y = 1488
integer taborder = 70
end type

type cb_primero from w_rpt_base`cb_primero within w_rpt_control_conceptos
integer x = 123
integer y = 1488
integer taborder = 60
end type

type cb_cancelar from w_rpt_base`cb_cancelar within w_rpt_control_conceptos
integer x = 1033
integer y = 1316
integer taborder = 50
end type

type cb_imprimir from w_rpt_base`cb_imprimir within w_rpt_control_conceptos
integer x = 576
integer y = 1316
integer taborder = 40
end type

type cb_ver from w_rpt_base`cb_ver within w_rpt_control_conceptos
integer x = 123
integer y = 1316
integer taborder = 30
end type

type em_final from w_rpt_base`em_final within w_rpt_control_conceptos
integer x = 494
integer y = 264
integer height = 104
integer taborder = 20
string mask = "####"
end type

type em_inicial from w_rpt_base`em_inicial within w_rpt_control_conceptos
integer x = 494
integer y = 132
integer height = 104
string mask = "#"
end type

type st_2 from w_rpt_base`st_2 within w_rpt_control_conceptos
integer x = 288
integer y = 288
end type

type st_1 from w_rpt_base`st_1 within w_rpt_control_conceptos
integer x = 265
integer y = 148
end type

type dw_datos from w_rpt_base`dw_datos within w_rpt_control_conceptos
integer height = 844
integer taborder = 0
string dataobject = "dw_rpt_control_conceptos"
end type

type st_3 from statictext within w_rpt_control_conceptos
integer x = 41
integer y = 8
integer width = 1106
integer height = 60
boolean bringtotop = true
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Listado de Control de Conceptos"
boolean focusrectangle = false
end type

