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
						cantidad = @incantidad AND 
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
				WHERE id_producto = @id_productoand and
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
						d_ferreteria = @id_ferreteria AND
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
CREATE Procedure Eliminar_Departamento_x_Ferreteria
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

				--Eliminar AL Cliente_x_Ferreteria
				Update Departamento_x_Ferreteria
				set [activo] = 0
				where id_ferreteria=@id_ferreteria AND
					id_deparamento=@id_departamento AND
					id_experto= @id_empleado AND
					activo=1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar el Cliente_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Pasillo_x_Departamento
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
			SET @id_departamento_x_ferreteria = (SELECT id_departamento_x_ferreteria FROM [Departamento_x_Ferreteria] WHERE id_ferreteria = @id_ferreteria AND id_deparamento = @id_departamento and[activo] = 1)

			BEGIN TRAN
				--Eliminar AL Pasillo
				Update Pasillo_x_Departamento 
				set [activo] = 0
				where id_pasillo=@id_pasillo AND
					id_departamento_x_ferreteria = @id_departamento_x_ferreteria AND
					activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar la Pasillo, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Estante
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
			SET @id_departamento_x_ferreteria = (SELECT id_departamento_x_ferreteria FROM [Departamento_x_Ferreteria] WHERE id_ferreteria = @id_ferreteria AND id_deparamento = @id_departamento and[activo] = 1)
			SET @id_pasillo_x_departamento = (SELECT id_pasillo_x_departamento FROM [Pasillo_x_Departamento] WHERE id_pasillo = @id_pasillo AND id_departamento_x_ferreteria = @id_departamento_x_ferreteria and[activo] = 1)

			BEGIN TRAN
				--Eliminar AL Estante
				Update Estante 
				set [activo] = 0
				where numero=@innumero and
				id_pasillo_x_departamento = @id_pasillo_x_departamento AND
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Estante_x_Producto
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
			SET @id_departamento_x_ferreteria = (SELECT id_departamento_x_ferreteria FROM [Departamento_x_Ferreteria] WHERE id_ferreteria = @id_ferreteria AND id_deparamento = @id_departamento and[activo] = 1)
			SET @id_pasillo_x_departamento = (SELECT id_pasillo_x_departamento FROM [Pasillo_x_Departamento] WHERE id_pasillo = @id_pasillo AND id_departamento_x_ferreteria = @id_departamento_x_ferreteria and[activo] = 1)
			SET @id_estante = (SELECT id_estante FROM [Estante] WHERE numero = @innumero_estante AND id_pasillo_x_departamento = @id_pasillo_x_departamento and[activo] = 1)
			SET @id_producto = (SELECT id_producto FROM [Producto] WHERE codigo = @incodigo_producto and[activo] = 1)

			BEGIN TRAN
				--Eliminar AL Estante
				Update Producto_x_Estante 
				set [activo] = 0
				where 
				id_estante = @id_estante and
				id_producto = @id_producto and
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Venta
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
				--Eliminar AL Estante
				Update Venta 
				set [activo] = 0
				where id_cliente = @id_cliente AND
				id_ferreteria = @id_ferreteria AND
				id_vendedor = @id_vendedor AND 
				fecha= @infecha AND 
				monto = @inmonto and 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Vehiculo
	@inplaca_vehiculo  varchar(200),
	@indescripcion  varchar(200),
	@incapcidad_tanque_gasolina INT,
	@innombre_ferreteria  varchar(200),
	@incarnet_empleado  int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
					--Declaracion de variables
			DECLARE
				@id_vehiculo INT,
				@id_chofer INT,
				@id_flotilla int
						
						
			SET @id_chofer = (SELECT id_empleado FROM [Empleado] WHERE carnet=@incarnet_empleado  AND [Activo] = 1)
			SET @id_vehiculo = (SELECT id_vehiculo FROM [Vehiculo] WHERE placa=@inplaca_vehiculo  AND [Activo] = 1)
			SET @id_flotilla = (SELECT id_flotilla FROM [Flotilla] 
				INNER JOIN [Ferreteria] ON Ferreteria.descripcion = @innombre_ferreteria WHERE Flotilla.activo = 1)
			
			BEGIN TRAN
				--Eliminar AL Estante
				Update Vehiculo 
				set [activo] = 0
				where placa=@inplaca_vehiculo and
				descripcion = @indescripcion AND
				capcidad_tanque_gasolina = @incapcidad_tanque_gasolina AND 
				flotilla = @id_flotilla AND
				activos = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar la flotilla, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Flotilla
	@innombre_ferreteria  varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			declare
				@id_ferreteria INT
				
				
			SET @id_ferreteria = (SELECT id_ferreteria FROM [Ferreteria] WHERE descripcion=@innombre_ferreteria  AND [Activo] = 1)

			BEGIN TRAN
				--Eliminar AL Estante
				Update Flotilla 
				set [activo] = 0
				where id_ferreteria = @id_ferreteria AND 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar la flotilla, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Punto_x_Ruta
	@inubicacion_punto  GEOMETRY,
	@indescripcion_ruta varchar(200)

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			declare
				@id_ruta INT,
				@id_punto INT
				
			SET @id_ruta = (SELECT id_ruta FROM Ruta WHERE descripcion=@indescripcion_ruta  AND [Activo] = 1)
			SET @id_punto = (SELECT id_punto FROM Punto WHERE ubicacion=@inubicacion_punto  AND [Activo] = 1)

			BEGIN TRAN
				--Eliminar AL Estante
				Update Punto_x_Ruta 
				set [activo] = 0
				where id_ruta = @id_ruta and
				id_punto = @id_punto and
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar la flotilla, por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Eliminar_Entrega
	
	@inplaca_vehiculo  varchar(200),
	@indescripcion_ruta varchar(200),
	@infecha DATE

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

					--Declaracion de variables
			DECLARE
				@id_ruta INT,
				@id_vehiculo INT
			
			SET @id_ruta = (SELECT id_ruta FROM Ruta WHERE descripcion=@indescripcion_ruta  AND [Activo] = 1)
			SET @id_vehiculo = (SELECT id_vehiculo FROM [Vehiculo] WHERE placa=@inplaca_vehiculo  AND [Activo] = 1)

			BEGIN TRAN
				--Eliminar AL Estante
				Update Entrega 
				set [activo] = 0
				where id_ruta = @id_ruta AND
				id_vehiculo = @id_vehiculo AND
				fecha = @infecha AND
				activo =  1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Estante, por favor revise los datos',1;
		END CATCH
	END
GO