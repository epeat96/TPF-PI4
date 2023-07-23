IF EXISTS(SELECT 1 FROM SYSTRIGGER WHERE TRIGGER_NAME = 'verificar_salario_minimo')
THEN 
    DROP TRIGGER verificar_salario_minimo;
END IF;

CREATE TRIGGER verificar_salario_minimo 
BEFORE INSERT ON salarios_empleados 
REFERENCING NEW AS nuevo_salario 
FOR EACH ROW 
BEGIN 

    DECLARE @salario_minimo NUMERIC(12,2);

    SELECT CAST(valor AS NUMERIC(12,2)) INTO @salario_minimo FROM parametros WHERE nombre = 'salario_minimo';

    -- Si el salario nuevo es activo y es menor que el salario mínimo, lanzar un error
    IF (nuevo_salario.fecha_fin IS NULL AND nuevo_salario.monto < @salario_minimo)
    THEN 
        RAISERROR 20000 'El monto del salario activo no puede ser menor que el salario mínimo';
    END IF;

    -- Si el salario nuevo es activo, finalizar los salarios activos anteriores del mismo empleado
    IF nuevo_salario.fecha_fin IS NULL 
    THEN 
        UPDATE salarios_empleados 
        SET fecha_fin = CURRENT DATE
        WHERE legajo = nuevo_salario.legajo AND fecha_fin IS NULL;
    END IF;

END;