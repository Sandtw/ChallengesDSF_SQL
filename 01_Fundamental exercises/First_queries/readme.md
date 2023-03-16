## Bases de datos a usar y eu carga en SQL SERVER

1. ./Datasets/Install_HR
    > Ejecutar el script Install_HR (Tecla F5)
2. ./Datasets/Install_Northwind
    > Ejecutar el script Install_Northwind (Tecla F5)
3. ./Datasets/AdventureWorks2017.bak
    
    Al ser un backup requiere ejecutar previamente un restore 

    ``` sql

    RESTORE DATABASE AdventureWork2017
    FROM DISK='<Ruta_del_AdventureWorks2017.bak>'
    WITH REPLACE, RECOVERY,
    MOVE 'AdventureWorks2017' TO '<Ruta_de_una_carpeta_dentro_de_MSSQL>', 
    MOVE 'AdventureWorks2017_log' TO '<Ruta_de_una_carpeta_dentro_de_MSSQL>'; 

    ```

    Ejemplo: 

    
    ``` sql

    RESTORE DATABASE AdventureWork2017
    FROM DISK='D:\DATA\Sandro\SQL Server\SQL Server Intermedio\Sesion1\Documentos\Install_BD\AdventureWorks2017.bak'
    WITH REPLACE, RECOVERY,
    MOVE 'AdventureWorks2017' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\AdventureWorks2017.mdf', -- Archivo de datos de la BD
    MOVE 'AdventureWorks2017_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\AdventureWorks2017_log.ldf'; -- Archivo de registro de transacciones, para recuperar la BD a un estado anterior

    ```

Una vez lista las base de datos en su entorno local de SQL Server.
Resolver las preguntas incluidas en el archivo `Queries_Iniciales.txt`

