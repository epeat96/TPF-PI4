-- CalcularIPSObrero
BEGIN
    IF EXISTS(SELECT 1 FROM SYS.SYSPROCEDURE WHERE PROC_NAME = 'CalcularIPSObrero') THEN
        EXECUTE IMMEDIATE 'DROP FUNCTION CalcularIPSObrero';
    END IF;
END;

CREATE FUNCTION CalcularIPSObrero(@Monto NUMERIC(12,2))
RETURNS NUMERIC(12,2)
BEGIN
    DECLARE @PorcentajeIPSObrero NUMERIC(5,2);
    SELECT CAST(valor AS NUMERIC(5,2)) INTO @PorcentajeIPSObrero FROM parametros WHERE nombre = 'ips_obrero';
    RETURN @Monto * @PorcentajeIPSObrero;
END;
