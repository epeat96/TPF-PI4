-- CantidadHijosMenores
BEGIN
    IF EXISTS(SELECT 1 FROM SYS.SYSPROCEDURE WHERE PROC_NAME = 'CantidadHijosMenores') THEN
        EXECUTE IMMEDIATE 'DROP FUNCTION CantidadHijosMenores';
    END IF;
END;

CREATE FUNCTION CantidadHijosMenores(@Legajo varchar(150))
RETURNS integer
BEGIN
    DECLARE @CantidadHijosMenores integer
    SELECT COUNT(1) INTO @CantidadHijosMenores
    FROM HIJOS
    WHERE HIJOS.LEGAJO = @Legajo 
    AND DATEDIFF(year, HIJOS.fecha_nacimiento, GETDATE()) < 18
    RETURN @CantidadHijosMenores
END;