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

    SET @legajo = nueva_liquidacion.legajo;
    SET @liquidacion = nueva_liquidacion.liquidacion;

    SELECT salario_actual 
    INTO @salario_actual
    FROM EMPLEADOS
    WHERE legajo = @legajo;

    UPDATE liquidaciones
    SET monto_total = @salario_actual+DBA.CalcularBonificacionFamiliar(@salario_actual),
        monto_ips_patronal = DBA.CalcularIPSPatronal(@salario_actual),
        monto_ips_obrero = DBA.CalcularIPSObrero(@salario_actual),
        bonificacion_familiar = DBA.CalcularBonificacionFamiliar(@legajo),
        total_aguinaldo = (@salario_actual+DBA.CalcularBonificacionFamiliar(@salario_actual))/12  
    WHERE liquidacion = nueva_liquidacion.liquidacion; 

END;
