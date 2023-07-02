$PBExportHeader$w_abm_cargos.srw
forward
global type w_abm_cargos from w_abm_base
end type
end forward

global type w_abm_cargos from w_abm_base
end type
global w_abm_cargos w_abm_cargos

on w_abm_cargos.create
call super::create
end on

on w_abm_cargos.destroy
call super::destroy
end on

type dw_datos from w_abm_base`dw_datos within w_abm_cargos
string dataobject = "dw_abm_cargos"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_cargos
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_cargos
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_cargos
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_cargos
end type

