$PBExportHeader$w_abm_paises.srw
forward
global type w_abm_paises from w_abm_base
end type
end forward

global type w_abm_paises from w_abm_base
integer width = 2487
integer height = 584
end type
global w_abm_paises w_abm_paises

on w_abm_paises.create
call super::create
end on

on w_abm_paises.destroy
call super::destroy
end on

type dw_datos from w_abm_base`dw_datos within w_abm_paises
integer y = 28
integer width = 2363
integer height = 288
string dataobject = "dw_abm_paises"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_paises
integer x = 2030
integer y = 344
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_paises
integer x = 1193
integer y = 344
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_paises
integer x = 613
integer y = 344
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_paises
integer x = 73
integer y = 344
end type

