$PBExportHeader$w_abm_base.srw
forward
global type w_abm_base from window
end type
type dw_datos from datawindow within w_abm_base
end type
type cb_salir from commandbutton within w_abm_base
end type
type cb_cancelar from commandbutton within w_abm_base
end type
type cb_borrar from commandbutton within w_abm_base
end type
type cb_grabar from commandbutton within w_abm_base
end type
end forward

global type w_abm_base from window
integer width = 3378
integer height = 1408
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_datos dw_datos
cb_salir cb_salir
cb_cancelar cb_cancelar
cb_borrar cb_borrar
cb_grabar cb_grabar
end type
global w_abm_base w_abm_base

on w_abm_base.create
this.dw_datos=create dw_datos
this.cb_salir=create cb_salir
this.cb_cancelar=create cb_cancelar
this.cb_borrar=create cb_borrar
this.cb_grabar=create cb_grabar
this.Control[]={this.dw_datos,&
this.cb_salir,&
this.cb_cancelar,&
this.cb_borrar,&
this.cb_grabar}
end on

on w_abm_base.destroy
destroy(this.dw_datos)
destroy(this.cb_salir)
destroy(this.cb_cancelar)
destroy(this.cb_borrar)
destroy(this.cb_grabar)
end on

event open;//Evento open
title = "Nombre del programa: " + this.classname()
cb_cancelar.event clicked()
end event

type dw_datos from datawindow within w_abm_base
integer x = 69
integer y = 132
integer width = 2953
integer height = 952
integer taborder = 10
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;// evento itemchanged

any lvalor
long lfilas

dw_datos.accepttext()

if dw_datos.getcolumn() = 1 then
	lvalor = dw_datos.getitemnumber(1,1)
	lfilas = dw_datos.retrieve(lvalor)
	
	if lfilas < 0 then
		
		// hubo error
		rollback using SQLCA;
		messagebox("error","hubo un problema xddxdxd") 
		
	elseif lfilas > 0 then
		commit using sqlca;
	else
		cb_cancelar.event clicked()
		dw_datos.setitem(1,1,lvalor)
	end if
	
end if
end event

event constructor;this.settransobject(sqlca)
end event

type cb_salir from commandbutton within w_abm_base
integer x = 2016
integer y = 1152
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
boolean flatstyle = true
end type

event clicked;close(parent)
end event

type cb_cancelar from commandbutton within w_abm_base
integer x = 1179
integer y = 1152
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancelar"
boolean flatstyle = true
end type

event clicked;// evento clicked
dw_datos.Reset()
dw_datos.insertRow(0)
dw_datos.SetFocus()
end event

type cb_borrar from commandbutton within w_abm_base
integer x = 599
integer y = 1152
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
boolean flatstyle = true
end type

event clicked;if messagebox("atencion","esta seguro?",question!,okcancel!,2) = 1 then
	
	dw_datos.deleterow(0)
	cb_grabar.event clicked()
	
end if
end event

type cb_grabar from commandbutton within w_abm_base
integer x = 59
integer y = 1152
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
boolean flatstyle = true
end type

event clicked;// evento clicked

dw_datos.accepttext()

if dw_datos.update(true,false) = 1 then
	commit using sqlca;
	cb_cancelar.event clicked()
else
	rollback using sqlca;
	messageBox("error", "Hubo un error al grabar!", stopsign!)
end if

end event

