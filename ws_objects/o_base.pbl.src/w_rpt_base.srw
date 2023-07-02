$PBExportHeader$w_rpt_base.srw
forward
global type w_rpt_base from window
end type
type cb_ultimo from commandbutton within w_rpt_base
end type
type cb_anterior from commandbutton within w_rpt_base
end type
type cb_siguiente from commandbutton within w_rpt_base
end type
type cb_primero from commandbutton within w_rpt_base
end type
type cb_cancelar from commandbutton within w_rpt_base
end type
type cb_imprimir from commandbutton within w_rpt_base
end type
type cb_ver from commandbutton within w_rpt_base
end type
type em_final from editmask within w_rpt_base
end type
type em_inicial from editmask within w_rpt_base
end type
type st_2 from statictext within w_rpt_base
end type
type st_1 from statictext within w_rpt_base
end type
type dw_datos from datawindow within w_rpt_base
end type
end forward

global type w_rpt_base from window
integer width = 3451
integer height = 1472
boolean titlebar = true
string title = "w_rpt_base"
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
cb_ultimo cb_ultimo
cb_anterior cb_anterior
cb_siguiente cb_siguiente
cb_primero cb_primero
cb_cancelar cb_cancelar
cb_imprimir cb_imprimir
cb_ver cb_ver
em_final em_final
em_inicial em_inicial
st_2 st_2
st_1 st_1
dw_datos dw_datos
end type
global w_rpt_base w_rpt_base

on w_rpt_base.create
this.cb_ultimo=create cb_ultimo
this.cb_anterior=create cb_anterior
this.cb_siguiente=create cb_siguiente
this.cb_primero=create cb_primero
this.cb_cancelar=create cb_cancelar
this.cb_imprimir=create cb_imprimir
this.cb_ver=create cb_ver
this.em_final=create em_final
this.em_inicial=create em_inicial
this.st_2=create st_2
this.st_1=create st_1
this.dw_datos=create dw_datos
this.Control[]={this.cb_ultimo,&
this.cb_anterior,&
this.cb_siguiente,&
this.cb_primero,&
this.cb_cancelar,&
this.cb_imprimir,&
this.cb_ver,&
this.em_final,&
this.em_inicial,&
this.st_2,&
this.st_1,&
this.dw_datos}
end on

on w_rpt_base.destroy
destroy(this.cb_ultimo)
destroy(this.cb_anterior)
destroy(this.cb_siguiente)
destroy(this.cb_primero)
destroy(this.cb_cancelar)
destroy(this.cb_imprimir)
destroy(this.cb_ver)
destroy(this.em_final)
destroy(this.em_inicial)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.dw_datos)
end on

event open;title = "Nombre del programa: " + this.classname()
cb_cancelar.event clicked()
end event

event resize;dw_datos.width = this.width - 200
dw_datos.height = this.height - 750

cb_ver.y = this.height - 450
cb_imprimir.y = this.height - 450
cb_cancelar.y = this.height - 450

cb_primero.y = this.height - 300
cb_anterior.y = this.height - 300
cb_siguiente.y = this.height - 300
cb_ultimo.y = this.height - 300
end event

type cb_ultimo from commandbutton within w_rpt_base
integer x = 1463
integer y = 1148
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "Ultimo"
end type

event clicked;dw_datos.ScrollToRow(dw_datos.RowCount())
dw_datos.SetRow(dw_datos.RowCount())
end event

type cb_anterior from commandbutton within w_rpt_base
integer x = 1006
integer y = 1148
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "Anterior"
end type

event clicked;dw_datos.ScrollPriorPage()
end event

type cb_siguiente from commandbutton within w_rpt_base
integer x = 549
integer y = 1148
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "Siguiente"
end type

event clicked;dw_datos.ScrollNextPage()
end event

type cb_primero from commandbutton within w_rpt_base
integer x = 96
integer y = 1148
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "Primero"
end type

event clicked;dw_datos.ScrollToRow(1)
dw_datos.SetRow(1)
end event

type cb_cancelar from commandbutton within w_rpt_base
integer x = 1006
integer y = 976
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

event clicked;em_inicial.text = ""
em_final.text = ""

dw_datos.reset()
dw_datos.insertRow(0)

f_deshabilitaboton(cb_imprimir)
f_deshabilitaboton(cb_primero)
f_deshabilitaboton(cb_anterior)
f_deshabilitaboton(cb_siguiente)
f_deshabilitaboton(cb_ultimo)

em_inicial.setfocus()
end event

type cb_imprimir from commandbutton within w_rpt_base
integer x = 549
integer y = 976
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "Imprimir"
end type

event clicked;dw_datos.print(true)
end event

type cb_ver from commandbutton within w_rpt_base
integer x = 96
integer y = 976
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Ver"
end type

event clicked;if dw_datos.Retrieve(long(em_inicial.text),long(em_final.text)) > 0 then
	f_habilitaboton(cb_imprimir)
	f_habilitaboton(cb_primero)
	f_habilitaboton(cb_anterior)
	f_habilitaboton(cb_siguiente)
	f_habilitaboton(cb_ultimo)
	commit using sqlca;
	
else
	f_deshabilitaboton(cb_imprimir)
	f_deshabilitaboton(cb_primero)
	f_deshabilitaboton(cb_anterior)
	f_deshabilitaboton(cb_siguiente)
	f_deshabilitaboton(cb_ultimo)
	rollback using sqlca;
	
end if
	
end event

type em_final from editmask within w_rpt_base
integer x = 485
integer y = 212
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

type em_inicial from editmask within w_rpt_base
integer x = 485
integer y = 40
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

type st_2 from statictext within w_rpt_base
integer x = 256
integer y = 240
integer width = 169
integer height = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Final:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_rpt_base
integer x = 219
integer y = 64
integer width = 206
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Inicial:"
alignment alignment = right!
boolean focusrectangle = false
end type

type dw_datos from datawindow within w_rpt_base
integer x = 37
integer y = 392
integer width = 3008
integer height = 560
integer taborder = 10
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;dw_datos.SetTransObject(sqlca)
dw_datos.modify("DataWindow.Print.Preview = yes")
end event

