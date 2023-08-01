$PBExportHeader$w_abm_profesiones.srw
forward
global type w_abm_profesiones from w_abm_base
end type
type st_1 from statictext within w_abm_profesiones
end type
end forward

global type w_abm_profesiones from w_abm_base
integer width = 2725
integer height = 1244
boolean minbox = false
boolean maxbox = false
boolean resizable = false
st_1 st_1
end type
global w_abm_profesiones w_abm_profesiones

on w_abm_profesiones.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on w_abm_profesiones.destroy
call super::destroy
destroy(this.st_1)
end on

type dw_datos from w_abm_base`dw_datos within w_abm_profesiones
integer width = 2514
integer height = 680
string dataobject = "dw_abm_profesiones"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_profesiones
integer x = 2043
integer y = 912
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_profesiones
integer x = 1207
integer y = 912
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_profesiones
integer x = 626
integer y = 912
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_profesiones
integer x = 87
integer y = 912
end type

type st_1 from statictext within w_abm_profesiones
integer x = 69
integer y = 32
integer width = 562
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
string text = "PROFESIONES"
boolean focusrectangle = false
end type

