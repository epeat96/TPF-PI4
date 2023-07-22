$PBExportHeader$w_abm_empleados_cbdt.srw
forward
global type w_abm_empleados_cbdt from window
end type
type dw_detalle_salarios from datawindow within w_abm_empleados_cbdt
end type
type cb_agregar from commandbutton within w_abm_empleados_cbdt
end type
type cb_grabar from commandbutton within w_abm_empleados_cbdt
end type
type cb_borrar from commandbutton within w_abm_empleados_cbdt
end type
type cb_salir from commandbutton within w_abm_empleados_cbdt
end type
type cb_borrar_item from commandbutton within w_abm_empleados_cbdt
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
integer width = 5408
integer height = 3800
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
dw_detalle_salarios dw_detalle_salarios
cb_agregar cb_agregar
cb_grabar cb_grabar
cb_borrar cb_borrar
cb_salir cb_salir
cb_borrar_item cb_borrar_item
dw_detalle_telefonos dw_detalle_telefonos
dw_detalle_emails dw_detalle_emails
dw_detalle_hijos dw_detalle_hijos
cb_cancelar cb_cancelar
dw_cabecera dw_cabecera
gb_1 gb_1
end type
global w_abm_empleados_cbdt w_abm_empleados_cbdt

type variables
string CurrentFocus
end variables

on w_abm_empleados_cbdt.create
this.dw_detalle_salarios=create dw_detalle_salarios
this.cb_agregar=create cb_agregar
this.cb_grabar=create cb_grabar
this.cb_borrar=create cb_borrar
this.cb_salir=create cb_salir
this.cb_borrar_item=create cb_borrar_item
this.dw_detalle_telefonos=create dw_detalle_telefonos
this.dw_detalle_emails=create dw_detalle_emails
this.dw_detalle_hijos=create dw_detalle_hijos
this.cb_cancelar=create cb_cancelar
this.dw_cabecera=create dw_cabecera
this.gb_1=create gb_1
this.Control[]={this.dw_detalle_salarios,&
this.cb_agregar,&
this.cb_grabar,&
this.cb_borrar,&
this.cb_salir,&
this.cb_borrar_item,&
this.dw_detalle_telefonos,&
this.dw_detalle_emails,&
this.dw_detalle_hijos,&
this.cb_cancelar,&
this.dw_cabecera,&
this.gb_1}
end on

on w_abm_empleados_cbdt.destroy
destroy(this.dw_detalle_salarios)
destroy(this.cb_agregar)
destroy(this.cb_grabar)
destroy(this.cb_borrar)
destroy(this.cb_salir)
destroy(this.cb_borrar_item)
destroy(this.dw_detalle_telefonos)
destroy(this.dw_detalle_emails)
destroy(this.dw_detalle_hijos)
destroy(this.cb_cancelar)
destroy(this.dw_cabecera)
destroy(this.gb_1)
end on

event open;cb_cancelar.event clicked()
end event

type dw_detalle_salarios from datawindow within w_abm_empleados_cbdt
integer x = 82
integer y = 2716
integer width = 4645
integer height = 728
integer taborder = 40
string title = "none"
string dataobject = "dw_abm_empleados_detalle_salarios"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_agregar from commandbutton within w_abm_empleados_cbdt
integer x = 4859
integer y = 516
integer width = 402
integer height = 112
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Agregar Item"
end type

event clicked;if CurrentFocus = "hijos" then
 	dw_detalle_hijos.InsertRow(0)
elseif CurrentFocus = "emails" then
        dw_detalle_emails.InsertRow(0)
elseif CurrentFocus = 'telefonos' then
        dw_detalle_telefonos.InsertRow(0)
end if
end event

type cb_grabar from commandbutton within w_abm_empleados_cbdt
integer x = 4859
integer y = 64
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Grabar"
end type

event clicked;dw_cabecera.AcceptText()
long i
if dw_cabecera.RowCount() > 0 then
	any lvalor1
	dw_cabecera.AcceptText()
	dw_detalle_hijos.AcceptText()
	dw_detalle_emails.AcceptText()
	dw_detalle_telefonos.AcceptText()
	lvalor1 = dw_cabecera.Object.Data[1,1]
	for i = 1 to dw_detalle_hijos.RowCount()
		dw_detalle_hijos.SetItem(i,1,lvalor1)
	next
	for i = 1 to dw_detalle_telefonos.RowCount()
		dw_detalle_telefonos.SetItem(i,1,lvalor1)
	next
	for i = 1 to dw_detalle_emails.RowCount()
		dw_detalle_emails.SetItem(i,1,lvalor1)
	next
	
end if

