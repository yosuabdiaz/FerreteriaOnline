---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---															   Stores Procedure Leer
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE Procedure Leer_Marca
	@innombre varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON -- No devuelve el recuento (el evio del mensaje por cada procedimiento almacenado)
		SET XACT_ABORT ON --Transact genera un error en tiempo de ejecución, entonces esta termina y se revierte.
		
			Select nombre 
			from Marca
			WHERE activo = 1
			
		END TRY
		BEGIN CATCH
			THROW 60500,'Error: No se ha podido guardar la accion en la bitacora',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Bodega 
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Select AL Bodega
				Select [descripcion], [ubicacion] 
				from Bodega
				WHERE descripcion = @indescripcion AND
					activo = 1
				
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido Leer la Bodega, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Ferreteria
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Select AL Ferreteria
				Select [descripcion], [ubicacion]
				FROM Ferreteria
				where descripcion = @indescripcion AND
						[activo] = 1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido Leer la Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Provedor
	@innombre VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Select AL Provedor
				SELECT [nombre], [telefono]
				 from Provedor
				 where nombre = @innombre AND
						[activo] = 1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido Leer el provedor, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Garantia
	@indescripcion VARCHAR(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Select AL Garantia
				Select [descripcion], [tiempo_garantia]
				from Garantia
				where descripcion = @indescripcion AND
						[activo] = 1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62504,'Error: No se ha podido Leer la Garantia, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Producto
	@incodigo int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Producto
				Select id_marca, id_provedor,codigo,precio,id_garantia,descripcion
				from Producto
					where codigo = @incodigo AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Producto, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Aspecto_Tecnico
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Producto
				SELECT [descripcion]
					from Aspecto_Tecnico
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Aspecto_Tecnico, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Utilidad
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Producto
				Select [descripcion]
					FROM Utilidad
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Utilidad, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_contraindicacion
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL contraindicacion
				Select [descripcion]
					FROM contraindicacion
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el contraindicacion, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Cuidado
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Cuidado
				Select [descripcion]
					FROM Cuidado
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Cuidado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Tipo_Empleado
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Tipo_Empleado
				Select [descripcion]
					FROM Tipo_Empleado
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Tipo_Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Amonestacion
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Amonestacion
				Select [descripcion]
					FROM Amonestacion
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Amonestacion, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Direccion
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Direccion
				Select [descripcion], [ubicacion]
					FROM Direccion
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer la Direccion, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Empleado
	@innombre varchar(50)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Empleado

				Select id_tipo_empleado, nombre,fecha_ingreso,carnet,salario,vacaciones
				FROM Empleado
					where nombre = @innombre AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Cliente
	@innombre varchar(50)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Cliente

				Select nombre, correo,puntuacion,metodo_Pago
				from Cliente
					where nombre = @innombre AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Cliente, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Departamento
	@innombre varchar(50)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Departamento

				Select nombre 
					FROM Departamento
					where nombre = @innombre AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Departamento, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Pasillo
	@innumero int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Pasillo
				Select numero 
				FROM Pasillo
					where numero = @innumero AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Pasillo, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Ruta
	@indescripcion varchar(200)
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Ruta
				Select descripcion
					FROM Ruta
					where descripcion = @indescripcion AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer la Ruta, por favor revise los datos',1;
		END CATCH
	END
GO
