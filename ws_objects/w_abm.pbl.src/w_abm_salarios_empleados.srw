$PBExportHeader$w_abm_salarios_empleados.srw
forward
global type w_abm_salarios_empleados from w_abm_base
end type
end forward

global type w_abm_salarios_empleados from w_abm_base
end type
global w_abm_salarios_empleados w_abm_salarios_empleados

on w_abm_salarios_empleados.create
call super::create
end on

on w_abm_salarios_empleados.destroy
call super::destroy
end on

type dw_datos from w_abm_base`dw_datos within w_abm_salarios_empleados
string dataobject = "dw_abm_salarios_empleados"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_salarios_empleados
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_salarios_empleados
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_salarios_empleados
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_salarios_empleados
end type

