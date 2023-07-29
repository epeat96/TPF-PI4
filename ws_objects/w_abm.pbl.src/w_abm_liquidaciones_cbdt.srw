$PBExportHeader$w_abm_liquidaciones_cbdt.srw
forward
global type w_abm_liquidaciones_cbdt from w_abm_cabecera_base
end type
type st_1 from statictext within w_abm_liquidaciones_cbdt
end type
end forward

global type w_abm_liquidaciones_cbdt from w_abm_cabecera_base
integer width = 3593
integer height = 2040
boolean minbox = false
boolean maxbox = false
boolean resizable = false
st_1 st_1
end type
global w_abm_liquidaciones_cbdt w_abm_liquidaciones_cbdt

on w_abm_liquidaciones_cbdt.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on w_abm_liquidaciones_cbdt.destroy
call super::destroy
destroy(this.st_1)
end on

type cb_salir from w_abm_cabecera_base`cb_salir within w_abm_liquidaciones_cbdt
integer x = 2633
integer y = 1752
end type

type cb_cancelar from w_abm_cabecera_base`cb_cancelar within w_abm_liquidaciones_cbdt
integer x = 1481
integer y = 1752
end type

type cb_borrar_item from w_abm_cabecera_base`cb_borrar_item within w_abm_liquidaciones_cbdt
integer x = 1001
integer y = 1752
end type

type cb_borrar from w_abm_cabecera_base`cb_borrar within w_abm_liquidaciones_cbdt
integer x = 530
integer y = 1752
end type

type cb_grabar from w_abm_cabecera_base`cb_grabar within w_abm_liquidaciones_cbdt
integer x = 64
integer y = 1752
end type

type dw_detalles from w_abm_cabecera_base`dw_detalles within w_abm_liquidaciones_cbdt
integer x = 69
integer y = 448
integer width = 3374
integer height = 1248
string dataobject = "dw_abm_liquidaciones_detalle_2"
boolean vscrollbar = true
end type

event dw_detalles::retrieveend;call super::retrieveend;decimal ldc_monto_total
decimal ldc_monto_ips_empleado
decimal ldc_monto_ips_patronal
decimal ldc_monto_bonificacion_familiar
decimal ldc_monto_aguinaldo

// Copiar datos ( de cabecera a detalle )
// Copiar datos de monto_total
ldc_monto_total = Dec(parent.dw_datos.GetItemNumber(1, "monto_total"))
This.Object.c_monto_total.Expression = String(ldc_monto_total)
// Copiar datos de bonificacion familiar
ldc_monto_bonificacion_familiar = Dec(parent.dw_datos.GetItemNumber(1, "bonificacion_familiar"))
This.Object.c_monto_bonificacion_familiar.Expression = String(ldc_monto_bonificacion_familiar)
// Copiar datos de aguinaldo
ldc_monto_aguinaldo = Dec(parent.dw_datos.GetItemNumber(1, "total_aguinaldo"))
This.Object.c_monto_aguinaldo.Expression = String(ldc_monto_aguinaldo)
// Copiar datos de ips patronal
ldc_monto_ips_patronal = Dec(parent.dw_datos.GetItemNumber(1, "monto_ips_patronal"))
This.Object.c_monto_ips_patronal.Expression = String(ldc_monto_ips_patronal)
// Copiar datos de ips patronal
ldc_monto_ips_patronal = Dec(parent.dw_datos.GetItemNumber(1, "monto_ips_patronal"))
This.Object.c_monto_ips_patronal.Expression = String(ldc_monto_ips_patronal)
// Copiar datos de ips empleado
ldc_monto_ips_empleado = Dec(parent.dw_datos.GetItemNumber(1, "monto_ips_obrero"))
This.Object.c_monto_ips_empleado.Expression = String(ldc_monto_ips_empleado)
end event

type dw_datos from w_abm_cabecera_base`dw_datos within w_abm_liquidaciones_cbdt
integer x = 69
integer y = 148
integer width = 3374
integer height = 272
string dataobject = "dw_abm_liquidaciones_cabecera"
end type

type st_1 from statictext within w_abm_liquidaciones_cbdt
integer x = 69
integer y = 24
integer width = 1006
integer height = 64
boolean bringtotop = true
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "LIQUIDACIONES DEL EMPLEADO"
boolean focusrectangle = false
end type

