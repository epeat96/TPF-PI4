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

event asigna_clave;call super::asigna_clave;
dw_detalles.accepttext()
dw_datos.accepttext()

int i

for i = dw_detalles.RowCount() to 1 step -1
	
	if isnull (dw_detalles.GetItemNumber(i,'concepto')) then
		dw_detalles.DeleteRow(i)
	end if
next

dw_datos.setitem(1,'monto_ips_patronal', dw_detalles.getitemnumber(1,'c_monto_ips_patronal'))
dw_datos.setitem(1,'monto_ips_obrero', dw_detalles.getitemnumber(1,'c_monto_ips_empleado'))
dw_datos.setitem(1,'total_aguinaldo', dw_detalles.getitemnumber(1,'c_monto_aguinaldo'))
dw_datos.setitem(1,'bonificacion_familiar', dw_detalles.getitemnumber(1,'c_monto_bonificacion_familiar'))
end event

type cb_salir from w_abm_cabecera_base`cb_salir within w_abm_liquidaciones_cbdt
integer x = 2633
integer y = 1752
end type

type cb_cancelar from w_abm_cabecera_base`cb_cancelar within w_abm_liquidaciones_cbdt
integer x = 1481
integer y = 1752
end type

event cb_cancelar::clicked;call super::clicked;dw_detalles.Object.c_monto_total.Expression = "0"
dw_detalles.Object.c_monto_ips_patronal.Expression = "0"
dw_detalles.Object.c_monto_ips_empleado.Expression = "0"
dw_detalles.Object.c_monto_aguinaldo.Expression = "0"
dw_detalles.Object.c_monto_bonificacion_familiar.Expression = "0"
end event

