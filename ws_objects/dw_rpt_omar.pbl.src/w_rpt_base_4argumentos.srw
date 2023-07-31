$PBExportHeader$w_rpt_base_4argumentos.srw
forward
global type w_rpt_base_4argumentos from w_rpt_base_2
end type
type em_fecha_inicial from editmask within w_rpt_base_4argumentos
end type
type em_fecha_final from editmask within w_rpt_base_4argumentos
end type
end forward

global type w_rpt_base_4argumentos from w_rpt_base_2
em_fecha_inicial em_fecha_inicial
em_fecha_final em_fecha_final
end type
global w_rpt_base_4argumentos w_rpt_base_4argumentos

on w_rpt_base_4argumentos.create
int iCurrent
call super::create
this.em_fecha_inicial=create em_fecha_inicial
this.em_fecha_final=create em_fecha_final
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.em_fecha_inicial
this.Control[iCurrent+2]=this.em_fecha_final
end on

on w_rpt_base_4argumentos.destroy
call super::destroy
destroy(this.em_fecha_inicial)
destroy(this.em_fecha_final)
end on

type cb_salir from w_rpt_base_2`cb_salir within w_rpt_base_4argumentos
end type

type cb_ultimo from w_rpt_base_2`cb_ultimo within w_rpt_base_4argumentos
end type

type cb_anterior from w_rpt_base_2`cb_anterior within w_rpt_base_4argumentos
end type

type cb_siguiente from w_rpt_base_2`cb_siguiente within w_rpt_base_4argumentos
end type

type cb_primero from w_rpt_base_2`cb_primero within w_rpt_base_4argumentos
end type

type cb_cancelar from w_rpt_base_2`cb_cancelar within w_rpt_base_4argumentos
end type

type cb_imprimir from w_rpt_base_2`cb_imprimir within w_rpt_base_4argumentos
end type

type cb_ver from w_rpt_base_2`cb_ver within w_rpt_base_4argumentos
end type

event cb_ver::clicked;call super::clicked;//Ancestro anulado

if dw_datos.Retrieve(date(em_fecha_inicial.text), date(em_fecha_final.text),long(em_inicial.text), long(em_final.text)) > 0 then
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

type dw_datos from w_rpt_base_2`dw_datos within w_rpt_base_4argumentos
end type

type em_final from w_rpt_base_2`em_final within w_rpt_base_4argumentos
end type

type em_inicial from w_rpt_base_2`em_inicial within w_rpt_base_4argumentos
end type

type st_2 from w_rpt_base_2`st_2 within w_rpt_base_4argumentos
end type

type st_1 from w_rpt_base_2`st_1 within w_rpt_base_4argumentos
end type

type em_fecha_inicial from editmask within w_rpt_base_4argumentos
integer x = 1138
integer y = 68
integer width = 402
integer height = 112
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

type em_fecha_final from editmask within w_rpt_base_4argumentos
integer x = 1705
integer y = 76
integer width = 402
integer height = 112
integer taborder = 30
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

