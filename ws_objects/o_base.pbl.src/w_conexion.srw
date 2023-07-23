$PBExportHeader$w_conexion.srw
$PBExportComments$Esta ventana sirve para solicitar el login del usuario
forward
global type w_conexion from window
end type
type pb_2 from picturebutton within w_conexion
end type
type pb_1 from picturebutton within w_conexion
end type
type sle_clave from singlelineedit within w_conexion
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
integer width = 1847
integer height = 864
boolean titlebar = true
string title = "Conexion a la Base de Datos"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "UserObject5!"
boolean center = true
pb_2 pb_2
pb_1 pb_1
sle_clave sle_clave
sle_usuario sle_usuario
cb_cancelar cb_cancelar
cb_aceptar cb_aceptar
gb_1 gb_1
end type
global w_conexion w_conexion

on w_conexion.create
this.pb_2=create pb_2
this.pb_1=create pb_1
this.sle_clave=create sle_clave
this.sle_usuario=create sle_usuario
this.cb_cancelar=create cb_cancelar
this.cb_aceptar=create cb_aceptar
this.gb_1=create gb_1
this.Control[]={this.pb_2,&
this.pb_1,&
this.sle_clave,&
this.sle_usuario,&
this.cb_cancelar,&
this.cb_aceptar,&
this.gb_1}
end on

on w_conexion.destroy
destroy(this.pb_2)
destroy(this.pb_1)
destroy(this.sle_clave)
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

type pb_2 from picturebutton within w_conexion
integer x = 535
integer y = 308
integer width = 142
integer height = 120
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Desktop\iconos para TP\candado2.png"
alignment htextalign = left!
end type

type pb_1 from picturebutton within w_conexion
integer x = 535
integer y = 180
integer width = 142
integer height = 120
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Desktop\iconos para TP\user.png"
alignment htextalign = left!
end type

type sle_clave from singlelineedit within w_conexion
integer x = 690
integer y = 312
integer width = 585
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

type sle_usuario from singlelineedit within w_conexion
integer x = 690
integer y = 184
integer width = 585
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
integer x = 1115
integer y = 604
integer width = 402
integer height = 128
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
integer x = 334
integer y = 608
integer width = 402
integer height = 124
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
integer x = 219
integer y = 64
integer width = 1371
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

