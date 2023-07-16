$PBExportHeader$w_amb_liquidaciones.srw
forward
global type w_amb_liquidaciones from w_abm_cabecera_base
end type
end forward

global type w_amb_liquidaciones from w_abm_cabecera_base
integer width = 3195
integer height = 1848
end type
global w_amb_liquidaciones w_amb_liquidaciones

on w_amb_liquidaciones.create
call super::create
end on

on w_amb_liquidaciones.destroy
call super::destroy
end on

type cb_salir from w_abm_cabecera_base`cb_salir within w_amb_liquidaciones
integer x = 2642
integer y = 1564
end type

type cb_cancelar from w_abm_cabecera_base`cb_cancelar within w_amb_liquidaciones
integer x = 1490
integer y = 1564
end type

type cb_borrar_item from w_abm_cabecera_base`cb_borrar_item within w_amb_liquidaciones
integer x = 1010
integer y = 1564
end type

type cb_borrar from w_abm_cabecera_base`cb_borrar within w_amb_liquidaciones
integer x = 539
integer y = 1564
end type

type cb_grabar from w_abm_cabecera_base`cb_grabar within w_amb_liquidaciones
integer x = 73
integer y = 1564
end type

type dw_detalles from w_abm_cabecera_base`dw_detalles within w_amb_liquidaciones
integer y = 780
integer width = 3049
integer height = 720
string dataobject = "dw_abm_liquidaciones_detalle"
end type

type dw_datos from w_abm_cabecera_base`dw_datos within w_amb_liquidaciones
integer width = 3054
integer height = 712
string dataobject = "dw_abm_liquidaciones"
end type

