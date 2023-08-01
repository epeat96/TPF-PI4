$PBExportHeader$w_rpt_base_4.srw
forward
global type w_rpt_base_4 from window
end type
type st_5 from statictext within w_rpt_base_4
end type
type st_4 from statictext within w_rpt_base_4
end type
type st_3 from statictext within w_rpt_base_4
end type
type em_fecha_inicial from editmask within w_rpt_base_4
end type
type em_fecha_final from editmask within w_rpt_base_4
end type
type cb_salir from commandbutton within w_rpt_base_4
end type
type cb_ultimo from commandbutton within w_rpt_base_4
end type
type cb_anterior from commandbutton within w_rpt_base_4
end type
type cb_siguiente from commandbutton within w_rpt_base_4
end type
type cb_primero from commandbutton within w_rpt_base_4
end type
type cb_cancelar from commandbutton within w_rpt_base_4
end type
type cb_imprimir from commandbutton within w_rpt_base_4
end type
type cb_ver from commandbutton within w_rpt_base_4
end type
type dw_datos from datawindow within w_rpt_base_4
end type
type em_final from editmask within w_rpt_base_4
end type
type em_inicial from editmask within w_rpt_base_4
end type
type st_2 from statictext within w_rpt_base_4
end type
type st_1 from statictext within w_rpt_base_4
end type
end forward

global type w_rpt_base_4 from window
integer width = 4453
integer height = 2288
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_5 st_5
st_4 st_4
st_3 st_3
em_fecha_inicial em_fecha_inicial
em_fecha_final em_fecha_final
cb_salir cb_salir
cb_ultimo cb_ultimo
cb_anterior cb_anterior
cb_siguiente cb_siguiente
cb_primero cb_primero
cb_cancelar cb_cancelar
cb_imprimir cb_imprimir
cb_ver cb_ver
dw_datos dw_datos
em_final em_final
em_inicial em_inicial
st_2 st_2
st_1 st_1
end type
global w_rpt_base_4 w_rpt_base_4

forward prototypes
public subroutine wf_habilita (commandbutton pa_boton)
public subroutine wf_deshabilita (ref commandbutton pa_boton)
end prototypes

public subroutine wf_habilita (commandbutton pa_boton);pa_boton.enabled = true
end subroutine

public subroutine wf_deshabilita (ref commandbutton pa_boton);pa_boton.enabled = false
end subroutine

on w_rpt_base_4.create
this.st_5=create st_5
this.st_4=create st_4
this.st_3=create st_3
this.em_fecha_inicial=create em_fecha_inicial
this.em_fecha_final=create em_fecha_final
this.cb_salir=create cb_salir
this.cb_ultimo=create cb_ultimo
this.cb_anterior=create cb_anterior
this.cb_siguiente=create cb_siguiente
this.cb_primero=create cb_primero
this.cb_cancelar=create cb_cancelar
this.cb_imprimir=create cb_imprimir
this.cb_ver=create cb_ver
this.dw_datos=create dw_datos
this.em_final=create em_final
this.em_inicial=create em_inicial
this.st_2=create st_2
this.st_1=create st_1
this.Control[]={this.st_5,&
this.st_4,&
this.st_3,&
this.em_fecha_inicial,&
this.em_fecha_final,&
this.cb_salir,&
this.cb_ultimo,&
this.cb_anterior,&
this.cb_siguiente,&
this.cb_primero,&
this.cb_cancelar,&
this.cb_imprimir,&
this.cb_ver,&
this.dw_datos,&
this.em_final,&
this.em_inicial,&
this.st_2,&
this.st_1}
end on

on w_rpt_base_4.destroy
destroy(this.st_5)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.em_fecha_inicial)
destroy(this.em_fecha_final)
destroy(this.cb_salir)
destroy(this.cb_ultimo)
destroy(this.cb_anterior)
destroy(this.cb_siguiente)
destroy(this.cb_primero)
destroy(this.cb_cancelar)
destroy(this.cb_imprimir)
destroy(this.cb_ver)
destroy(this.dw_datos)
destroy(this.em_final)
destroy(this.em_inicial)
destroy(this.st_2)
destroy(this.st_1)
end on

event resize;
//Ubicacion de DW
dw_datos.width = this.width - 100
dw_datos.height = this.height - 750

//Botones de adm de la impresion
cb_ver.y = this.height - 450
cb_imprimir.y = this.height - 450
cb_cancelar.y = this.height - 450

cb_primero.y = this.height - 300
cb_siguiente.y = this.height - 300
cb_anterior.y = this.height - 300
cb_ultimo.y = this.height - 300

//Boton para salir
cb_salir.x = this.width - 500
cb_salir.y = this.height - 300
end event

event open;this.title =  Classname()
cb_cancelar.event clicked()
end event

type st_5 from statictext within w_rpt_base_4
integer x = 69
integer y = 28
integer width = 1801
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Listado Ficha de Empleado con sus liquidaciones"
boolean focusrectangle = false
end type

type st_4 from statictext within w_rpt_base_4
integer x = 1019
integer y = 256
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
string text = "Fecha Final:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_3 from statictext within w_rpt_base_4
integer x = 1024
integer y = 168
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
string text = "Fecha Inicial:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_fecha_inicial from editmask within w_rpt_base_4
integer x = 1440
integer y = 156
integer width = 402
integer height = 80
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

type em_fecha_final from editmask within w_rpt_base_4
integer x = 1440
integer y = 252
integer width = 402
integer height = 80
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

type cb_salir from commandbutton within w_rpt_base_4
integer x = 3822
integer y = 1852
integer width = 402
integer height = 112
integer taborder = 120
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

type cb_ultimo from commandbutton within w_rpt_base_4
integer x = 1381
integer y = 1940
integer width = 402
integer height = 112
integer taborder = 110
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Ultimo"
end type

event clicked;dw_datos.ScrolltoRow(dw_datos.RowCount())
dw_datos.SetRow(dw_datos.RowCount())
end event

type cb_anterior from commandbutton within w_rpt_base_4
integer x = 955
integer y = 1940
integer width = 402
integer height = 112
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Anterior"
end type

event clicked;dw_datos.ScrollPriorPage()
end event

type cb_siguiente from commandbutton within w_rpt_base_4
integer x = 530
integer y = 1940
integer width = 402
integer height = 112
integer taborder = 90
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Siguiente"
end type

event clicked;dw_datos.Scrollnextpage()
end event

type cb_primero from commandbutton within w_rpt_base_4
integer x = 105
integer y = 1940
integer width = 402
integer height = 112
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Primero"
end type

event clicked;dw_datos.ScrolltoRow(1)
dw_datos.SetRow(1)
end event

type cb_cancelar from commandbutton within w_rpt_base_4
integer x = 955
integer y = 1808
integer width = 402
integer height = 112
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancelar"
end type

event clicked;em_inicial.text = ''
em_final.text = ''

em_fecha_inicial.text=''
em_fecha_final.text=''

dw_datos.Reset()
dw_datos.Insertrow(0)

wf_deshabilita(cb_imprimir)
wf_deshabilita(cb_primero)
wf_deshabilita(cb_anterior)
wf_deshabilita(cb_siguiente)
wf_deshabilita(cb_ultimo)
end event

type cb_imprimir from commandbutton within w_rpt_base_4
integer x = 530
integer y = 1808
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Imprimir"
end type

event clicked;dw_datos.Print(true)
end event

type cb_ver from commandbutton within w_rpt_base_4
integer x = 105
integer y = 1808
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Ver"
end type

event clicked;if dw_datos.Retrieve(long(em_inicial.text), long(em_final.text), date(em_fecha_inicial), date(em_fecha_final)) > 0 then
	wf_habilita(cb_imprimir)
	wf_habilita(cb_primero)
	wf_habilita(cb_siguiente)
	wf_habilita(cb_anterior)
	wf_habilita(cb_ultimo)
	commit using SQLCA;
else
	wf_deshabilita(cb_imprimir)
	wf_deshabilita(cb_primero)
	wf_deshabilita(cb_siguiente)
	wf_deshabilita(cb_anterior)
	wf_deshabilita(cb_ultimo)
	rollback using SQLCA;
end if

end event

type dw_datos from datawindow within w_rpt_base_4
integer x = 82
integer y = 400
integer width = 4146
integer height = 1200
string title = "none"
string dataobject = "dw_rpt_legajoempleado_liquidaciones_4_argumentos"
boolean hscrollbar = true
boolean vscrollbar = true
boolean hsplitscroll = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;dw_datos.Settransobject(sqlca)
dw_datos.modify("DataWindow.Print.Preview = yes")			//modify object
end event

type em_final from editmask within w_rpt_base_4
integer x = 535
integer y = 252
integer width = 402
integer height = 80
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string mask = "#########"
end type

type em_inicial from editmask within w_rpt_base_4
integer x = 535
integer y = 156
integer width = 402
integer height = 80
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string mask = "#########"
end type

type st_2 from statictext within w_rpt_base_4
integer x = 59
integer y = 244
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
string text = "Final:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_rpt_base_4
integer x = 59
integer y = 160
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
string text = "Inicial:"
alignment alignment = right!
boolean focusrectangle = false
end type

