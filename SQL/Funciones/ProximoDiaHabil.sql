IF EXISTS(SELECT 1 FROM SYS.SYSPROCEDURE WHERE PROC_NAME = 'ProximoDiaHabil')
BEGIN
    DROP FUNCTION ProximoDiaHabil
END

CREATE FUNCTION ProximoDiaHabil(@FechaInicio DATE)
RETURNS DATE
BEGIN
    DECLARE @ProximoDia DATE
    DECLARE @ProximaFechaEncontrada BIT
    SET @ProximaFechaEncontrada = 0
    SET @ProximoDia = @FechaInicio

    WHILE @ProximaFechaEncontrada = 0
    BEGIN
        -- Verifica si el día es sábado (6) o domingo (7)
        IF DATEPART(dw, @ProximoDia) IN (6, 7)
        BEGIN
            SET @ProximoDia = DATEADD(day, 1, @ProximoDia)
        END
        -- Verifica si el día es un día festivo
        ELSE IF EXISTS (SELECT 1 FROM dias_festivos WHERE fecha = @ProximoDia)
        BEGIN
            SET @ProximoDia = DATEADD(day, 1, @ProximoDia)
        END
        ELSE
        BEGIN
            SET @ProximaFechaEncontrada = 1
        END
    END

    RETURN @ProximoDia
END
