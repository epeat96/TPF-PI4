$PBExportHeader$w_abm_dias_festivos.srw
forward
global type w_abm_dias_festivos from w_abm_base
end type
end forward

global type w_abm_dias_festivos from w_abm_base
integer width = 1902
integer height = 560
end type
global w_abm_dias_festivos w_abm_dias_festivos

on w_abm_dias_festivos.create
call super::create
end on

on w_abm_dias_festivos.destroy
call super::destroy
end on

type dw_datos from w_abm_base`dw_datos within w_abm_dias_festivos
integer x = 37
integer y = 24
integer width = 1810
integer height = 272
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
integer x = 1435
integer y = 308
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_dias_festivos
integer x = 919
integer y = 308
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_dias_festivos
integer x = 475
integer y = 308
integer taborder = 30
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_dias_festivos
integer x = 37
integer y = 308
integer taborder = 20
end type

