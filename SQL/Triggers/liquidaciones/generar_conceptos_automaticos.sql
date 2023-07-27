IF EXISTS(SELECT 1 FROM SYSTRIGGER WHERE TRIGGER_NAME = 'generar_conceptos_automaticos')
THEN 
    DROP TRIGGER generar_conceptos_automaticos;
END IF;

CREATE TRIGGER generar_conceptos_automaticos
AFTER INSERT ON liquidaciones 
REFERENCING NEW AS nueva_liquidacion 
FOR EACH ROW 
BEGIN 

    DECLARE @legajo VARCHAR(150)
    DECLARE @liquidacion INTEGER 
    DECLARE @salario_actual NUMERIC(12,2)

    SET @legajo = nueva_liquidacion.legajo
    SET @liquidacion = nueva_liquidacion.liquidacion

    SELECT e.salario_actual 
    INTO @salario_actual
    FROM EMPLEADOS e 
    WHERE e.legajo = @legajo

    nueva_liquidacion.monto_total = @salario_actual    

END;
