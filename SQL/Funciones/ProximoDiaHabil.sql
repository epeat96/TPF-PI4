BEGIN
    IF EXISTS(SELECT 1 FROM SYS.SYSPROCEDURE WHERE PROC_NAME = 'ProximoDiaHabil') THEN
        EXECUTE IMMEDIATE 'DROP FUNCTION ProximoDiaHabil';
    END IF;
END;

CREATE FUNCTION ProximoDiaHabil(@Fecha DATE)
RETURNS DATE
BEGIN
    DECLARE @ProximoDia DATE;
    DECLARE @ProximaFechaEncontrada BIT;

    SET @ProximoDia = @Fecha;
    SET @ProximaFechaEncontrada = 0;
    
    WHILE @ProximaFechaEncontrada = 0 LOOP
        -- Si el día de la semana es sábado (6), domingo (7) o existe esta fecha en la tabla de dias festivos, avanzamos al próximo día
        IF DAYNAME(@ProximoDia) IN ('Saturday', 'Sunday') OR EXISTS (SELECT 1 FROM dias_festivos WHERE fecha = @ProximoDia) THEN
            SET @ProximoDia = DATEADD(DAY, 1, @ProximoDia);
        ELSE
            SET @ProximaFechaEncontrada = 1;
        END IF;
    END LOOP;
    
    RETURN @ProximoDia;
END;
