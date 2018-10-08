/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
DECLARE 
@i INT, 
@a INT, 
@count INT, 
@output VARCHAR(6000)

SET @i = 1 
SET @output = '' 

WHILE (@i <= 1000) 
	BEGIN SET @count = 0
    SET @a = 1

    WHILE (@a <= @i)
        BEGIN
            IF (@i % @a = 0) 
                SET @count = @count + 1

            SET @a = @a + 1
        END

    IF (@count = 2) 
        SET @output = @output + CAST(@i as varchar(10)) +'&'
        SET @i = @i + 1
END 
SET @output = substring(@output, 1,(len(@output)-1)) 
PRINT @output
