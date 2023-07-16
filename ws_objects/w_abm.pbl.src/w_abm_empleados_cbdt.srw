$PBExportHeader$w_abm_empleados_cbdt.srw
forward
global type w_abm_empleados_cbdt from window
end type
type dw_detalles_hijos from datawindow within w_abm_empleados_cbdt
end type
type cb_cancelar from commandbutton within w_abm_empleados_cbdt
end type
type dw_cabecera from datawindow within w_abm_empleados_cbdt
end type
type gb_1 from groupbox within w_abm_empleados_cbdt
end type
end forward

global type w_abm_empleados_cbdt from window
integer width = 4859
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
dw_detalles_hijos dw_detalles_hijos
cb_cancelar cb_cancelar
dw_cabecera dw_cabecera
gb_1 gb_1
end type
global w_abm_empleados_cbdt w_abm_empleados_cbdt

on w_abm_empleados_cbdt.create
this.dw_detalles_hijos=create dw_detalles_hijos
this.cb_cancelar=create cb_cancelar
this.dw_cabecera=create dw_cabecera
this.gb_1=create gb_1
this.Control[]={this.dw_detalles_hijos,&
this.cb_cancelar,&
this.dw_cabecera,&
this.gb_1}
end on

on w_abm_empleados_cbdt.destroy
destroy(this.dw_detalles_hijos)
destroy(this.cb_cancelar)
destroy(this.dw_cabecera)
destroy(this.gb_1)
end on

event open;cb_cancelar.event clicked()
end event

type dw_detalles_hijos from datawindow within w_abm_empleados_cbdt
integer x = 2322
integer y = 896
integer width = 2437
integer height = 960
integer taborder = 20
string title = "Hijos"
string dataobject = "dw_abm_empleados_detalle_hijos"
boolean livescroll = true
borderstyle borderstyle = StyleLowered!
end type

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
dw_detalles_hijos.Reset()
dw_cabecera.InsertRow(0)
dw_detalles_hijos.InsertRow(0)
dw_cabecera.SetFocus()
end event

type dw_cabecera from datawindow within w_abm_empleados_cbdt
integer x = 32
integer y = 24
integer width = 4759
integer height = 1868
integer taborder = 10
string title = "none"
string dataobject = "dw_abm_empleados_cabecera"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;this.settransobject(sqlca)
end event

type gb_1 from groupbox within w_abm_empleados_cbdt
integer x = 2258
integer y = 1072
integer width = 480
integer height = 180
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
borderstyle borderstyle = stylebox!
end type

