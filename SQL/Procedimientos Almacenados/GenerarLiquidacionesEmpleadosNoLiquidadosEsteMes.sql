IF EXISTS(SELECT 1 FROM SYS.SYSPROCEDURE WHERE proc_name = 'GenerarLiquidacionesEmpleadosNoLiquidadosEsteMes' AND creator = USER_ID('DBA'))
BEGIN
    DROP PROCEDURE "DBA"."GenerarLiquidacionesEmpleadosNoLiquidadosEsteMes";
END;

CREATE PROCEDURE "DBA"."GenerarLiquidacionesEmpleadosNoLiquidadosEsteMes"()
BEGIN
    DECLARE @PrimerDiaDelMes DATE;
    DECLARE @UltimoDiaDelMes DATE;
    DECLARE @PrimerDiaDelMesSiguiente DATE;
    DECLARE @DiaPago DATE;
    DECLARE @Legajo INT;
    DECLARE @Consulta VARCHAR(500);
    
    SET @PrimerDiaDelMes = DATEADD(DAY, (DAY(GETDATE()) * -1) + 1, GETDATE());
    SET @UltimoDiaDelMes = DATEADD(DAY, -1, DATEADD(MONTH, 1, @PrimerDiaDelMes));
    SET @PrimerDiaDelMesSiguiente = DATEADD(MONTH, 1, @PrimerDiaDelMes);
    SET @DiaPago = "DBA"."ProximoDiaHabil"(@PrimerDiaDelMesSiguiente);
    
    SET @Consulta = 'CALL "DBA"."ObtenerLegajosEmpleadosNoLiquidadosEsteMes"()';
    BEGIN
        DECLARE ListaLegajos CURSOR USING @Consulta;
        OPEN ListaLegajos;
        lp: LOOP
            FETCH NEXT ListaLegajos INTO @Legajo;
            IF SQLCODE = 100 THEN
                LEAVE lp;
            END IF;
            INSERT INTO "DBA"."LIQUIDACIONES" ("LEGAJO","FECHA_INICIAL","FECHA_FINAL","FECHA_PAGO","ACTIVO")
            VALUES (@Legajo, @PrimerDiaDelMes, @UltimoDiaDelMes, @DiaPago, 'S');
        END LOOP;
        CLOSE ListaLegajos;
    END;
END;