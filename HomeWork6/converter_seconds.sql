CREATE DEFINER=`Vladimir`@`%` FUNCTION `converter_seconds`(seconds INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE d CHAR(3);
	DECLARE h, m, s CHAR(2);
	DECLARE result VARCHAR(100);
	SET d = CAST(FLOOR(seconds/60/60/24) AS CHAR(3));
	SET h = CAST(FLOOR(MOD(seconds/60/60/24,1)*24) AS CHAR(2));	
	SET m = CAST(FLOOR(MOD(MOD(seconds/60/60/24,1)*24,1)*60) AS CHAR(2));
	SET s = CAST(ROUND(MOD(MOD(MOD(seconds/60/60/24,1)*24,1)*60,1)*60) AS CHAR(2));
	SET result = CONCAT(d,' days ',h,' hours ',m,' minutes ',s, ' seconds');
RETURN result;
END