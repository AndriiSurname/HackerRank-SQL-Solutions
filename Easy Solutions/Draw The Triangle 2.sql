# Author: AndriiSurname
DELIMITER //
CREATE PROCEDURE P(IN R INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= R DO
            SELECT REPEAT('* ', i);
            SET i = i + 1;
    END WHILE;
    END //
DELIMITER ;

CALL P(20);
