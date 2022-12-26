CREATE DATABASE homework6;
USE homework6;

# Задача № 1
SELECT converter_seconds(123456);
# Задача № 2

delimiter //
CREATE PROCEDURE even_numbers(i int, x int)
BEGIN
DECLARE result varchar (255);
SET result = '';
WHILE i <= x DO
	IF i % 2 = 0 THEN
		SET result = CONCAT(result,i,' | ');
	END IF; 
		SET i = i + 1;
END WHILE;
    SELECT result;
END//

CALL even_numbers(-11, 20);