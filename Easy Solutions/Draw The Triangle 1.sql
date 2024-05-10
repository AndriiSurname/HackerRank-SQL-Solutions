# Author: AndriiSurname
DELIMITER //
    CREATE PROCEDURE P(IN R INT)
    BEGIN
         DECLARE i INT DEFAULT R;
         WHILE i > 0 DO
                    SELECT REPEAT('* ', i);
                    SET i = i - 1;
         END WHILE;
    END //
DELIMITER ;

CALL P(20)
