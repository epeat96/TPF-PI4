$PBExportHeader$w_abm_empleados.srw
forward
global type w_abm_empleados from w_abm_base
end type
type pb_2 from picturebutton within w_abm_empleados
end type
type pb_3 from picturebutton within w_abm_empleados
end type
type pb_1 from picturebutton within w_abm_empleados
end type
type st_1 from statictext within w_abm_empleados
end type
type st_2 from statictext within w_abm_empleados
end type
type st_3 from statictext within w_abm_empleados
end type
type pb_4 from picturebutton within w_abm_empleados
end type
type st_4 from statictext within w_abm_empleados
end type
type vsb_1 from vscrollbar within w_abm_empleados
end type
type pb_5 from picturebutton within w_abm_empleados
end type
type pb_6 from picturebutton within w_abm_empleados
end type
type pb_7 from picturebutton within w_abm_empleados
end type
type pb_8 from picturebutton within w_abm_empleados
end type
type st_5 from statictext within w_abm_empleados
end type
type st_6 from statictext within w_abm_empleados
end type
type st_7 from statictext within w_abm_empleados
end type
type st_8 from statictext within w_abm_empleados
end type
type gb_1 from groupbox within w_abm_empleados
end type
type gb_2 from groupbox within w_abm_empleados
end type
end forward

global type w_abm_empleados from w_abm_base
integer width = 3177
integer height = 1932
string title = "Gestión de Empleados"
pb_2 pb_2
pb_3 pb_3
pb_1 pb_1
st_1 st_1
st_2 st_2
st_3 st_3
pb_4 pb_4
st_4 st_4
vsb_1 vsb_1
pb_5 pb_5
pb_6 pb_6
pb_7 pb_7
pb_8 pb_8
st_5 st_5
st_6 st_6
st_7 st_7
st_8 st_8
gb_1 gb_1
gb_2 gb_2
end type
global w_abm_empleados w_abm_empleados

on w_abm_empleados.create
int iCurrent
call super::create
this.pb_2=create pb_2
this.pb_3=create pb_3
this.pb_1=create pb_1
this.st_1=create st_1
this.st_2=create st_2
this.st_3=create st_3
this.pb_4=create pb_4
this.st_4=create st_4
this.vsb_1=create vsb_1
this.pb_5=create pb_5
this.pb_6=create pb_6
this.pb_7=create pb_7
this.pb_8=create pb_8
this.st_5=create st_5
this.st_6=create st_6
this.st_7=create st_7
this.st_8=create st_8
this.gb_1=create gb_1
this.gb_2=create gb_2
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.pb_2
this.Control[iCurrent+2]=this.pb_3
this.Control[iCurrent+3]=this.pb_1
this.Control[iCurrent+4]=this.st_1
this.Control[iCurrent+5]=this.st_2
this.Control[iCurrent+6]=this.st_3
this.Control[iCurrent+7]=this.pb_4
this.Control[iCurrent+8]=this.st_4
this.Control[iCurrent+9]=this.vsb_1
this.Control[iCurrent+10]=this.pb_5
this.Control[iCurrent+11]=this.pb_6
this.Control[iCurrent+12]=this.pb_7
this.Control[iCurrent+13]=this.pb_8
this.Control[iCurrent+14]=this.st_5
this.Control[iCurrent+15]=this.st_6
this.Control[iCurrent+16]=this.st_7
this.Control[iCurrent+17]=this.st_8
this.Control[iCurrent+18]=this.gb_1
this.Control[iCurrent+19]=this.gb_2
end on

on w_abm_empleados.destroy
call super::destroy
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.pb_1)
destroy(this.st_1)
destroy(this.st_2)
destroy(this.st_3)
destroy(this.pb_4)
destroy(this.st_4)
destroy(this.vsb_1)
destroy(this.pb_5)
destroy(this.pb_6)
destroy(this.pb_7)
destroy(this.pb_8)
destroy(this.st_5)
destroy(this.st_6)
destroy(this.st_7)
destroy(this.st_8)
destroy(this.gb_1)
destroy(this.gb_2)
end on

type dw_datos from w_abm_base`dw_datos within w_abm_empleados
integer x = 0
integer y = 0
string dataobject = "dw_abm_empleados"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_empleados
integer x = 1463
integer y = 1652
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_empleados
integer x = 1015
integer y = 1652
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_empleados
integer x = 544
integer y = 1652
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_empleados
integer x = 55
integer y = 1652
end type

type pb_2 from picturebutton within w_abm_empleados
integer x = 1591
integer y = 1080
integer width = 297
integer height = 248
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Documents\GitHub\TPF-PI4\iconos\guardar.png"
alignment htextalign = left!
end type

type pb_3 from picturebutton within w_abm_empleados
integer x = 2249
integer y = 1080
integer width = 288
integer height = 240
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Documents\GitHub\TPF-PI4\iconos\boton-eliminar.png"
alignment htextalign = left!
end type

type pb_1 from picturebutton within w_abm_empleados
integer x = 1925
integer y = 1080
integer width = 293
integer height = 244
integer taborder = 30
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Documents\GitHub\TPF-PI4\iconos\borrar (1).png"
alignment htextalign = left!
end type

type st_1 from statictext within w_abm_empleados
integer x = 1605
integer y = 1332
integer width = 288
integer height = 68
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "GUARDAR"
boolean focusrectangle = false
end type

type st_2 from statictext within w_abm_empleados
integer x = 1961
integer y = 1332
integer width = 288
integer height = 68
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "BORRAR"
boolean focusrectangle = false
end type

type st_3 from statictext within w_abm_empleados
integer x = 2258
integer y = 1328
integer width = 288
integer height = 68
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "CANCELAR"
boolean focusrectangle = false
end type

type pb_4 from picturebutton within w_abm_empleados
integer x = 2578
integer y = 1084
integer width = 279
integer height = 240
integer taborder = 30
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Documents\GitHub\TPF-PI4\iconos\salir.png"
alignment htextalign = left!
end type

type st_4 from statictext within w_abm_empleados
integer x = 2633
integer y = 1328
integer width = 288
integer height = 68
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "SALIR"
boolean focusrectangle = false
end type

type vsb_1 from vscrollbar within w_abm_empleados
integer x = 2949
integer width = 114
integer height = 948
boolean bringtotop = true
integer maxposition = 100
end type

type pb_5 from picturebutton within w_abm_empleados
integer x = 197
integer y = 1084
integer width = 293
integer height = 240
integer taborder = 40
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Documents\GitHub\TPF-PI4\iconos\primero.png"
alignment htextalign = left!
end type

type pb_6 from picturebutton within w_abm_empleados
integer x = 517
integer y = 1088
integer width = 283
integer height = 236
integer taborder = 40
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Documents\GitHub\TPF-PI4\iconos\anterior.png"
alignment htextalign = left!
end type

type pb_7 from picturebutton within w_abm_empleados
integer x = 827
integer y = 1088
integer width = 283
integer height = 232
integer taborder = 50
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Documents\GitHub\TPF-PI4\iconos\siguiente.png"
alignment htextalign = left!
end type

type pb_8 from picturebutton within w_abm_empleados
integer x = 1134
integer y = 1088
integer width = 283
integer height = 232
integer taborder = 50
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Users\Omar\Documents\GitHub\TPF-PI4\iconos\ultimo.png"
alignment htextalign = left!
end type

type st_5 from statictext within w_abm_empleados
integer x = 210
integer y = 1332
integer width = 288
integer height = 68
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "PRIMERO"
boolean focusrectangle = false
end type

type st_6 from statictext within w_abm_empleados
integer x = 521
integer y = 1332
integer width = 288
integer height = 68
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "ANTERIOR"
boolean focusrectangle = false
end type

type st_7 from statictext within w_abm_empleados
integer x = 832
integer y = 1332
integer width = 288
integer height = 68
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "SIGUIENTE"
boolean focusrectangle = false
end type

type st_8 from statictext within w_abm_empleados
integer x = 1179
integer y = 1332
integer width = 288
integer height = 68
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "ÚLTIMO"
boolean focusrectangle = false
end type

type gb_1 from groupbox within w_abm_empleados
integer x = 1550
integer y = 1012
integer width = 1394
integer height = 400
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "MENU"
end type

type gb_2 from groupbox within w_abm_empleados
integer x = 165
integer y = 1016
integer width = 1294
integer height = 392
integer taborder = 50
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "VER"
end type

