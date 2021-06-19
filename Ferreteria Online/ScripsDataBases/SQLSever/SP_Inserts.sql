USE Proyecto_Bases2;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---															   Stores Procedure Crear
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE Procedure Crear_Marca
	@innombre varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON -- No devuelve el recuento (el evio del mensaje por cada procedimiento almacenado)
		SET XACT_ABORT ON --Transact genera un error en tiempo de ejecuci�n, entonces esta termina y se revierte.
		
			INSERT INTO Marca(nombre)
			SELECT @innombre
		END TRY
		BEGIN CATCH
			THROW 60500,'Error: No se ha podido guardar la accion en la bitacora',1;
		END CATCH
	END
GO

CREATE Procedure Crear_Bodega 
	@indescripcion VARCHAR(200),
	@in_ubicacion geometry
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Bodega
				INSERT INTO Bodega([descripcion], [ubicacion], [activo])
				values (@indescripcion, @in_ubicacion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear la Bodega, por favor revise los datos',1;
		END CATCH
	END
GO


CREATE Procedure Crear_Ferreteria
	@indescripcion VARCHAR(200),
	@in_ubicacion geometry
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Ferreteria
				INSERT INTO Ferreteria([descripcion], [ubicacion], [activo])
				values (@indescripcion, @in_ubicacion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear la Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Provedor
	@innombre VARCHAR(200),
	@in_telefono int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Provedor
				INSERT INTO Provedor([nombre], [telefono], [activo])
				values (@innombre, @in_telefono,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear el provedor, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Garantia
	@indescripcion VARCHAR(200),
	@in_tiempo_garantia int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Garantia
				INSERT INTO Garantia([descripcion], [tiempo_garantia], [activo])
				values (@indescripcion, @in_tiempo_garantia,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear la Garantia, por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Crear_Producto
	@inid_Producto INT,
	@innombre_marca varchar(200),
	@incodigo int,
	@inprecio money,
	@in_foto IMAGE,
	@inid_garantia INT,
	@indescripcion varchar(200)

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			--Declaracion de variables
			Declare	
				@id_marca INT

			set @id_marca = (SELECT id_marca FROM [Marca] WHERE nombre=@innombre_marca  AND [Activo] = 1)
			
			BEGIN TRAN

				--INSERTA AL Producto
				INSERT INTO Producto(id_producto,id_marca,codigo,precio,id_garantia,descripcion,activo,foto)
				values (@inid_Producto,@id_marca,@incodigo,@inprecio,@inid_garantia,@indescripcion,1,@in_foto)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_ProductoDetalles
	@inid_Proveedor INT,
	@inid_aspectos_tecnicos INT,
	@inid_contraindicaciones INT,
	@inid_utilidades INT,
	@inid_cuidados INT

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			
			BEGIN TRAN

				--INSERTA AL Producto
				INSERT INTO Producto(id_provedor,id_aspecto_tecnicos,id_contraindicaciones,id_utilidades,id_cuidados,activo)
				values (@id_provedor,@inid_aspectos_tecnicos,@inid_contraindicaciones,@inid_utilidades,@inid_cuidados,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Producto, por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Crear_Aspecto_Tecnico 
	@indescripcion VARCHAR(MAX)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Aspecto_Tecnico
				INSERT INTO Aspecto_Tecnico([descripcion], [activo])
				values (@indescripcion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear el Aspecto_Tecnico, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Utilidad
	@indescripcion VARCHAR(MAX)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Utilidad
				INSERT INTO Utilidad([descripcion], [activo])
				values (@indescripcion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear la Utilidad, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_contraindicacion
	@indescripcion VARCHAR(MAX)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL contraindicacion
				INSERT INTO contraindicacion([descripcion], [activo])
				values (@indescripcion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear la contraindicacion, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Cuidado
	@indescripcion VARCHAR(MAX)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Cuidado
				INSERT INTO Cuidado([descripcion], [activo])
				values (@indescripcion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear el Cuidado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Tipo_Empleado
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Tipo_Empleado
				INSERT INTO Tipo_Empleado([descripcion], [activo])
				values (@indescripcion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear el Tipo_Empleado, por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Crear_Amonestacion
	@indescripcion VARCHAR(MAX)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Amonestacion
				INSERT INTO Amonestacion([descripcion], [activo])
				values (@indescripcion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear la Amonestacion, por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Crear_Direccion 
	@indescripcion VARCHAR(200),
	@in_ubicacion geometry
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Direccion
				INSERT INTO Direccion([descripcion], [ubicacion], [activo])
				values (@indescripcion, @in_ubicacion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear la Direccion, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Aspecto_Tecnico_x_Producto
	@innombre_producto varchar(200),
	@indescripcion_aspecto_tecnico varchar(200)

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			Declare
				@id_producto INT,
				@id_aspecto_tecnico INT

			set @id_producto = (SELECT id_producto FROM [Producto] WHERE descripcion=@innombre_producto  AND [Activo] = 1)
			set @id_aspecto_tecnico = (SELECT id_aspecto_tecnico FROM [Aspecto_Tecnico] WHERE descripcion=@indescripcion_aspecto_tecnico  AND [Activo] = 1)

			BEGIN TRAN

				--INSERTA AL Aspecto_Tecnico_x_Producto
				INSERT INTO Aspecto_Tecnico_x_Producto(id_producto, id_aspecto_tecnico,activo)
				values (@id_producto,@id_aspecto_tecnico ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Aspecto_Tecnico_x_Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Utilidad_x_Producto
	@innombre_producto varchar(200),
	@indescripcion_utilidad varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			Declare
				@id_producto INT,
				@id_utilidad INT

			set @id_producto = (SELECT id_producto FROM [Producto] WHERE descripcion=@innombre_producto  AND [Activo] = 1)
			set @id_utilidad = (SELECT id_utilidad FROM [Utilidad] WHERE descripcion=@indescripcion_utilidad  AND [Activo] = 1)


			BEGIN TRAN

				--INSERTA AL Utilidad_x_Producto
				INSERT INTO Utilidad_x_Producto(id_producto, id_utilidad,activo)
				values (@id_producto,@id_utilidad ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear la Utilidad_x_Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Contraindicacion_x_Producto
	@innombre_producto varchar(200),
	@indescripcion_contraindicacion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			Declare
			@id_producto INT,
			@id_contraindicacion INT

			set @id_producto = (SELECT id_producto FROM [Producto] WHERE descripcion=@innombre_producto  AND [Activo] = 1)
			set @id_contraindicacion = (SELECT id_contraindicacion FROM [Contraindicacion] WHERE descripcion=@indescripcion_contraindicacion  AND [Activo] = 1)

			BEGIN TRAN

				--INSERTA AL Contraindicacion_x_Producto
				INSERT INTO Contraindicacion_x_Producto(id_producto, id_contraindicacion,activo)
				values (@id_producto,@id_contraindicacion ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear la Contraindicacion_x_Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Cuidado_x_Producto
	@innombre_producto varchar(200),
	@indescripcion_cuidado varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			Declare
			@id_producto INT,
			@id_cuidado INT

			set @id_producto = (SELECT id_producto FROM [Producto] WHERE descripcion=@innombre_producto  AND [Activo] = 1)
			set @id_cuidado = (SELECT id_cuidado FROM [Cuidado] WHERE descripcion=@indescripcion_cuidado  AND [Activo] = 1)

			BEGIN TRAN

				--INSERTA AL Cuidado_x_Producto
				INSERT INTO Cuidado_x_Producto(id_producto, id_cuidado,activo)
				values (@id_producto,@id_cuidado ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Cuidado_x_Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Inventario_Bodega
	@innombre_producto varchar(200),
	@innombre_bodega varchar(200),
	@incantidad int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			Declare
				@id_producto INT,
				@id_bodega INT

			set @id_producto = (SELECT id_producto FROM [Producto] WHERE descripcion=@innombre_producto  AND [Activo] = 1)
			set @id_bodega = (SELECT id_bodega FROM [Bodega] WHERE descripcion=@innombre_bodega  AND [Activo] = 1)


			BEGIN TRAN

				--INSERTA AL Inventario_Bodega
				INSERT INTO Inventario_Bodega(id_producto, id_bodega,cantidad,activo)
				values (@id_producto,@id_bodega,@incantidad ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Inventario_Bodega, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Inventario_Ferreteria
	@innombre_producto varchar(200),
	@innombre_ferreteria varchar(200),
	@incantidad int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			Declare
			@id_producto INT,
			@id_ferreteria INT

				set @id_producto = (SELECT id_producto FROM [Producto] WHERE descripcion=@innombre_producto  AND [Activo] = 1)
				set @id_ferreteria = (SELECT id_ferreteria FROM [Ferreteria] WHERE descripcion=@innombre_ferreteria  AND [Activo] = 1)
			
			BEGIN TRAN

				--INSERTA AL Inventario_Ferreteria
				INSERT INTO Inventario_Ferreteria(id_producto, id_ferreteria,cantidad,activo)
				values (@id_producto,@id_ferreteria,@incantidad ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Inventario_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Empleado
	@indescripcion_tipo_empleado varchar(200),
	@innombre_empleado varchar(50),
	@inFechaIngreso date,
	@incarnet int,
	@insalario money,
	@invacaciones int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			Declare
				@id_tipo_empleado INT

			set @id_tipo_empleado = (SELECT id_tipo_empleado FROM [Tipo_Empleado] WHERE descripcion=@indescripcion_tipo_empleado  AND [Activo] = 1)
			BEGIN TRAN

				--INSERTA AL Empleado
				INSERT INTO Empleado(id_tipo_empleado, nombre,fecha_ingreso,carnet,salario,vacaciones,activo)
				values (@id_tipo_empleado,@innombre_empleado,@inFechaIngreso,@incarnet,@insalario,@invacaciones ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Amonestacion_x_Empleado
	@innombre_amonestacion varchar(200),
	@incarnet_empleado int,
	@indescripcion  varchar(200),
	@infecha date

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			Declare
				@id_amonestacion INT,
				@id_empleado INT

			set @id_amonestacion = (SELECT id_amonestacion FROM [Amonestacion] WHERE descripcion=@innombre_amonestacion  AND [Activo] = 1)
			set @id_empleado = (SELECT id_empleado FROM [Empleado] WHERE carnet=@incarnet_empleado  AND [Activo] = 1)

			BEGIN TRAN

				--INSERTA AL Amonestacion_x_Empleado
				INSERT INTO Amonestacion_x_Empleado(id_amonestacion, id_empleado,descripcion,activo,fecha)
				values (@id_amonestacion,@id_empleado,@indescripcion ,1,@infecha)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear la Amonestacion_x_Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Empleado_x_Ferreteria
	@incarnet_empleado int,
	@innombre_ferreteria  varchar(200)

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			declare
				@id_ferreteria INT,
				@id_empleado INT

			set @id_ferreteria = (SELECT id_ferreteria FROM [Ferreteria] WHERE descripcion=@innombre_ferreteria  AND [Activo] = 1)
			set @id_empleado = (SELECT id_empleado FROM [Empleado] WHERE carnet=@incarnet_empleado  AND [Activo] = 1)

			BEGIN TRAN

				--INSERTA AL Empleado_x_Ferreteria
				INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria,activo)
				values (@id_empleado,@id_ferreteria ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Empleado_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Cliente
	@innombre varchar(200),
	@inpuntuacion int,
	@incorreo  varchar(200),
	@metodo_Pago int

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Cliente
				INSERT INTO Cliente(nombre, correo,puntuacion,metodo_Pago,activo)
				values (@innombre,@inpuntuacion,@incorreo,@metodo_Pago ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Cliente, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Cliente_x_Ferreteria
	@innombre_cliente  varchar(200),
	@innombre_ferreteria  varchar(200)

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			declare
				@id_ferreteria INT,
				@id_cliente INT

			set @id_ferreteria = (SELECT id_ferreteria FROM [Ferreteria] WHERE descripcion=@innombre_ferreteria  AND [Activo] = 1)
			set @id_cliente = (SELECT id_cliente FROM [Cliente] WHERE nombre=@innombre_cliente  AND [Activo] = 1)

			BEGIN TRAN

				--INSERTA AL Cliente_x_Ferreteria
				INSERT INTO Cliente_x_Ferreteria(id_cliente, id_ferreteria,activo)
				values (@id_cliente,@id_ferreteria ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Cliente_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Direccion_x_Cliente
	@innombre_cliente  varchar(200),
	@inubicacion  geometry

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			declare
				@id_cliente INT,
				@id_direccion INT

			set @id_direccion = (SELECT id_direccion FROM [Direccion] WHERE ubicacion=@inubicacion  AND [Activo] = 1)
			set @id_cliente = (SELECT id_cliente FROM [Cliente] WHERE nombre=@innombre_cliente  AND [Activo] = 1)

			BEGIN TRAN

				--INSERTA AL Cliente_x_Ferreteria
				INSERT INTO Cliente_x_Ferreteria(id_cliente, id_direccion,activo)
				values (@id_cliente,@id_direccion ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Cliente_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO