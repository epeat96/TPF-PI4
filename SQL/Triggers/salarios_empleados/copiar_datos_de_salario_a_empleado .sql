IF EXISTS(SELECT 1 FROM SYSTRIGGER WHERE TRIGGER_NAME = 'copiar_datos_de_salario_a_empleado')
THEN 
    DROP TRIGGER copiar_datos_de_salario_a_empleado;
END IF;

CREATE TRIGGER copiar_datos_de_salario_a_empleado 
AFTER INSERT ON salarios_empleados 
REFERENCING NEW AS nuevo_salario 
FOR EACH ROW 
BEGIN 

    DECLARE @cantidad_salarios INT;
    DECLARE @fecha_fin DATE;

    SELECT COUNT(*) INTO @cantidad_salarios FROM salarios_empleados WHERE legajo = nuevo_salario.legajo;
    SELECT fecha_fin INTO @fecha_fin FROM nuevo_salario;

    -- Si es el primer salario del empleado, actualizar el salario inicial
    IF @cantidad_salarios = 1
    THEN
        UPDATE empleados 
        SET salario_inicial = nuevo_salario.monto
        WHERE legajo = nuevo_salario.legajo;
    END IF;

    -- Actualizar salario actual, cargo actual y área actual
    UPDATE empleados 
    SET salario_actual  = nuevo_salario.monto,
        cargo_actual    = nuevo_salario.cargo,
        area_actual     = nuevo_salario.area 
    WHERE empleados.legajo = nuevo_salario.legajo;

    -- Si tiene fecha de finalizacion y el motivo es desvinculacion, copiar fecha_fin a fecha_salida del empleado
    IF @fecha_fin IS NOT NULL AND nuevo_salario.motivo <> 3
    THEN
        UPDATE empleados
        SET fecha_salida = nuevo_salario.fecha_fin
        WHERE empleados.legajo = nuevo_salario.legajo;
    END IF;

END;
