﻿$PBExportHeader$w_rpt_liquidaciones_mensuales_4arg.srw
forward
global type w_rpt_liquidaciones_mensuales_4arg from w_rpt_base_4argumentos
end type
end forward

global type w_rpt_liquidaciones_mensuales_4arg from w_rpt_base_4argumentos
end type
global w_rpt_liquidaciones_mensuales_4arg w_rpt_liquidaciones_mensuales_4arg

on w_rpt_liquidaciones_mensuales_4arg.create
call super::create
end on

on w_rpt_liquidaciones_mensuales_4arg.destroy
call super::destroy
end on

type cb_salir from w_rpt_base_4argumentos`cb_salir within w_rpt_liquidaciones_mensuales_4arg
end type

type cb_ultimo from w_rpt_base_4argumentos`cb_ultimo within w_rpt_liquidaciones_mensuales_4arg
end type

type cb_anterior from w_rpt_base_4argumentos`cb_anterior within w_rpt_liquidaciones_mensuales_4arg
end type

type cb_siguiente from w_rpt_base_4argumentos`cb_siguiente within w_rpt_liquidaciones_mensuales_4arg
end type

type cb_primero from w_rpt_base_4argumentos`cb_primero within w_rpt_liquidaciones_mensuales_4arg
end type

type cb_cancelar from w_rpt_base_4argumentos`cb_cancelar within w_rpt_liquidaciones_mensuales_4arg
end type

type cb_imprimir from w_rpt_base_4argumentos`cb_imprimir within w_rpt_liquidaciones_mensuales_4arg
end type

type cb_ver from w_rpt_base_4argumentos`cb_ver within w_rpt_liquidaciones_mensuales_4arg
end type

type dw_datos from w_rpt_base_4argumentos`dw_datos within w_rpt_liquidaciones_mensuales_4arg
string dataobject = "dw_rpt_legajoempleado_liquidaciones_4_argumentos"
end type

type em_final from w_rpt_base_4argumentos`em_final within w_rpt_liquidaciones_mensuales_4arg
end type

type em_inicial from w_rpt_base_4argumentos`em_inicial within w_rpt_liquidaciones_mensuales_4arg
end type

type st_2 from w_rpt_base_4argumentos`st_2 within w_rpt_liquidaciones_mensuales_4arg
end type

type st_1 from w_rpt_base_4argumentos`st_1 within w_rpt_liquidaciones_mensuales_4arg
end type

type em_fecha_inicial from w_rpt_base_4argumentos`em_fecha_inicial within w_rpt_liquidaciones_mensuales_4arg
end type

type em_fecha_final from w_rpt_base_4argumentos`em_fecha_final within w_rpt_liquidaciones_mensuales_4arg
end type

