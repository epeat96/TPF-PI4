IF EXISTS (SELECT 1 FROM sys.sysprocedure WHERE proc_name = 'ObtenerLegajosEmpleadosNoLiquidadosEsteMes')
    THEN DROP PROCEDURE ObtenerLegajosEmpleadosNoLiquidadosEsteMes
END IF;

CREATE PROCEDURE ObtenerLegajosEmpleadosNoLiquidadosEsteMes()
BEGIN
    DECLARE @MesActual INT;
    DECLARE @AnoActual INT;

    SET @MesActual = MONTH(GETDATE());
    SET @AnoActual = YEAR(GETDATE());

    SELECT e.legajo 
    FROM empleados e
    LEFT JOIN liquidaciones l ON e.legajo = l.legajo
        AND MONTH(l.fecha_inicial) = @MesActual
        AND YEAR(l.fecha_inicial) = @AnoActual
    WHERE l.legajo IS NULL
    AND e.fecha_salida IS NULL
    AND e.salario_actual IS NOT NULL;
END;
