-- CalcularIPSPatronal
BEGIN
    IF EXISTS(SELECT 1 FROM SYS.SYSPROCEDURE WHERE PROC_NAME = 'CalcularIpsPatronal') THEN
        EXECUTE IMMEDIATE 'DROP FUNCTION CalcularIpsPatronal';
    END IF;
END;

CREATE FUNCTION CalcularIpsPatronal(@Monto NUMERIC(12,2))
RETURNS NUMERIC(12,2)
BEGIN
    DECLARE @PorcentajeIpsPatronal NUMERIC(5,2);
    SELECT valor INTO @PorcentajeIpsPatronal FROM parametros WHERE nombre = 'ips_patronal';
    RETURN @Monto * @PorcentajeIpsPatronal;
END;
