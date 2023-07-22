$PBExportHeader$w_conexion.srw
$PBExportComments$Esta ventana sirve para solicitar el login del usuario
forward
global type w_conexion from window
end type
type sle_clave from singlelineedit within w_conexion
end type
type st_contrasena from statictext within w_conexion
end type
type st_usuario from statictext within w_conexion
end type
type sle_usuario from singlelineedit within w_conexion
end type
type cb_cancelar from commandbutton within w_conexion
end type
type cb_aceptar from commandbutton within w_conexion
end type
type gb_1 from groupbox within w_conexion
end type
end forward

global type w_conexion from window
integer width = 2510
integer height = 1332
boolean titlebar = true
string title = "Conexion a la Base de Datos"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_clave sle_clave
st_contrasena st_contrasena
st_usuario st_usuario
sle_usuario sle_usuario
cb_cancelar cb_cancelar
cb_aceptar cb_aceptar
gb_1 gb_1
end type
global w_conexion w_conexion

on w_conexion.create
this.sle_clave=create sle_clave
this.st_contrasena=create st_contrasena
this.st_usuario=create st_usuario
this.sle_usuario=create sle_usuario
this.cb_cancelar=create cb_cancelar
this.cb_aceptar=create cb_aceptar
this.gb_1=create gb_1
this.Control[]={this.sle_clave,&
this.st_contrasena,&
this.st_usuario,&
this.sle_usuario,&
this.cb_cancelar,&
this.cb_aceptar,&
this.gb_1}
end on

on w_conexion.destroy
destroy(this.sle_clave)
destroy(this.st_contrasena)
destroy(this.st_usuario)
destroy(this.sle_usuario)
destroy(this.cb_cancelar)
destroy(this.cb_aceptar)
destroy(this.gb_1)
end on

event open;title = "Nombre del programa: " + this.classname()
end event

event key;if key = keyenter! then
	cb_aceptar.event clicked()
end if
end event

type sle_clave from singlelineedit within w_conexion
integer x = 1088
integer y = 420
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean password = true
borderstyle borderstyle = stylelowered!
end type

type st_contrasena from statictext within w_conexion
integer x = 626
integer y = 436
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Clave"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_usuario from statictext within w_conexion
integer x = 645
integer y = 316
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Usuario"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_usuario from singlelineedit within w_conexion
integer x = 1083
integer y = 292
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_cancelar from commandbutton within w_conexion
integer x = 1349
integer y = 828
integer width = 402
integer height = 200
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Salir"
boolean cancel = true
boolean flatstyle = true
end type

event clicked;Close(parent)
end event

type cb_aceptar from commandbutton within w_conexion
integer x = 750
integer y = 828
integer width = 402
integer height = 200
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Aceptar"
boolean flatstyle = true
end type

event clicked;
string lusuario, lclave

lusuario = sle_usuario.text
lclave = sle_clave.text

SQLCA.DBMS = "ODBC" // Configuracion de parametros a la BD
SQLCA.AutoCommit = False

SQLCA.DBParm = "ConnectString = 'DSN=LiquidacionSalario; UID="+lusuario+"; PWD="+lclave+"', ConnectOption='SQL_DRIVER_CONNECT,SQL_DRIVER_NOPROMPT'"

CONNECT USING SQLCA;

if SQLCA.SQLCODE < 0 THEN
	MessageBox('Error',SQLCA.SQLERRTEXT)
else  
	// ACA DEBE LLAMAR AL MENU DE LA APLICACION
	open(w_principal)
	cb_cancelar.event clicked()
end if
end event

type gb_1 from groupbox within w_conexion
integer x = 489
integer y = 172
integer width = 1394
integer height = 504
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 134217856
long backcolor = 67108864
string text = "Ingrese una clave y usuario validos"
end type

