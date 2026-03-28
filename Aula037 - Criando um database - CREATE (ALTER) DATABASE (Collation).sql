
--DDL
CREATE DATABASE dbCartoon
GO

BACKUP DATABASE AdventureWorks2025
    TO DISK = '/var/opt/mssql/data/clone_estudo.bak';
GO

-- Agora, vamos "Restaurar" esse backup com o nome do seu novo banco
-- O SQL Server vai criar os arquivos físicos do dbCartoon copiando a estrutura do outro
RESTORE DATABASE dbCartoon
    FROM DISK = '/var/opt/mssql/data/clone_estudo.bak'
    WITH MOVE 'AdventureWorks2025' TO '/var/opt/mssql/data/dbCartoon.mdf',
    MOVE 'AdventureWorks2025_log' TO '/var/opt/mssql/data/dbCartoon.ldf',
    REPLACE;
GO

ALTER DATABASE dbCartoon
    COLLATE Latin1_General_BIN2
GO

--função do sistema
SELECT DATABASEPROPERTYEX('AdventureWorks2019', 'Collation') AS [Collate AdventureWorks2019],
       DATABASEPROPERTYEX('dbCartoon', 'Collation') AS [Collate dbCartoon]

-- views (visão) do sistema
SELECT * FROM sys.databases

SELECT * FROM AdventureWorks2025.Person.Person
WHERE FirstName = 'KEN'
