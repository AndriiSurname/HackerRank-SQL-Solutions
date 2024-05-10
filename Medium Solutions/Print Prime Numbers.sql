# Author: AndriiSurname
DELIMITER //
CREATE PROCEDURE prime_numbers(IN input INT)
BEGIN 
    DECLARE i INT DEFAULT 2;
    
    DROP TEMPORARY TABLE IF EXISTS numbers;
    CREATE TEMPORARY TABLE numbers(numb INT);
    
    WHILE i <= input DO
        INSERT INTO numbers VALUES(i);
        SET i = i + 1;
    END WHILE;
    
    DROP TEMPORARY TABLE IF EXISTS temp_numbers;
    CREATE TEMPORARY TABLE temp_numbers AS SELECT * FROM numbers;
    
    SELECT GROUP_CONCAT(numb SEPARATOR '&') AS primes
    FROM(
    SELECT numb 
    FROM numbers
    WHERE (
    SELECT COUNT(*) 
    FROM temp_numbers n
    WHERE n.numb < numbers.numb
         AND numbers.numb % n.numb = 0
    ) = 0
    ) AS prime_numbers;
END //
DELIMITER ;

CALL prime_numbers(1000);
