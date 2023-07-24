-- CalcularIPSObrero
BEGIN
    IF EXISTS(SELECT 1 FROM SYS.SYSPROCEDURE WHERE PROC_NAME = 'CalcularIpsObrero') THEN
        EXECUTE IMMEDIATE 'DROP FUNCTION CalcularIpsObrero';
    END IF;
END;

CREATE FUNCTION CalcularIpsObrero(@Monto NUMERIC(12,2))
RETURNS NUMERIC(12,2)
BEGIN
    DECLARE @PorcentajeIpsObrero NUMERIC(5,2);
    SELECT valor INTO @PorcentajeIpsObrero FROM parametros WHERE nombre = 'ips_obrero';
    RETURN @Monto * @PorcentajeIpsObrero;
END;
