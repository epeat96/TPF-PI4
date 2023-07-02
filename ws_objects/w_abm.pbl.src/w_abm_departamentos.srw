$PBExportHeader$w_abm_departamentos.srw
forward
global type w_abm_departamentos from w_abm_base
end type
end forward

global type w_abm_departamentos from w_abm_base
integer width = 2464
integer height = 724
end type
global w_abm_departamentos w_abm_departamentos

on w_abm_departamentos.create
call super::create
end on

on w_abm_departamentos.destroy
call super::destroy
end on

type dw_datos from w_abm_base`dw_datos within w_abm_departamentos
integer x = 37
integer y = 32
integer width = 2359
integer height = 424
string dataobject = "dw_abm_departamentos"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_departamentos
integer x = 1993
integer y = 476
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_departamentos
integer x = 1157
integer y = 476
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_departamentos
integer x = 576
integer y = 476
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_departamentos
integer x = 37
integer y = 476
end type

