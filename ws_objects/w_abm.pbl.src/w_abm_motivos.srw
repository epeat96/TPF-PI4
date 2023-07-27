$PBExportHeader$w_abm_motivos.srw
forward
global type w_abm_motivos from w_abm_base
end type
type st_1 from statictext within w_abm_motivos
end type
end forward

global type w_abm_motivos from w_abm_base
integer width = 2761
integer height = 920
boolean minbox = false
boolean maxbox = false
boolean resizable = false
st_1 st_1
end type
global w_abm_motivos w_abm_motivos

on w_abm_motivos.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on w_abm_motivos.destroy
call super::destroy
destroy(this.st_1)
end on

type dw_datos from w_abm_base`dw_datos within w_abm_motivos
integer width = 2519
integer height = 372
string dataobject = "dw_amb_motivos"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_motivos
integer y = 584
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_motivos
integer y = 584
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_motivos
integer y = 584
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_motivos
integer y = 584
end type

type st_1 from statictext within w_abm_motivos
integer x = 73
integer y = 28
integer width = 901
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
string text = "MOTIVOS DE PAGO"
boolean focusrectangle = false
end type

