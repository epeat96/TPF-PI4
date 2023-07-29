IF EXISTS (SELECT 1 FROM sys.sysprocedure WHERE proc_name = 'ObtenerDatosDeConcepto')
    THEN DROP PROCEDURE ObtenerDatosDeConcepto;
END IF;

CREATE PROCEDURE ObtenerDatosDeConcepto(@Concepto INT)
BEGIN
    SELECT aplica_ips, aplica_aguinaldo
    FROM Conceptos
    WHERE concepto = @Concepto;
END;