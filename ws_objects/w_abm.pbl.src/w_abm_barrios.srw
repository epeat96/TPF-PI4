$PBExportHeader$w_abm_barrios.srw
forward
global type w_abm_barrios from w_abm_base
end type
type st_1 from statictext within w_abm_barrios
end type
end forward

global type w_abm_barrios from w_abm_base
integer width = 2770
integer height = 980
boolean minbox = false
boolean maxbox = false
boolean resizable = false
st_1 st_1
end type
global w_abm_barrios w_abm_barrios

on w_abm_barrios.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on w_abm_barrios.destroy
call super::destroy
destroy(this.st_1)
end on

type dw_datos from w_abm_base`dw_datos within w_abm_barrios
integer width = 2533
integer height = 444
string dataobject = "dw_abm_barrios"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_barrios
integer x = 2030
integer y = 664
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_barrios
integer x = 1193
integer y = 664
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_barrios
integer x = 613
integer y = 664
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_barrios
integer x = 73
integer y = 664
end type

type st_1 from statictext within w_abm_barrios
integer x = 69
integer y = 24
integer width = 837
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
string text = "BARRIO DEL EMPLEADO"
boolean focusrectangle = false
end type

