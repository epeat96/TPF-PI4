$PBExportHeader$w_abm_empleados_cbdt.srw
forward
global type w_abm_empleados_cbdt from window
end type
type dw_detalle_telefonos from datawindow within w_abm_empleados_cbdt
end type
type dw_detalle_emails from datawindow within w_abm_empleados_cbdt
end type
type dw_detalle_hijos from datawindow within w_abm_empleados_cbdt
end type
type cb_cancelar from commandbutton within w_abm_empleados_cbdt
end type
type dw_cabecera from datawindow within w_abm_empleados_cbdt
end type
type gb_1 from groupbox within w_abm_empleados_cbdt
end type
end forward

global type w_abm_empleados_cbdt from window
integer width = 5865
integer height = 3252
boolean titlebar = true
string title = "Empleados"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_detalle_telefonos dw_detalle_telefonos
dw_detalle_emails dw_detalle_emails
dw_detalle_hijos dw_detalle_hijos
cb_cancelar cb_cancelar
dw_cabecera dw_cabecera
gb_1 gb_1
end type
global w_abm_empleados_cbdt w_abm_empleados_cbdt

on w_abm_empleados_cbdt.create
this.dw_detalle_telefonos=create dw_detalle_telefonos
this.dw_detalle_emails=create dw_detalle_emails
this.dw_detalle_hijos=create dw_detalle_hijos
this.cb_cancelar=create cb_cancelar
this.dw_cabecera=create dw_cabecera
this.gb_1=create gb_1
this.Control[]={this.dw_detalle_telefonos,&
this.dw_detalle_emails,&
this.dw_detalle_hijos,&
this.cb_cancelar,&
this.dw_cabecera,&
this.gb_1}
end on

on w_abm_empleados_cbdt.destroy
destroy(this.dw_detalle_telefonos)
destroy(this.dw_detalle_emails)
destroy(this.dw_detalle_hijos)
destroy(this.cb_cancelar)
destroy(this.dw_cabecera)
destroy(this.gb_1)
end on

event open;cb_cancelar.event clicked()
end event

type dw_detalle_telefonos from datawindow within w_abm_empleados_cbdt
integer x = 82
integer y = 1904
integer width = 2194
integer height = 728
integer taborder = 30
string title = "none"
string dataobject = "dw_abm_empleados_detalle_telefonos"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
end event

type dw_detalle_emails from datawindow within w_abm_empleados_cbdt
integer x = 2313
integer y = 1904
integer width = 2437
integer height = 728
integer taborder = 20
string title = "none"
string dataobject = "dw_abm_empleados_detalle_emails"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
end event

type dw_detalle_hijos from datawindow within w_abm_empleados_cbdt
integer x = 2322
integer y = 896
integer width = 2437
integer height = 960
integer taborder = 20
string title = "Hijos"
string dataobject = "dw_abm_empleados_detalle_hijos"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
end event

type cb_cancelar from commandbutton within w_abm_empleados_cbdt
integer x = 4946
integer y = 292
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
dw_detalle_hijos.Reset()
dw_detalle_emails.Reset()
dw_cabecera.InsertRow(0)
dw_detalle_hijos.InsertRow(0)
dw_detalle_emails.InsertRow(0)
dw_cabecera.SetFocus()
end event

type dw_cabecera from datawindow within w_abm_empleados_cbdt
integer x = 32
integer y = 24
integer width = 4763
integer height = 2644
integer taborder = 10
string title = "none"
string dataobject = "dw_abm_empleados_cabecera"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
end event

event itemchanged;Long 	lcant_filas
any lvalor1
dw_cabecera.AcceptText()

if this.GetColumn() = 1 then
	lvalor1 = Long(dw_cabecera.Object.Data[1,1])
	lcant_filas = dw_cabecera.retrieve(lvalor1)
	
	if lcant_filas > 0 then
		lcant_filas = dw_detalle_hijos.retrieve(lvalor1)
		if lcant_filas < 0 then
			MessageBox("Atencion","Se ha producido un error durante la lectura de los datos del detalle [durante la lectura de los hijos]", StopSign!)
		elseif lcant_filas = 0 then
			MessageBox("Atencion","No hay datos para recuperar en el detalle de hijos", Information!)
		end if

		lcant_filas = dw_detalle_emails.retrieve(lvalor1)
		if lcant_filas < 0 then
			MessageBox("Atencion","Se ha producido un error durante la lectura de los datos del detalle [durante la lectura de los emails]", StopSign!)
		elseif lcant_filas = 0 then
			MessageBox("Atencion","No hay datos para recuperar en el detalle de emails", Information!)
		end if

		lcant_filas = dw_detalle_telefonos.retrieve(lvalor1)
		if lcant_filas < 0 then
			MessageBox("Atencion","Se ha producido un error durante la lectura de los datos del detalle [durante la lectura de los telefonos]", StopSign!)
		elseif lcant_filas = 0 then
			MessageBox("Atencion","No hay datos para recuperar en el detalle de telefonos", Information!)
		end if 

		commit using SQLCA;

	elseif lcant_filas < 0 then 
		rollback using SQLCA;
		MessageBox("Atencion","Se ha producido un error durante la lectura de los datos de la cabecera",StopSign!)
	elseif lcant_filas = 0 then
			cb_cancelar.event clicked()
			dw_cabecera.SetItem(1,1,lvalor1)
	end if

	dw_cabecera.SetFocus()
end if
this.settransobject(sqlca)

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

