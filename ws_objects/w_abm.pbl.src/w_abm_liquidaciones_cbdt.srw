$PBExportHeader$w_abm_liquidaciones_cbdt.srw
forward
global type w_abm_liquidaciones_cbdt from w_abm_cabecera_base
end type
end forward

global type w_abm_liquidaciones_cbdt from w_abm_cabecera_base
end type
global w_abm_liquidaciones_cbdt w_abm_liquidaciones_cbdt

on w_abm_liquidaciones_cbdt.create
call super::create
end on

on w_abm_liquidaciones_cbdt.destroy
call super::destroy
end on

type cb_salir from w_abm_cabecera_base`cb_salir within w_abm_liquidaciones_cbdt
end type

type cb_cancelar from w_abm_cabecera_base`cb_cancelar within w_abm_liquidaciones_cbdt
end type

type cb_borrar_item from w_abm_cabecera_base`cb_borrar_item within w_abm_liquidaciones_cbdt
end type

type cb_borrar from w_abm_cabecera_base`cb_borrar within w_abm_liquidaciones_cbdt
end type

type cb_grabar from w_abm_cabecera_base`cb_grabar within w_abm_liquidaciones_cbdt
end type

type dw_detalles from w_abm_cabecera_base`dw_detalles within w_abm_liquidaciones_cbdt
string dataobject = "dw_abm_liquidaciones_detalle_2"
end type

type dw_datos from w_abm_cabecera_base`dw_datos within w_abm_liquidaciones_cbdt
string dataobject = "dw_abm_liquidaciones_cabecera"
end type