dw_cabecera.AcceptText()
dw_detalle_hijos.AcceptText()
dw_detalle_emails.AcceptText()
dw_detalle_telefonos.AcceptText()
if dw_cabecera.Update(true, false) = 1 then
	
	for i = dw_detalle_hijos.RowCount() to 1 step -1
		
		if isnull (dw_detalle_hijos.GetItemString(i,'nombre')) & 
		OR isnull(dw_detalle_hijos.GetItemString(i,'apellido')) &
		OR isnull(dw_detalle_hijos.GetItemDate(i,'fecha_nacimiento'))then
			dw_detalle_hijos.DeleteRow(1)
		end if
	next
	
	for i = dw_detalle_telefonos.RowCount() to 1 step -1
		
		if isnull (dw_detalle_telefonos.GetItemString(i,'numero')) & 
		OR isnull(dw_detalle_telefonos.GetItemNumber(i,'prioridad')) then
			dw_detalle_telefonos.DeleteRow(1)
		end if
	next
	
	for i = dw_detalle_emails.RowCount() to 1 step -1
		
		if isnull (dw_detalle_emails.GetItemString(i,'email')) & 
		OR isnull(dw_detalle_emails.GetItemNumber(i,'prioridad')) then
			dw_detalle_emails.DeleteRow(1)
		end if
	next
    if dw_detalle_hijos.Update(true, false) = 1 then
        if dw_detalle_telefonos.Update(true, false) = 1 then
            if dw_detalle_emails.Update(true, false) = 1 then
                commit using sqlca;
                cb_cancelar.event clicked()
            else
                rollback using sqlca;
                MessageBox("Error!", "La aplicación ha encontrado un error en los emails", stopsign!)
            end if
        else
            rollback using sqlca;
            MessageBox("Error!", "La aplicación ha encontrado un error en los teléfonos", stopsign!)
        end if
    else
        rollback using sqlca;
        MessageBox("Error!", "La aplicación ha encontrado un error en los hijos", stopsign!)
    end if
else
    rollback using sqlca;
    MessageBox("Error!", "La aplicación ha encontrado un error en la cabecera", stopsign!)
end if

end event

type cb_borrar from commandbutton within w_abm_empleados_cbdt
integer x = 4859
integer y = 212
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Borrar"
end type

event clicked;if MessageBox("Atencion","Esta seguro?", Question!, OkCancel!,2) = 1 then
	dw_cabecera.deleteRow(0)
	cb_grabar.event clicked()
end if
end event

type cb_salir from commandbutton within w_abm_empleados_cbdt
integer x = 4859
integer y = 1012
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Salir"
end type

event clicked;close(parent)
end event

type cb_borrar_item from commandbutton within w_abm_empleados_cbdt
integer x = 4859
integer y = 364
integer width = 402
integer height = 112
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Borrar Item"
end type

event clicked;if CurrentFocus = "hijos" then
    dw_detalle_hijos.AcceptText()
    dw_detalle_hijos.DeleteRow(dw_detalle_hijos.GetRow())
    if dw_detalle_hijos.RowCount() = 0 then
        dw_detalle_hijos.InsertRow(0)
    end if
elseif CurrentFocus = "emails" then
    dw_detalle_emails.AcceptText()
    dw_detalle_emails.DeleteRow(dw_detalle_emails.GetRow())
    if dw_detalle_emails.RowCount() = 0 then
        dw_detalle_emails.InsertRow(0)
    end if
elseif CurrentFocus = 'telefonos' then
    dw_detalle_telefonos.AcceptText()
    dw_detalle_telefonos.DeleteRow(dw_detalle_telefonos.GetRow())
    if dw_detalle_telefonos.RowCount() = 0 then
        dw_detalle_telefonos.InsertRow(0)
    end if
end if
end event

type dw_detalle_telefonos from datawindow within w_abm_empleados_cbdt
integer x = 82
integer y = 1904
integer width = 2194
integer height = 728
integer taborder = 30
string title = "none"
string dataobject = "dw_abm_empleados_detalle_telefonos"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
end event

event getfocus;CurrentFocus = "telefonos"
end event

type dw_detalle_emails from datawindow within w_abm_empleados_cbdt
integer x = 2313
integer y = 1904
integer width = 2437
integer height = 728
integer taborder = 50
string title = "Emails"
string dataobject = "dw_abm_empleados_detalle_emails"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
end event

event getfocus;CurrentFocus = "emails"
end event

type dw_detalle_hijos from datawindow within w_abm_empleados_cbdt
event nuevo_item pbm_keydown
integer x = 2322
integer y = 896
integer width = 2437
integer height = 960
integer taborder = 40
string title = "Hijos"
string dataobject = "dw_abm_empleados_detalle_hijos"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event nuevo_item;if key = keyenter! then
	this.insertRow(0)
end if
end event

event constructor;this.settransobject(sqlca)
end event

event getfocus;CurrentFocus = "hijos"
end event

type cb_cancelar from commandbutton within w_abm_empleados_cbdt
integer x = 4859
integer y = 672
integer width = 402
integer height = 112
integer taborder = 60
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
dw_detalle_telefonos.Reset()
dw_cabecera.InsertRow(0)
dw_cabecera.SetFocus()
end event

type dw_cabecera from datawindow within w_abm_empleados_cbdt
integer x = 32
integer y = 24
integer width = 4763
integer height = 3436
integer taborder = 10
string title = "none"
string dataobject = "dw_abm_empleados_cabecera"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
end event

event itemchanged;Long 	lcant_filas = 0
any lvalor1
dw_cabecera.AcceptText()

if this.GetColumn() = 1 then
	lvalor1 = String(dw_cabecera.Object.Data[1,1])
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
			dw_cabecera.SetItem(1,"legajo",lvalor1)
	end if
	dw_cabecera.SetFocus()
end if

end event

event getfocus;CurrentFocus = ""
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

