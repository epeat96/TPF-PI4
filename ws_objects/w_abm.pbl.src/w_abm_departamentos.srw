$PBExportHeader$w_abm_departamentos.srw
forward
global type w_abm_departamentos from w_abm_base
end type
type st_1 from statictext within w_abm_departamentos
end type
end forward

global type w_abm_departamentos from w_abm_base
integer width = 2464
integer height = 900
st_1 st_1
end type
global w_abm_departamentos w_abm_departamentos

on w_abm_departamentos.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on w_abm_departamentos.destroy
call super::destroy
destroy(this.st_1)
end on

type dw_datos from w_abm_base`dw_datos within w_abm_departamentos
integer x = 18
integer y = 128
integer width = 2359
integer height = 424
string dataobject = "dw_abm_departamentos"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_departamentos
integer x = 1989
integer y = 632
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_departamentos
integer x = 1152
integer y = 632
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_departamentos
integer x = 571
integer y = 632
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_departamentos
integer x = 32
integer y = 632
end type

type st_1 from statictext within w_abm_departamentos
integer x = 41
integer y = 24
integer width = 677
integer height = 64
boolean bringtotop = true
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "DEPARTAMENTOS"
boolean focusrectangle = false
end type

