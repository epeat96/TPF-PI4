-- CalcularIPSPatronal
BEGIN
    IF EXISTS(SELECT 1 FROM SYS.SYSPROCEDURE WHERE PROC_NAME = 'CalcularIPSPatronal') THEN
        EXECUTE IMMEDIATE 'DROP FUNCTION CalcularIPSPatronal';
    END IF;
END;

CREATE FUNCTION CalcularIPSPatronal(@Monto NUMERIC(12,2))
RETURNS NUMERIC(12,2)
BEGIN
    DECLARE @PorcentajeIPSPatronal NUMERIC(5,2);
    SELECT CAST(valor AS NUMERIC(5,2)) INTO @PorcentajeIPSPatronal FROM parametros WHERE nombre = 'ips_patronal';
    RETURN @Monto * @PorcentajeIPSPatronal;
END;
