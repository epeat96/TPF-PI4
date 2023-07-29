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
    DECLARE @monto_total NUMERIC(12,2);
    DECLARE @monto_para_ips NUMERIC(12,2);
    DECLARE @monto_para_aguinaldo NUMERIC(12,2);
    DECLARE @salario_aplica_ips CHARACTER;
    DECLARE @salario_aplica_aguinaldo CHARACTER
    DECLARE @bonificacion_familiar_aplica_ips CHARACTER;
    DECLARE @bonificacion_familiar_aplica_aguinaldo CHARACTER

    SET @legajo = nueva_liquidacion.legajo;
    SET @liquidacion = nueva_liquidacion.liquidacion;

    SELECT salario_actual 
    INTO @salario_actual
    FROM EMPLEADOS
    WHERE legajo = @legajo;


    SELECT aplica_ips,aplica_aguinaldo INTO @salario_aplica_ips,@salario_aplica_aguinaldo
    FROM CONCEPTOS
    WHERE concepto = 1;

    SELECT aplica_ips,aplica_aguinaldo INTO @bonificacion_familiar_aplica_ips,@bonificacion_familiar_aplica_aguinaldo
    FROM CONCEPTOS
    WHERE concepto = 2;

    @monto_para_ips = 0;
    
    IF @salario_aplica_ips = 's' THEN
        @monto_para_ips = @monto_para_ips + @salario_actual;
    END IF;

    IF @bonificacion_familiar_aplica_ips = 's' THEN
        @monto_para_ips = @monto_para_ips + DB.CalcularBonificacionFamiliar(@legajo);
    END IF;

    SET @monto_total = (@salario_actual + DBA.CalcularBonificacionFamiliar(@legajo));

    UPDATE liquidaciones
    SET monto_total = @monto_total,
        monto_ips_patronal = DBA.CalcularIPSPatronal(@monto_para_ips),
        monto_ips_obrero = DBA.CalcularIPSObrero(@monto_para_ips),
        bonificacion_familiar = DBA.CalcularBonificacionFamiliar(@legajo),
        total_aguinaldo = @monto_total/12  
    WHERE liquidacion = nueva_liquidacion.liquidacion;

    -- Insertar la liquidacion automatica del Salario 
    INSERT INTO "DBA"."LIQUIDACIONES_DETALLES" ("LIQUIDACION","CONCEPTO","MONTO","SIGNO","FECHA")
    VALUES(nueva_liquidacion.liquidacion,1,@salario_actual,'S',GetDate());
    -- Insertar la liquidacion automatica de la bonificacion familiar
    INSERT INTO "DBA"."LIQUIDACIONES_DETALLES" ("LIQUIDACION","CONCEPTO","MONTO","SIGNO","FECHA")
    VALUES(nueva_liquidacion.liquidacion,2,DBA.CalcularBonificacionFamiliar(@legajo),'S',GetDate());

END;