type cb_borrar_item from w_abm_cabecera_base`cb_borrar_item within w_abm_liquidaciones_cbdt
integer x = 1001
integer y = 1752
end type

event cb_borrar_item::clicked;long i
dw_detalles.AcceptText()

for i = dw_detalles.RowCount() to 1 step -1	
	if isnull (dw_detalles.GetItemNumber(i,'concepto')) then
		dw_detalles.DeleteRow(i)
	end if
next

dw_detalles.DeleteRow(dw_detalles.GetRow())
if dw_detalles.RowCount() = 0 then
	dw_detalles.InsertRow(0)
end if

// Volver a calcular los campos calculados
long ll_Fila
long ll_Concepto 
decimal ld_Monto
decimal ld_SumTotal,ld_SumIPS,ld_SumAguinaldo, ld_SumBonificacionFamiliar
long ll_max
string ls_Operacion
character lc_aplica_ips, lc_aplica_aguinaldo
decimal ld_PorcentajeObrero, ld_PorcentajePatronal

// Inicializar variables de suma
ld_SumTotal = 0
ld_SumIPS = 0
ld_SumAguinaldo = 0
// Obtener el número total de filas
ll_Max = dw_detalles.RowCount()
// Recorrer todas las filas
FOR ll_Fila = 1 TO ll_Max
	ll_Concepto = dw_detalles.GetItemNumber(ll_Fila, "concepto")
	ls_Operacion = dw_detalles.GetItemString(ll_Fila, "signo")
	ld_Monto = dw_detalles.GetItemDecimal(ll_Fila, "monto")
			
	SELECT * INTO :lc_aplica_ips,:lc_aplica_aguinaldo
	FROM DBA.ObtenerDatosDeConcepto(:ll_Concepto);
			
	IF ls_Operacion = 'S' THEN
				
		IF lc_aplica_ips = 's' THEN
			ld_SumIPS += ld_Monto
		END IF
		IF lc_aplica_aguinaldo = 's' THEN
			ld_SumAguinaldo += ld_Monto
		END IF
				
		ld_SumTotal += ld_Monto
	ELSEIF ls_Operacion = 'R' THEN
		IF lc_aplica_ips = 's' THEN
			ld_SumIPS -= ld_Monto
		END IF
		IF lc_aplica_aguinaldo = 's' THEN
			ld_SumAguinaldo -= ld_Monto
		END IF
		ld_SumTotal -= ld_Monto
	END IF
			
	IF ll_Concepto = 2 THEN
		ld_SumBonificacionFamiliar = ld_Monto
	END IF
NEXT
		
SELECT valor INTO :ld_PorcentajeObrero
FROM PARAMETROS
WHERE nombre = 'ips_obrero';
SELECT valor INTO :ld_PorcentajePatronal
FROM PARAMETROS
WHERE nombre = 'ips_patronal';
		
dw_detalles.Object.c_monto_total.Expression = String(ld_SumTotal)
dw_detalles.Object.c_monto_ips_patronal.Expression = String(ld_SumIPS*ld_PorcentajePatronal)
dw_detalles.Object.c_monto_ips_empleado.Expression = String(ld_SumIPS*ld_PorcentajeObrero)
dw_detalles.Object.c_monto_aguinaldo.Expression = String(ld_SumAguinaldo/12)
dw_detalles.Object.c_monto_bonificacion_familiar.Expression = String(ld_SumBonificacionFamiliar)




end event

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

event dw_detalles::itemchanged;call super::itemchanged;long ll_Fila
long ll_Concepto 
decimal ld_Monto
decimal ld_SumTotal,ld_SumIPS,ld_SumAguinaldo, ld_SumBonificacionFamiliar
long ll_max
string ls_Columna,ls_Operacion,ls_SQL
character lc_aplica_ips, lc_aplica_aguinaldo
decimal ld_PorcentajeObrero, ld_PorcentajePatronal

this.AcceptText()

ls_columna = this.GetColumnName()

CHOOSE CASE ls_columna
    CASE "concepto"
		this.Modify("monto.Protect=0")
		return
    CASE "fecha"
		return
    CASE ELSE
		// Inicializar variables de suma
		ld_SumTotal = 0
		ld_SumIPS = 0
		ld_SumAguinaldo = 0
		// Obtener el número total de filas
		ll_Max = this.RowCount()
		// Recorrer todas las filas
		FOR ll_Fila = 1 TO ll_Max
			ll_Concepto = this.GetItemNumber(ll_Fila, "concepto")
			ls_Operacion = this.GetItemString(ll_Fila, "signo")
			ld_Monto = this.GetItemDecimal(ll_Fila, "monto")
			
			SELECT * INTO :lc_aplica_ips,:lc_aplica_aguinaldo
			FROM DBA.ObtenerDatosDeConcepto(:ll_Concepto);
			
			IF ls_Operacion = 'S' THEN
				
				IF lc_aplica_ips = 's' THEN
					ld_SumIPS += ld_Monto
				END IF
				IF lc_aplica_aguinaldo = 's' THEN
					ld_SumAguinaldo += ld_Monto
				END IF
				
				ld_SumTotal += ld_Monto
			ELSEIF ls_Operacion = 'R' THEN
				IF lc_aplica_ips = 's' THEN
					ld_SumIPS -= ld_Monto
				END IF
				IF lc_aplica_aguinaldo = 's' THEN
					ld_SumAguinaldo -= ld_Monto
				END IF
				ld_SumTotal -= ld_Monto
			END IF
			
			IF ll_Concepto = 2 THEN
				ld_SumBonificacionFamiliar = ld_Monto
			END IF
			
		NEXT
		
		SELECT valor INTO :ld_PorcentajeObrero
		FROM PARAMETROS
		WHERE nombre = 'ips_obrero';
		SELECT valor INTO :ld_PorcentajePatronal
		FROM PARAMETROS
		WHERE nombre = 'ips_patronal';
		
		this.Object.c_monto_total.Expression = String(ld_SumTotal)
		this.Object.c_monto_ips_patronal.Expression = String(ld_SumIPS*ld_PorcentajePatronal)
		this.Object.c_monto_ips_empleado.Expression = String(ld_SumIPS*ld_PorcentajeObrero)
		this.Object.c_monto_aguinaldo.Expression = String(ld_SumAguinaldo/12)
		this.Object.c_monto_bonificacion_familiar.Expression = String(ld_SumBonificacionFamiliar)
      return
END CHOOSE
end event

event dw_detalles::nuevo_item;if key = keyenter! then
	this.insertRow(0)
	this.Modify("monto.Protect=1")
end if
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

