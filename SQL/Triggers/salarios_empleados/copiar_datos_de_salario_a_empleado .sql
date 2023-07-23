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

    SELECT COUNT(*) INTO @cantidad_salarios FROM salarios_empleados WHERE legajo = nuevo_salario.legajo;

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
    WHERE empleados.legajo = nuevo_salario.legajo

END;
