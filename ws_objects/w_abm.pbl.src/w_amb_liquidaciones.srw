$PBExportHeader$w_amb_liquidaciones.srw
forward
global type w_amb_liquidaciones from w_abm_cabecera_base
end type
end forward

global type w_amb_liquidaciones from w_abm_cabecera_base
integer width = 3314
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
integer x = 2816
integer y = 1560
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
integer y = 420
integer width = 3200
integer height = 1080
string dataobject = "dw_abm_liquidaciones_detalle"
boolean hscrollbar = true
boolean vscrollbar = true
end type

type dw_datos from w_abm_cabecera_base`dw_datos within w_amb_liquidaciones
integer width = 3205
integer height = 352
string dataobject = "dw_abm_liquidaciones"
end type

