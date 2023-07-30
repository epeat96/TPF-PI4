IF EXISTS(SELECT event_name FROM SYS.SYSEVENT WHERE event_name = 'EventGenerarCabeceras')
THEN 
    DROP EVENT EventGenerarCabeceras;
END IF;

CREATE EVENT EventGenerarCabeceras
SCHEDULE GenererCabecerasSchedule
BETWEEN '00:00AM' AND '03:00AM' ON (1)
HANDLER
BEGIN 
    DECLARE @fechaProximaHabil DATE;
    DECLARE @dia INTEGER;
    SET @fechaProximaHabil = ProximoDiaHabil(CAST(GETDATE() AS DATE));
    SET @dia = DAY(@fechaProximaHabil);
    IF @fechaProximaHabil = CAST(GETDATE() AS DATE) THEN
        CALL GenerarCabecerasLiquidacionParaEmpleadosNoLiquidados()
    ELSE
        -- Verificar si el evento a crear ya existe 
        IF EXISTS (SELECT event_name FROM SYS.SYSEVENT WHERE event_name = 'EjecutarProcedimientoHabil') THEN
            DROP EVENT EjecutarProcedimiento_Habil
        END IF;
        -- Crear un evento para el dia habil mas proximo
        EXECUTE IMMEDIATE
        'create event EjecutarProcedimientoHabil
        schedule ProcedimientoHabilSchedule
        between ''00:00AM'' and ''03:00AM''
        START DATE '''+CAST(@fechaProximaHabil AS VARCHAR)+'''
        at all handler
        begin
        call DBA.GenerarCabecerasLiquidacionParaEmpleadosNoLiquidados()
        end'
    end if
END