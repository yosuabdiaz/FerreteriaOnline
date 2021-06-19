ALTER DATABASE FerreteriaOnline
ADD FILEGROUP Trimestre1
GO

ALTER DATABASE FerreteriaOnline
ADD FILEGROUP Trimestre2
GO

ALTER DATABASE FerreteriaOnline
ADD FILEGROUP Trimestre3
GO

ALTER DATABASE FerreteriaOnline
ADD FILEGROUP Trimestre4
GO


ALTER DATABASE [FerreteriaOnline]
    ADD FILE 
    (
    NAME = [PartTri1],
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FerreteriaOnline1.ndf',
        SIZE = 3072 KB, 
        MAXSIZE = UNLIMITED, 
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [Trimestre1]

ALTER DATABASE [FerreteriaOnline]
    ADD FILE 
    (
    NAME = [PartTri2],
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FerreteriaOnline2.ndf',
        SIZE = 3072 KB, 
        MAXSIZE = UNLIMITED, 
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [Trimestre2]

ALTER DATABASE [FerreteriaOnline]
    ADD FILE 
    (
    NAME = [PartTri3],
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FerreteriaOnline3.ndf',
        SIZE = 3072 KB, 
        MAXSIZE = UNLIMITED, 
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [Trimestre3]


ALTER DATABASE [FerreteriaOnline]
    ADD FILE 
    (
    NAME = [PartTri4],
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FerreteriaOnline4.ndf',
        SIZE = 3072 KB, 
        MAXSIZE = UNLIMITED, 
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [Trimestre4]

SELECT 
p.partition_number AS PartitionNumber,
f.name AS PartitionFilegroup, 
p.rows AS NumberOfRows 
FROM sys.partitions p
JOIN sys.destination_data_spaces dds ON p.partition_number = dds.destination_id
JOIN sys.filegroups f ON dds.data_space_id = f.data_space_id
WHERE OBJECT_NAME(OBJECT_ID) = 'Venta'