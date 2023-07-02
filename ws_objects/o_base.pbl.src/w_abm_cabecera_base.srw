$PBExportHeader$w_abm_cabecera_base.srw
forward
global type w_abm_cabecera_base from window
end type
type cb_salir from commandbutton within w_abm_cabecera_base
end type
type cb_cancelar from commandbutton within w_abm_cabecera_base
end type
type cb_borrar_item from commandbutton within w_abm_cabecera_base
end type
type cb_borrar from commandbutton within w_abm_cabecera_base
end type
type cb_grabar from commandbutton within w_abm_cabecera_base
end type
type dw_detalles from datawindow within w_abm_cabecera_base
end type
type dw_datos from datawindow within w_abm_cabecera_base
end type
end forward

global type w_abm_cabecera_base from window
integer width = 3090
integer height = 1344
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event asigna_clave ( )
cb_salir cb_salir
cb_cancelar cb_cancelar
cb_borrar_item cb_borrar_item
cb_borrar cb_borrar
cb_grabar cb_grabar
dw_detalles dw_detalles
dw_datos dw_datos
end type
global w_abm_cabecera_base w_abm_cabecera_base

event asigna_clave();long i
any lvalor1

dw_datos.AcceptText()
dw_detalles.AcceptText()
lvalor1 = dw_datos.Object.Data[1,1]

for i = 1 to dw_detalles.RowCount()
	dw_detalles.SetItem(i,1,lvalor1)
next
end event

on w_abm_cabecera_base.create
this.cb_salir=create cb_salir
this.cb_cancelar=create cb_cancelar
this.cb_borrar_item=create cb_borrar_item
this.cb_borrar=create cb_borrar
this.cb_grabar=create cb_grabar
this.dw_detalles=create dw_detalles
this.dw_datos=create dw_datos
this.Control[]={this.cb_salir,&
this.cb_cancelar,&
this.cb_borrar_item,&
this.cb_borrar,&
this.cb_grabar,&
this.dw_detalles,&
this.dw_datos}
end on

on w_abm_cabecera_base.destroy
destroy(this.cb_salir)
destroy(this.cb_cancelar)
destroy(this.cb_borrar_item)
destroy(this.cb_borrar)
destroy(this.cb_grabar)
destroy(this.dw_detalles)
destroy(this.dw_datos)
end on

event open;// evento open
title = "Nombre del programa: " + this.classname()
cb_cancelar.event clicked()
end event

type cb_salir from commandbutton within w_abm_cabecera_base
integer x = 2606
integer y = 1072
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

type cb_cancelar from commandbutton within w_abm_cabecera_base
integer x = 1454
integer y = 1072
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancelar"
end type

event clicked;dw_datos.Reset()
dw_detalles.Reset()
dw_datos.InsertRow(0)
dw_detalles.InsertRow(0)
dw_datos.SetFocus()
end event

type cb_borrar_item from commandbutton within w_abm_cabecera_base
integer x = 974
integer y = 1072
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Borrar Item"
end type

event clicked;dw_detalles.AcceptText()
dw_detalles.deleterow(dw_detalles.GetRow())
if dw_detalles.RowCount() = 0 then
	dw_detalles.insertRow(0)
end if

end event

type cb_borrar from commandbutton within w_abm_cabecera_base
integer x = 503
integer y = 1072
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Borrar"
end type

event clicked;if MessageBox("Atencion","Esta seguro?", Question!, OkCancel!,2) = 1 then
	dw_datos.deleteRow(0)
	cb_grabar.event clicked()
end if
end event

type cb_grabar from commandbutton within w_abm_cabecera_base
integer x = 37
integer y = 1072
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Grabar"
end type

event clicked;dw_datos.acceptText()
if dw_datos.rowCount() > 0 then 
event asigna_clave()
end if

if dw_datos.update(true,false) = 1 then
	
	if dw_detalles.update(true,false) = 1 then
		
		commit using sqlca;
		cb_cancelar.event clicked()
		
	else
		
		rollback using sqlca;
		MessageBox("Error!","La aplicacion ha encontrado un error en el detalle",Stopsign!);
	end if
	
else 
	
	rollback using sqlca;
	MessageBox("Error!", "La aplicacion ha encontrado un error", stopsign! )
	
end if
end event

type dw_detalles from datawindow within w_abm_cabecera_base
event nuevo_item pbm_dwnkey
integer x = 27
integer y = 544
integer width = 3003
integer height = 480
integer taborder = 20
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event nuevo_item;if key = keyenter! then
	this.insertRow(0)
end if
end event

event constructor;This.SetTransObject(SQLCA)
end event

type dw_datos from datawindow within w_abm_cabecera_base
integer x = 27
integer y = 36
integer width = 3003
integer height = 480
integer taborder = 10
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

event itemchanged;Long 	lcant_filas
any lvalor1
dw_datos.AcceptText()
if this.GetColumn() = 1 then
	lvalor1 = dw_datos.Object.Data[1,1]
	lcant_filas = dw_datos.retrieve(lvalor1)
	if lcant_filas > 0 then
		lcant_filas = dw_detalles.retrieve(lvalor1)
		if lcant_filas <= 0 then
			rollback using sqlca;
			MessageBox("Atencion","Se ha producido un error durante la lectura de datos [durante la lectura de la cabecera]", StopSign!)
		elseif lcant_filas > 0 then
			commit using SQLCA;
		end if 
	elseif lcant_filas < 0 then 
		rollback using SQLCA;
		MessageBox("Atencion","Se ha producido un error durante la lectura de datos [durante la lectura de los detalles]",StopSign!)
	elseif lcant_filas = 0 then
			cb_cancelar.event clicked()
			dw_datos.SetItem(1,1,lvalor1)
	end if
		dw_datos.SetFocus()
end if
end event

