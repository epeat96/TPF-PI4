$PBExportHeader$w_abm_empleados_cbdt.srw
forward
global type w_abm_empleados_cbdt from window
end type
type cb_cancelar from commandbutton within w_abm_empleados_cbdt
end type
type dw_cabecera from datawindow within w_abm_empleados_cbdt
end type
end forward

global type w_abm_empleados_cbdt from window
integer width = 4608
integer height = 2472
boolean titlebar = true
string title = "Empleados"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_cancelar cb_cancelar
dw_cabecera dw_cabecera
end type
global w_abm_empleados_cbdt w_abm_empleados_cbdt

on w_abm_empleados_cbdt.create
this.cb_cancelar=create cb_cancelar
this.dw_cabecera=create dw_cabecera
this.Control[]={this.cb_cancelar,&
this.dw_cabecera}
end on

on w_abm_empleados_cbdt.destroy
destroy(this.cb_cancelar)
destroy(this.dw_cabecera)
end on

event open;cb_cancelar.event clicked()
end event

type cb_cancelar from commandbutton within w_abm_empleados_cbdt
integer x = 992
integer y = 2184
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancelar"
end type

event clicked;dw_cabecera.Reset()
dw_cabecera.InsertRow(0)
dw_cabecera.SetFocus()
end event

type dw_cabecera from datawindow within w_abm_empleados_cbdt
integer x = 32
integer y = 24
integer width = 4507
integer height = 1868
integer taborder = 10
string title = "none"
string dataobject = "dw_abm_empleados_cabecera"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

