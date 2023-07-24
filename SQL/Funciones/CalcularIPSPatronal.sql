-- CalcularIPSPatronal
IF EXISTS(SELECT 1 FROM sys.sysobjects WHERE name = 'CalcularIPSPatronal' AND type = 'FN')
BEGIN
    DROP FUNCTION CalcularIPSPatronal
END

CREATE FUNCTION CalcularIPSPatronal(monto NUMERIC(12,2))
RETURNS NUMERIC(12,2)
BEGIN
   DECLARE @ValorPatronal NUMERIC(12,2);
   SELECT valor INTO @ValorPatronal FROM parametros WHERE nombre = 'ips_patronal';
   RETURN monto * @ValorPatronal;
END
