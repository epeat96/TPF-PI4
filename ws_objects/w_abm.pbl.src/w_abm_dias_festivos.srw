$PBExportHeader$w_abm_dias_festivos.srw
forward
global type w_abm_dias_festivos from w_abm_base
end type
type st_1 from statictext within w_abm_dias_festivos
end type
end forward

global type w_abm_dias_festivos from w_abm_base
integer width = 2217
integer height = 808
boolean minbox = false
boolean maxbox = false
boolean resizable = false
st_1 st_1
end type
global w_abm_dias_festivos w_abm_dias_festivos

on w_abm_dias_festivos.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on w_abm_dias_festivos.destroy
call super::destroy
destroy(this.st_1)
end on

type dw_datos from w_abm_base`dw_datos within w_abm_dias_festivos
integer x = 37
integer y = 116
integer width = 2011
integer height = 332
string dataobject = "dw_abm_dias_festivos"
end type

event dw_datos::itemchanged;// evento itemchanged

any lvalor
long lfilas

dw_datos.accepttext()

if dw_datos.getcolumn() = 1 then
	lvalor = dw_datos.getitemdate(1,1)
	lfilas = dw_datos.retrieve(lvalor)
	
	if lfilas < 0 then
		
		// hubo error
		rollback using SQLCA;
		messagebox("error","Error al guardar!") 
		
	elseif lfilas > 0 then
		commit using sqlca;
	else
		cb_cancelar.event clicked()
		dw_datos.setitem(1,1,lvalor)
	end if
	
end if
end event

type cb_salir from w_abm_base`cb_salir within w_abm_dias_festivos
integer x = 1614
integer y = 520
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_dias_festivos
integer x = 919
integer y = 524
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_dias_festivos
integer x = 475
integer y = 524
integer taborder = 30
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_dias_festivos
integer x = 37
integer y = 524
integer taborder = 20
end type

type st_1 from statictext within w_abm_dias_festivos
integer x = 41
integer y = 24
integer width = 681
integer height = 64
boolean bringtotop = true
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "DIAS FESTIVOS"
boolean focusrectangle = false
end type

