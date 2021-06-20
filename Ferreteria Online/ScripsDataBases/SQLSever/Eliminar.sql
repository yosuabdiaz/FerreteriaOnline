---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---															   Stores Procedure Eliminar
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE Procedure Eliminar_Marca
	@innombre varchar(20)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Marca
					set [activo] = 0
					where nombre = @innombre AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar la marca, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Bodega
	@indescripcion varchar(20)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Bodega
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar la marca, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Ferreteria
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Ferreteria
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar la ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Provedor
	@innombre varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Provedor
					set [activo] = 0
					where nombre = @innombre AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar la Provedor, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Garantia
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Garantia
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar la Garantia, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Producto
	@incodigo int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Producto
				Update Producto
					set [activo] = 0
					where codigo = @incodigo AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Aspecto_Tecnico
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Producto
				Update Aspecto_Tecnico
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Aspecto_Tecnico, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Utilidad
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Producto
				Update Utilidad
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Utilidad, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_contraindicacion
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL contraindicacion
				Update contraindicacion
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el contraindicacion, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Cuidado
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Cuidado
				Update Cuidado
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Cuidado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Tipo_Empleado
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Tipo_Empleado
				Update Tipo_Empleado
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Tipo_Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Amonestacion
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Amonestacion
				Update Amonestacion
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Amonestacion, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Empleado
	@innombre varchar(50)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Empleado

				Update Empleado
					set [activo] = 0
					where nombre = @innombre AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Cliente
	@innombre varchar(50)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Cliente

				Update Cliente
					set [activo] = 0
					where nombre = @innombre AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Cliente, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Direccion
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Direccion
				Update Direccion
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar la Direccion, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Departamento
	@innombre varchar(50)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Departamento

				Update Departamento
					set [activo] = 0
					where nombre = @innombre AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Departamento, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Pasillo
	@innumero int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Pasillo
				Update Pasillo
					set [activo] = 0
					where numero = @innumero AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Pasillo, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Ruta
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Ruta
				Update Ruta
					set [activo] = 0
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar la Ruta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Direccion_x_Cliente
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

				--Eliminar AL Cliente_x_Ferreteria
				Update Cliente_x_Ferreteria
					set [activo] = 0
				WHERE id_cliente=@id_cliente and 
						id_direccion = @id_direccion AND
						activo = 1
				

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido eliminar el Cliente_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Aspecto_Tecnico_x_Producto
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

				--Eliminar AL Aspecto_Tecnico_x_Producto
				Update Aspecto_Tecnico_x_Producto
					SET [activo] = 0
				WHERE id_producto = @id_producto AND
						id_aspecto_tecnico = @id_aspecto_tecnico AND
						activo = 1 
			
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido eliminar el Aspecto_Tecnico_x_Producto, por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Eliminar_Utilidad_x_Producto
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

				--Elimina AL Utilidad_x_Producto
				Update  Utilidad_x_Producto
					SET [activo] = 0
				WHERE id_producto = @id_producto AND 
					id_utilidad = @id_utilidad  AND 
					activo = 1
				
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar la Utilidad_x_Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Contraindicacion_x_Producto
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
				Update Contraindicacion_x_Producto
					SET [activo] = 0
					WHERE id_producto = @id_producto AND  
							id_contraindicacion = @id_contraindicacion AND 
							activo = 1
				
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar la Contraindicacion_x_Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Cuidado_x_Producto
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

				--Eliminar AL Cuidado_x_Producto
				Update  Cuidado_x_Producto
					SET [activo] = 0
				WHERE id_producto = @id_producto AND 
						id_cuidado = @id_cuidado AND 
						activo= 1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar el Cuidado_x_Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Inventario_Bodega
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

				--Eliminar AL Inventario_Bodega
				UPDATE Inventario_Bodega 
					SET [activo] = 0
				WHERE id_producto =@id_producto AND
						id_bodega =@id_bodega and
						cantidad = @incantidadad
						activo = 1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar el Inventario_Bodega, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Inventario_Ferreteria
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

				--Eliminar AL Inventario_Ferreteria
				UPDATE Inventario_Ferreteria
					SET [activo] = 0
				WHERE id_producto = @id_producto and
						id_ferreteria = @id_ferreteria and
						cantidad = @incantidad AND
						activo = 1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar el Inventario_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Amonestacion_x_Empleado
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

				--Eliminar AL Amonestacion_x_Empleado
				UPDATE  Amonestacion_x_Empleado
					SET [activo] = 0
				WHERE id_amonestacion = @id_amonestacion AND
						id_empleado = @id_empleado AND
						descripcion  = @indescripcion AND
						activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar la Amonestacion_x_Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Empleado_x_Ferreteria
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

				--Eliminar AL Empleado_x_Ferreteria
				UPDATE  Empleado_x_Ferreteria
					SET [activo] = 0
				WHERE id_empleado = @id_empleado and
						id_ferreteria = @id_ferreteria AND
						activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar el Empleado_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Cliente_x_Ferreteria
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

				--Eliminar  AL Cliente_x_Ferreteria
				UPDATE Cliente_x_Ferreteria
					SET [activo] = 0
				WHERE id_cliente = @id_cliente AND
						id_ferreteria= @id_ferreteria AND
						activo = 1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar  el Cliente_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO