-- Vari�veis do cursor
DECLARE @FirstName VARCHAR(50),
		@MiddleName VARCHAR(50),
		@LastName VARCHAR(50);

-- Criando um cursor
DECLARE cur_NomeCompleto CURSOR 
FOR SELECT top 10 FirstName, MiddleName, LastName FROM Person.Person;

-- Abrindo o cursor
OPEN cur_NomeCompleto;

-- Selecionar os dados
FETCH NEXT FROM cur_NomeCompleto
INTO @FirstName, @MiddleName, @LastName;

-- Itera��o entre os dados retornados pelo cursor
WHILE @@FETCH_STATUS = 0
BEGIN
	
	SELECT @FirstName, @MiddleName, @LastName;

	-- Pegar os pr�ximos dados
	FETCH NEXT FROM cur_NomeCompleto
	INTO @FirstName, @MiddleName, @LastName;
END

SELECT @FirstName, @MiddleName, @LastName;

-- Fechando e desalocando o cursor da mem�ria
CLOSE cur_NomeCompleto;
DEALLOCATE cur_NomeCompleto;