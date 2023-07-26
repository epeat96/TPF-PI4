IF EXISTS (SELECT 1 FROM sys.sysprocedure WHERE proc_name = 'ObtenerLegajosEmpleadosNoLiquidadosEsteMes')
    THEN DROP PROCEDURE ObtenerLegajosEmpleadosNoLiquidadosEsteMes
END IF;

CREATE PROCEDURE ObtenerLegajosEmpleadosNoLiquidadosEsteMes()
BEGIN
    DECLARE @MesActual INT;
    DECLARE @AñoActual INT;

    SET @MesActual = MONTH(GETDATE());
    SET @AñoActual = YEAR(GETDATE());

    SELECT e.legajo 
    FROM empleados e
    LEFT JOIN liquidaciones l ON e.legajo = l.legajo
        AND MONTH(l.fecha_inicial) = @MesActual
        AND YEAR(l.fecha_inicial) = @AñoActual
    WHERE l.legajo IS NULL
    AND e.fecha_salida IS NULL;
END;