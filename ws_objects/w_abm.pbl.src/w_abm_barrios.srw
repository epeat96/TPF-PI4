$PBExportHeader$w_abm_barrios.srw
forward
global type w_abm_barrios from w_abm_base
end type
end forward

global type w_abm_barrios from w_abm_base
end type
global w_abm_barrios w_abm_barrios

on w_abm_barrios.create
call super::create
end on

on w_abm_barrios.destroy
call super::destroy
end on

type dw_datos from w_abm_base`dw_datos within w_abm_barrios
string dataobject = "dw_abm_barrios"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_barrios
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_barrios
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_barrios
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_barrios
end type

