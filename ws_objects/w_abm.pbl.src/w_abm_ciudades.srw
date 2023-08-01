$PBExportHeader$w_abm_ciudades.srw
forward
global type w_abm_ciudades from w_abm_base
end type
type st_1 from statictext within w_abm_ciudades
end type
end forward

global type w_abm_ciudades from w_abm_base
integer width = 2843
integer height = 1068
st_1 st_1
end type
global w_abm_ciudades w_abm_ciudades

on w_abm_ciudades.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on w_abm_ciudades.destroy
call super::destroy
destroy(this.st_1)
end on

type dw_datos from w_abm_base`dw_datos within w_abm_ciudades
integer width = 2619
integer height = 484
string dataobject = "dw_abm_ciudades"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_ciudades
integer x = 2021
integer y = 724
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_ciudades
integer x = 1184
integer y = 724
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_ciudades
integer x = 603
integer y = 724
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_ciudades
integer x = 64
integer y = 724
end type

type st_1 from statictext within w_abm_ciudades
integer x = 69
integer y = 32
integer width = 850
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
string text = "CIUDAD DEL EMPLEADO"
boolean focusrectangle = false
end type

