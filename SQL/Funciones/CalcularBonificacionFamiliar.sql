-- CalcularBonificacionFamiliar
BEGIN
    IF EXISTS(SELECT 1 FROM SYS.SYSPROCEDURE WHERE PROC_NAME = 'CalcularBonificacionFamiliar') THEN
        EXECUTE IMMEDIATE 'DROP FUNCTION CalcularBonificacionFamiliar';
    END IF;
END;

CREATE FUNCTION CalcularBonificacionFamiliar( @Legajo varchar(150))
RETURNS NUMERIC(12,2)
BEGIN
    DECLARE @PorcentajeBonificacionFamiliar NUMERIC(5,2);
    DECLARE @Monto AS Numeric(12,2)
    SELECT CAST(valor AS NUMERIC(5,2)) INTO @PorcentajeBonificacionFamiliar FROM parametros WHERE nombre = 'ips_obrero';
    SELECT monto_actual INTO @Monto FROM empleados WHERE Legajo = @Legajo
    RETURN @Monto * @PorcentajeBonificacionFamiliar * CantidadHijosMenores(@Legajo);
END;