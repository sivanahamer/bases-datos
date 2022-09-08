# Uso avanzado de SQL

Podemos utilizar SQL para hacer distintos tipos de consultas. Sin embargo, podemos hacer consultas mucho más complejas en SQL por medio de JOINs, SELECTs anidados, triggers y otras funcionalidades adicionales. Además, se va a discutir sobre problemas de seguridad en SQL por medio de inyección de código.

## Presentaciones

- [SQL Avanzado](https://github.com/sivanahamer/bases-datos/blob/main/05-SQL_avanzado/pres/05-sql.pdf)
- [SQL Injection](https://github.com/sivanahamer/bases-datos/blob/main/05-SQL_avanzado/pres/05.5-sql-injection.pdf)

## Material suplemental

Se recomienda ver los siguientes materiales para repasar el contenido visto en clases.

### General

- Capítulo 5. S. Hamer. Bases de Datos (Notas).
- Capítulo 7. R. Elmasri and S. Navathe, Fundamentals of database systems, 7th ed. Pearson, 2016.

### Procedimientos almacenados

- [Create a stored procedure](https://docs.microsoft.com/en-us/sql/relational-databases/stored-procedures/create-a-stored-procedure)
- [Stored procedures in sql server](https://www.youtube.com/watch?v=Qu3E-oncF3g)
- [Stored procedures with output parameters](https://www.youtube.com/watch?v=bldBshxuhMk)
- [Stored procedure output parameters or return values](https://www.youtube.com/watch?v=st8RnNg_LLA)
- [Advantages of stored procedures](https://www.youtube.com/watch?v=uDcVd4vUU3s)
- Capítulo 10.4. R. Elmasri and S. Navathe, Fundamentals of database systems, 7th ed. Pearson, 2016.
- [A Basic Guide to SQL Server Stored Procedures](https://www.sqlservertutorial.net/sql-server-stored-procedures/basic-sql-server-stored-procedures/)
- [SQL Server Stored Procedure Parameters](https://www.sqlservertutorial.net/sql-server-stored-procedures/sql-server-stored-procedure-parameters/)
- [Stored Procedure Output Parameters](https://www.sqlservertutorial.net/sql-server-stored-procedures/stored-procedure-output-parameters/)

### Funciones

- [CREATE FUNCTION (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-function-transact-sql)
- [Scalar user defined functions in sql server](https://www.youtube.com/watch?v=OV5CquR1Svo)
- [Inline table valued functions in sql server](https://www.youtube.com/watch?v=hs4mReAzESc)
- [Multi statement table valued functions in sql server](https://www.youtube.com/watch?v=EgYW7tsNP6g)
- [Important concepts related to functions in sql server](https://www.youtube.com/watch?v=WNoTgfg3mGc)
- [SQL Server Scalar Functions](https://www.sqlservertutorial.net/sql-server-user-defined-functions/sql-server-scalar-functions/)
- [SQL Server Table-valued Functions](https://www.sqlservertutorial.net/sql-server-user-defined-functions/sql-server-table-valued-functions/)

### Triggers

- [CREATE TRIGGER (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-trigger-transact-sql)
- [DML triggers in sql server](https://www.youtube.com/watch?v=k0S4P-a6d5w)
- [After update trigger](https://www.youtube.com/watch?v=P_BREQy6bOo)
- [Instead of insert trigger](https://www.youtube.com/watch?v=MseKoztMpoo)
- [Instead of update triggers in sql server](https://www.youtube.com/watch?v=pkQk1Z834Rc)
- [Instead of delete triggers in sql server](https://www.youtube.com/watch?v=ZEcHC_o6OFw)
- Capítulo 26.1. R. Elmasri and S. Navathe, Fundamentals of database systems, 7th ed. Pearson, 2016.
- [SQL Server Triggers](https://www.sqlservertutorial.net/sql-server-triggers/)
- [SQL Server CREATE TRIGGER](https://www.sqlservertutorial.net/sql-server-triggers/sql-server-create-trigger/)
- [SQL Server INSTEAD OF Trigger](https://www.sqlservertutorial.net/sql-server-triggers/sql-server-instead-of-trigger/)

### Atributos derivados

Para hacer un atributo derivado, se puede utilizar Views, Triggers o una columna computada. La elección depende del caso y lo que se ocupa hacer.

- [Specify Computed Columns in a Table](https://docs.microsoft.com/en-us/sql/relational-databases/tables/specify-computed-columns-in-a-table)