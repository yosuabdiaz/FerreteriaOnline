USE FerreteriaOnline;
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
		SET XACT_ABORT ON --Transact genera un error en tiempo de ejecución, entonces esta termina y se revierte.
		
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
	@innombre_marca varchar(200),
	@incodigo int,
	@inprecio int,
	@ingarantia_descripcion varchar(200),
	@indescripcion varchar(200)

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			--Declaracion de variables
			Declare	
				@id_marca INT,
				@id_garantia INT

			set @id_marca = (SELECT id_marca FROM [Marca] WHERE nombre=@innombre_marca  AND [Activo] = 1)
			set @id_garantia = (SELECT id_garantia FROM [Garantia] WHERE descripcion=@ingarantia_descripcion  AND [Activo] = 1)
			
			BEGIN TRAN

				--INSERTA AL Producto
				INSERT INTO Producto(id_marca,codigo,precio,id_garantia,descripcion,activo)
				values (@id_marca,@incodigo,@inprecio,@id_garantia,@indescripcion,1)

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
	@indescripcion VARCHAR(200)
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
	@indescripcion VARCHAR(200)
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
	@indescripcion VARCHAR(200)
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
	@indescripcion VARCHAR(200)
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
CREATE Procedure Crear_Amonestacion
	@indescripcion VARCHAR(200)
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
CREATE Procedure Crear_Amonestacion_x_Empleado
	@innombre_amonestacion varchar(200),
	@incarnet_empleado int,
	@indescripcion  varchar(200)

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
				INSERT INTO Amonestacion_x_Empleado(id_amonestacion, id_empleado,descripcion,activo)
				values (@id_amonestacion,@id_empleado,@indescripcion ,1)

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
CREATE Procedure Crear_Departamento
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Insertar AL Departamento
				INSERT INTO Departamento (nombre,activo)
				values (@indescripcion, 1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear el Departamento, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Pasillo
	@innumero INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Insertar AL Pasillo
				INSERT INTO Pasillo (numero,activo)
				values (@innumero, 1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear la Pasillo, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Departamento_x_Ferreteria
	@innombre_ferreteria  varchar(200),
	@indescripdepartamento  varchar(200),
	@incarnet_empleado int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			declare
				@id_ferreteria INT,
				@id_departamento INT,
				@id_empleado INT

			set @id_ferreteria = (SELECT id_ferreteria FROM [Ferreteria] WHERE descripcion=@innombre_ferreteria  AND [Activo] = 1)
			set @id_departamento = (SELECT id_departamento FROM [Departamento] WHERE nombre=@indescripdepartamento  AND [Activo] = 1)
			SET @id_empleado = (SELECT id_empleado FROM [Empleado] WHERE carnet=@incarnet_empleado  AND [Activo] = 1)


			BEGIN TRAN

				--INSERTA AL Cliente_x_Ferreteria
				INSERT INTO Departamento_x_Ferreteria(id_ferreteria, id_departamento,id_experto,activo)
				values (@id_ferreteria,@id_departamento , @id_empleado ,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido crear el Cliente_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Crear_Pasillo_x_Departamento
	@innumero_pasillo INT,
	@indescripdepartamento  varchar(200),
	@innombre_ferreteria  varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			--Declaracion de variables
			declare
				@id_pasillo INT,
				@id_departamento INT,
				@id_ferreteria INT,
				@id_departamento_x_ferreteria INT
				
			set @id_pasillo = (SELECT id_pasillo FROM [Pasillo] WHERE numero=@innumero_pasillo  AND [Activo] = 1)
			SET @id_ferreteria = (SELECT id_ferreteria FROM [Ferreteria] WHERE descripcion=@innombre_ferreteria  AND [Activo] = 1)
			SET @id_departamento = (SELECT id_departamento FROM [Departamento] WHERE nombre=@indescripdepartamento  AND [Activo] = 1)
			SET @id_departamento_x_ferreteria = (SELECT id_departamento_x_ferreteria FROM [Departamento_x_Ferreteria] WHERE id_ferreteria = @id_ferreteria AND id_departamento = @id_departamento and[activo] = 1)

			BEGIN TRAN
				--Insertar AL Pasillo
				INSERT INTO Pasillo_x_Departamento (id_pasillo,id_departamento_x_ferreteria,activo)
				values (@id_pasillo,@id_departamento_x_ferreteria, 1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear la Pasillo, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Estante
	@innumero INT,
	@innumero_pasillo INT,
	@indescripdepartamento  varchar(200),
	@innombre_ferreteria  varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			declare
				@id_pasillo INT,
				@id_departamento INT,
				@id_ferreteria INT,
				@id_departamento_x_ferreteria INT,
				@id_pasillo_x_departamento INT
				
			set @id_pasillo = (SELECT id_pasillo FROM [Pasillo] WHERE numero=@innumero_pasillo  AND [Activo] = 1)
			SET @id_ferreteria = (SELECT id_ferreteria FROM [Ferreteria] WHERE descripcion=@innombre_ferreteria  AND [Activo] = 1)
			SET @id_departamento = (SELECT id_departamento FROM [Departamento] WHERE nombre=@indescripdepartamento  AND [Activo] = 1)
			SET @id_departamento_x_ferreteria = (SELECT id_departamento_x_ferreteria FROM [Departamento_x_Ferreteria] WHERE id_ferreteria = @id_ferreteria AND id_departamento = @id_departamento and[activo] = 1)
			SET @id_pasillo_x_departamento = (SELECT id_pasillo_x_departamento FROM [Pasillo_x_Departamento] WHERE id_pasillo = @id_pasillo AND id_departamento_x_ferreteria = @id_departamento_x_ferreteria and[activo] = 1)

			BEGIN TRAN
				--Insertar AL Estante
				INSERT INTO Estante (numero,id_pasillo_x_departamento,activo)
				values (@innumero,@id_pasillo_x_departamento, 1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear el Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Estante_x_Producto
	@innumero_estante INT,
	@incodigo_producto INT,
	@innumero_pasillo INT,
	@indescripdepartamento  varchar(200),
	@innombre_ferreteria  varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			declare
				@id_pasillo INT,
				@id_departamento INT,
				@id_ferreteria INT,
				@id_departamento_x_ferreteria INT,
				@id_pasillo_x_departamento INT,
				@id_estante INT,
				@id_producto INT
				
			set @id_pasillo = (SELECT id_pasillo FROM [Pasillo] WHERE numero=@innumero_pasillo  AND [Activo] = 1)
			SET @id_ferreteria = (SELECT id_ferreteria FROM [Ferreteria] WHERE descripcion=@innombre_ferreteria  AND [Activo] = 1)
			SET @id_departamento = (SELECT id_departamento FROM [Departamento] WHERE nombre=@indescripdepartamento  AND [Activo] = 1)
			SET @id_departamento_x_ferreteria = (SELECT id_departamento_x_ferreteria FROM [Departamento_x_Ferreteria] WHERE id_ferreteria = @id_ferreteria AND id_departamento = @id_departamento and[activo] = 1)
			SET @id_pasillo_x_departamento = (SELECT id_pasillo_x_departamento FROM [Pasillo_x_Departamento] WHERE id_pasillo = @id_pasillo AND id_departamento_x_ferreteria = @id_departamento_x_ferreteria and[activo] = 1)
			SET @id_estante = (SELECT id_estante FROM [Estante] WHERE numero = @innumero_estante AND id_pasillo_x_departamento = @id_pasillo_x_departamento and[activo] = 1)
			SET @id_producto = (SELECT id_producto FROM [Producto] WHERE codigo = @incodigo_producto and[activo] = 1)

			BEGIN TRAN
				--Insertar AL Estante
				INSERT INTO Producto_x_Estante (id_estante,id_producto,activo)
				values (@id_estante,@id_producto, 1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear el Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Tipo_Venta
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--INSERTA AL Tipo_Venta
				INSERT INTO Tipo_Venta([descripcion], [activo])
				values (@indescripcion,1)

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido crear el Tipo_Venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Venta
	@innombre_cliente  varchar(200),
	@incarnet_empleado  int,
	@innombre_ferreteria  varchar(200),
	@infecha	date,
	@inmonto	money
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			declare
				@id_ferreteria INT,
				@id_vendedor INT,
				@id_cliente INT
				
			SET @id_ferreteria = (SELECT id_ferreteria FROM [Ferreteria] WHERE descripcion=@innombre_ferreteria  AND [Activo] = 1)
			SET @id_vendedor = (SELECT id_empleado FROM [Empleado] WHERE carnet=@incarnet_empleado  AND [Activo] = 1)
			SET @id_cliente = (SELECT id_cliente FROM [Cliente] WHERE nombre = @innombre_cliente and[activo] = 1)

			BEGIN TRAN
				--Insertar AL Estante
				INSERT INTO Venta (id_cliente,id_ferreteria,id_vendedor,fecha,monto,activo)
				values (@id_cliente,@id_ferreteria,@id_vendedor,@infecha,@inmonto, 1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear el Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Detalle_Venta
	@innombre_cliente  varchar(200),
	@incarnet_empleado  int,
	@innombre_ferreteria  varchar(200),
	@infecha	date,
	@inmonto	MONEY,
    @incodigo_producto int,
	@incantidad_producto int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			declare
				@id_producto INT,
				@id_venta INT
				
			SET @id_venta = (SELECT id_venta 
							FROM [Venta] 
							INNER JOIN Empleado ON Empleado.carnet=@incarnet_empleado
							INNER JOIN [Cliente] ON Cliente.nombre = @innombre_cliente
							INNER JOIN [Ferreteria] ON Ferreteria.descripcion=@innombre_ferreteria
							WHERE Venta.activo = 1 AND Venta.fecha = @infecha AND Venta.monto =  @inmonto)
			SET @id_producto = (SELECT id_producto FROM [Producto] WHERE codigo=@incodigo_producto  AND [Activo] = 1)
			

			BEGIN TRAN
				--Insertar AL Detalle_Venta
				INSERT INTO Detalle_Venta (id_producto,id_venta,cantidad,activo)
				values (@id_producto,@id_venta,@incantidad_producto, 1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear el Detalle_Venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Lista_Deseos
	@innombre_cliente  varchar(200),
	@incarnet_empleado  int,
	@infecha	date,
	@inestado	bit
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			declare
				@id_vendedor INT,
				@id_cliente INT
				
			SET @id_vendedor = (SELECT id_empleado FROM [Empleado] WHERE carnet=@incarnet_empleado  AND [Activo] = 1)
			SET @id_cliente = (SELECT id_cliente FROM [Cliente] WHERE nombre = @innombre_cliente and[activo] = 1)

			BEGIN TRAN
				--Insertar AL Lista_Deseos
				INSERT INTO Lista_Deseos (id_cliente,id_vendedor,fecha,entregado,activo)
				values (@id_cliente,@id_vendedor,@infecha,	@inestado, 1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear el Lista_Deseos, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Detalle_Deseos
	@innombre_cliente  varchar(200),
	@incarnet_empleado  int,
	@innombre_ferreteria  varchar(200),
	@infecha	date,
	@inmonto	MONEY,
    @incodigo_producto int,
	@incantidad_producto int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			declare
				@id_producto INT,
				@id_lista INT
				
			SET @id_lista = (SELECT id_lista 
							FROM [Lista_Deseos] 
							INNER JOIN Empleado ON Empleado.carnet=@incarnet_empleado
							INNER JOIN [Cliente] ON Cliente.nombre = @innombre_cliente
							WHERE Lista_Deseos.activo = 1 AND Lista_Deseos.fecha = @infecha );
			SET @id_producto = (SELECT id_producto FROM [Producto] WHERE codigo=@incodigo_producto  AND [Activo] = 1)
			

			BEGIN TRAN
				--Insertar AL Detalle_Lista_Deseos
				INSERT INTO Detalle_Lista_Deseos (id_producto,id_lista,cantidad,activo)
				values (@id_producto,@id_lista,@incantidad_producto, 1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear el Detalle_Lista_Deseos, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Crear_Vacaciones_disfrutadas
	@incarnet_empleado  int,
	@infechainicio	date,
	@infechafin	date,
	@indias int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			DECLARE
				@id_empleado INT

			SET @id_empleado = (SELECT id_empleado FROM [Empleado] WHERE carnet = @incarnet_empleado  AND [Activo] = 1)


			BEGIN TRAN
				--Insertar AL Vacaciones_disfrutadas
				INSERT INTO Vacaciones_disfrutadas (id_empleado,fecha_inicio,fecha_final,dias,activo)
				values (@id_empleado,@infechainicio,@infechafin, @indias,1)
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido crear el Vacaciones_disfrutadas, por favor revise los datos',1;
		END CATCH
	END
GO