IF EXISTS(SELECT 1 FROM SYSTRIGGER WHERE TRIGGER_NAME = 'generar_conceptos_automaticos')
THEN 
    DROP TRIGGER generar_conceptos_automaticos;
END IF;

CREATE TRIGGER generar_conceptos_automaticos
AFTER INSERT ON liquidaciones 
REFERENCING NEW AS nueva_liquidacion 
FOR EACH ROW 
BEGIN 

    DECLARE @legajo VARCHAR(150);
    DECLARE @liquidacion INTEGER ;
    DECLARE @salario_actual NUMERIC(12,2);
    DECLARE @monto_total NUMERIC(12,2)

    SET @legajo = nueva_liquidacion.legajo;
    SET @liquidacion = nueva_liquidacion.liquidacion;

    SELECT salario_actual 
    INTO @salario_actual
    FROM EMPLEADOS
    WHERE legajo = @legajo;

    SET @monto_total = @salario_actual+DBA.CalcularBonificacionFamiliar(@salario_actual)

    UPDATE liquidaciones
    SET monto_total = @monto_total,
        monto_ips_patronal = DBA.CalcularIPSPatronal(@monto_total),
        monto_ips_obrero = DBA.CalcularIPSObrero(@monto_total),
        monto_ips_obrero = DBA.CalcularBonificacionFamiliar(@legajo),
        total_aguinaldo = @monto_total/12  
    WHERE liquidacion = nueva_liquidacion.liquidacion 

END;
