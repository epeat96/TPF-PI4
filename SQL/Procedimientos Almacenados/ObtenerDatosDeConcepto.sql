IF EXISTS (SELECT 1 FROM sys.sysprocedures WHERE name = 'ObtenerDatosDeConcepto')
BEGIN
    DROP PROCEDURE ObtenerDatosDeConcepto;
END;

CREATE PROCEDURE ObtenerDatosDeConcepto
    @Concepto INT
AS
BEGIN
    SELECT AplicaIps, AplicaAguinaldo
    FROM Conceptos
    WHERE Id = @Concepto;
END;