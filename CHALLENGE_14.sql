CREATE PROCEDURE SEMANA(@FECHA DATE) AS 
BEGIN
	PRINT DATENAME(DW,@FECHA)
END
--
EXEC SEMANA '02-02-2022'
--
DROP PROCEDURE SEMANA

-- DEVUELVE EL DIA DE LA SEMANA DE LA FECHA ENVIADA COMO PARÁMETRO.