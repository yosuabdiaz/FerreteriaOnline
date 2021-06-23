USE FerreteriaOnline;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---															   Stores Procedure Actualizar
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE Procedure Actualizar_Marca
	@inid_marca INT,
	@innombre varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Bodega
				Update Marca
					set nombre = @innombre
					where id_marca = @inid_marca AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar la marca, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Bodega
	@inid_bodega int,
	@indescripcion VARCHAR(200),
	@in_ubicacion geometry
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Bodega
				Update Bodega
					set [descripcion] = @indescripcion, [ubicacion]=@in_ubicacion
					where id_bodega = @inid_bodega AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar la bodega , por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Ferreteria
	@inid_ferreteria int,
	@indescripcion VARCHAR(200),
	@in_ubicacion geometry
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Bodega
				Update Ferreteria
					set [descripcion] = @indescripcion, [ubicacion]=@in_ubicacion
					where id_ferreteria = @inid_ferreteria AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar la ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Provedor
	@inid_provedor int,
	@innombre VARCHAR(200),
	@in_telefono int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Bodega
				Update Proveedor
					set [nombre] = @innombre,[telefono]=@in_telefono
					where id_provedor = @inid_provedor AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar la Provedor, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Garantia
	@inid_garantia int,
	@indescripcion VARCHAR(200),
	@in_tiempo_garantia int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Bodega
				Update Garantia
					set [descripcion]=@indescripcion, [tiempo_garantia] = @in_tiempo_garantia
					where id_garantia = @inid_garantia AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar la Garantia, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Producto
	@incodigo int,
	@innombre_marca varchar(200),
	@inprecio int,
	@ingarantia_descripcion varchar(200),
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			Declare	
				@id_marca INT,
				@id_garantia INT

			set @id_marca = (SELECT id_marca FROM [Marca] WHERE nombre=@innombre_marca  AND [Activo] = 1)
			set @id_garantia = (SELECT id_garantia FROM [Garantia] WHERE descripcion=@ingarantia_descripcion  AND [Activo] = 1)

			BEGIN TRAN
				--Actualizario AL Producto
				Update Producto
					set id_marca=@id_marca,codigo=@incodigo,precio=@inprecio,id_garantia=@id_garantia,descripcion=@indescripcion
					where codigo = @incodigo AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Aspecto_Tecnico
	@inid_aspecto_tecnico int,
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Producto
				Update Aspecto_Tecnico
					set [descripcion] = @indescripcion
					where id_aspecto_tecnico = 	@inid_aspecto_tecnico 
 AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Aspecto_Tecnico, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Utilidad
	@inid_utilidad int,
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Producto
				Update Utilidad
					set [descripcion] = @indescripcion
					where id_utilidad = @inid_utilidad AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Utilidad, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_contraindicacion
	@inid_contraindicacion int,
	@indescripcion VARCHAR(200)

AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL contraindicacion
				Update contraindicacion
					set [descripcion] = @indescripcion
					where id_contraindicacion = @inid_contraindicacion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el contraindicacion, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Cuidado
	@inid_cuidado int ,
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Cuidado
				Update Cuidado
					set [descripcion] = @indescripcion
					where id_cuidado = @inid_cuidado AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Cuidado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Inventario_Bodega
	@inid_inventario_bodega int,
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

				--Actualizar AL Inventario_Bodega
				UPDATE Inventario_Bodega 
					SET id_producto=@id_producto, id_bodega=@id_bodega, cantidad=@incantidad
				WHERE id_inventario_bodega = @inid_inventario_bodega AND 
						activo = 1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Actualizar el Inventario_Bodega, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Inventario_Ferreteria
	@inid_inventario_ferreteria int,
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

				--Actualizar AL Inventario_Ferreteria
				UPDATE Inventario_Ferreteria
					SET id_producto=@id_producto,id_ferreteria=@id_ferreteria,cantidad=@incantidad
				WHERE id_inventario_ferreteria = @inid_inventario_ferreteria and
					activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Actualizar el Inventario_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Tipo_Empleado
	@inid_tipo_empleado int,
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Tipo_Empleado
				Update Tipo_Empleado
					set [descripcion]=@indescripcion
					where id_tipo_empleado = @inid_tipo_empleado AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Tipo_Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Empleado
	@inid_empleado int,
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
				--Actualizario AL Empleado

				Update Empleado
					set id_tipo_empleado=@id_tipo_empleado, nombre=@innombre_empleado,fecha_ingreso=@inFechaIngreso,carnet=@incarnet,salario=@insalario,vacaciones=@invacaciones
					where id_empleado = @inid_empleado AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Amonestacion
	@inid_amonestacion int,
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Amonestacion
				Update Amonestacion
					set [descripcion]=@indescripcion
					where id_amonestacion = @inid_amonestacion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Amonestacion, por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Actualizar_Amonestacion_x_Empleado
	@inid_amonestacion_x_empleado int,
	@innombre_amonestacion varchar(200),
	@incarnet_empleado int,
	@indescripcion  varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
		Declare
				@id_amonestacion INT,
				@id_empleado INT

			set @id_amonestacion = (SELECT id_amonestacion FROM [Amonestacion] WHERE descripcion=@innombre_amonestacion  AND [Activo] = 1)
			set @id_empleado = (SELECT id_empleado FROM [Empleado] WHERE carnet=@incarnet_empleado  AND [Activo] = 1)

			BEGIN TRAN

				--Actualizar AL Amonestacion_x_Empleado
				UPDATE  Amonestacion_x_Empleado
					SET id_amonestacion =@id_amonestacion , id_empleado=@id_empleado,descripcion=@indescripcion
				WHERE id_amonestacion_x_empleado = @inid_amonestacion_x_empleado and
						activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Actualizar la Amonestacion_x_Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Empleado_x_Ferreteria
	@inid_empleado_x_ferreteria int,
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

				--Actualizar AL Empleado_x_Ferreteria
				UPDATE  Empleado_x_Ferreteria
					SET id_empleado=@id_empleado, id_ferreteria=@id_ferreteria
				WHERE id_empleado_x_ferreteria = @inid_empleado_x_ferreteria AND
						activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Actualizar el Empleado_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Departamento
	@inid_departamento int,
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Departamento

				Update Departamento
					set nombre= @indescripcion
					where id_departamento = @inid_departamento AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Departamento, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Pasillo
	@inid_pasillo int,
	@innumero INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Pasillo
				Update Pasillo
					set numero =@innumero 
					where id_pasillo = @inid_pasillo AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Pasillo, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Departamento_x_Ferreteria
	@inid_departamento_x_ferreteria int,
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

				--Actualizar AL Departamento_x_Ferreteria
				Update Departamento_x_Ferreteria
				set id_ferreteria=@id_ferreteria, id_departamento=@id_departamento,id_experto=@id_empleado
				where id_departamento_x_ferreteria=@inid_departamento_x_ferreteria AND
					activo=1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Actualizar el Departamento_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Pasillo_x_Departamento
	@inid_pasillo_x_departamento INT,
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
				--Actualizar AL Pasillo_x_Departamento
				Update Pasillo_x_Departamento 
				set id_pasillo =@id_pasillo ,id_departamento_x_ferreteria = @id_departamento_x_ferreteria
				where id_pasillo_x_departamento=@inid_pasillo_x_departamento and
					activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar la Pasillo_x_Departamento, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Estante
	@inid_estante INT,
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
				--Actualizar AL Estante
				Update Estante 
				set numero=@innumero,id_pasillo_x_departamento=id_pasillo_x_departamento
				where id_estante=@inid_estante and
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Producto_x_Estante
	@inid_producto_x_estante INT,
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
				--Actualizar AL Producto_x_Estante
				Update Producto_x_Estante 
				set id_estante =@id_estante ,id_producto = @id_producto
				where 
				id_producto_x_estante = @inid_producto_x_estante and
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Producto_x_Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Tipo_Venta
	@inid_tipo_venta int,
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Actualizario AL Tipo_venta
				Update Tipo_venta
					set [descripcion] = @indescripcion
					where id_tipo_venta = @inid_tipo_venta AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Tipo_venta, por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Actualizar_Venta
	@inid_venta INT,
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
				--Actualizar AL Venta
				Update Venta 
				set id_cliente=@id_cliente,id_ferreteria=@id_ferreteria,id_vendedor=@id_vendedor,fecha=@infecha,monto=@inmonto
				where id_venta = @inid_venta AND 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Detalle_Venta
	@inid_detalle_venta INT,
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
				--Actualizar AL Detalle_Venta
				Update Detalle_Venta 
				set id_producto=id_producto,id_venta=@id_venta,cantidad=@incantidad_producto
				where id_detalle_venta = @inid_detalle_venta AND 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Detalle_Venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Actualizar_Lista_Deseos
	@inid_lista INT,
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
				--Actualizar AL Lista_Deseos
				Update Lista_Deseos 
				set id_cliente=@id_cliente,id_vendedor=@id_vendedor,fecha=@infecha,entregado=entregado
				where id_lista = @inid_lista AND 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Actualizar el Lista_Deseos, por favor revise los datos',1;
		END CATCH
	END
GO
