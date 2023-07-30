IF EXISTS(SELECT event_name FROM SYS.SYSEVENT WHERE event_name = 'prueba')
THEN 
    DROP EVENT prueba;
END IF;

CREATE EVENT prueba
SCHEDULE prueba_sche
BETWEEN '00:00AM' AND '03:00AM' ON (1)
HANDLER
BEGIN
END