USE FerreteriaOnline;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---															   Stores Procedure Eliminar
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE Procedure Eliminar_Marca
	@inid_marca int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Marca
					set [activo] = 0
					where id_marca = @inid_marca AND
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
	@inid_bodega int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Bodega
					set [activo] = 0
					where id_bodega = @inid_bodega AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar la bodega , por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Ferreteria
	@inid_ferreteria int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Ferreteria
					set [activo] = 0
					where id_ferreteria = @inid_ferreteria AND
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
	@inid_provedor int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Proveedor
					set [activo] = 0
					where id_provedor = @inid_provedor AND
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
	@inid_garantia int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Bodega
				Update Garantia
					set [activo] = 0
					where id_garantia = @inid_garantia AND
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
	@inid_aspecto_tecnico int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Producto
				Update Aspecto_Tecnico
					set [activo] = 0
					where id_aspecto_tecnico = 	@inid_aspecto_tecnico 
 AND
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
	@inid_utilidad int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Producto
				Update Utilidad
					set [activo] = 0
					where id_utilidad = @inid_utilidad AND
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
	@inid_contraindicacion int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL contraindicacion
				Update contraindicacion
					set [activo] = 0
					where id_contraindicacion = @inid_contraindicacion AND
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
	@inid_cuidado int 
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Cuidado
				Update Cuidado
					set [activo] = 0
					where id_cuidado = @inid_cuidado AND
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
CREATE Procedure Eliminar_Inventario_Bodega
	@inid_inventario_bodega int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
		BEGIN TRAN

				--Eliminar AL Inventario_Bodega
				UPDATE Inventario_Bodega 
					SET [activo] = 0
				WHERE id_inventario_bodega = @inid_inventario_bodega AND 
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
	@inid_inventario_ferreteria int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Eliminar AL Inventario_Ferreteria
				UPDATE Inventario_Ferreteria
					SET [activo] = 0
				WHERE id_inventario_ferreteria = @inid_inventario_ferreteria and
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
CREATE Procedure Eliminar_Tipo_Empleado
	@inid_tipo_empleado int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Tipo_Empleado
				Update Tipo_Empleado
					set [activo] = 0
					where id_tipo_empleado = @inid_tipo_empleado AND
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
CREATE Procedure Eliminar_Empleado
	@inid_empleado int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Empleado

				Update Empleado
					set [activo] = 0
					where id_empleado = @inid_empleado AND
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
CREATE Procedure Eliminar_Amonestacion
	@inid_amonestacion int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Amonestacion
				Update Amonestacion
					set [activo] = 0
					where id_amonestacion = @inid_amonestacion AND
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
CREATE Procedure Eliminar_Amonestacion_x_Empleado
	@inid_amonestacion_x_empleado int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Eliminar AL Amonestacion_x_Empleado
				UPDATE  Amonestacion_x_Empleado
					SET [activo] = 0
				WHERE id_amonestacion_x_empleado = @inid_amonestacion_x_empleado and
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
	@inid_empleado_x_ferreteria int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Eliminar AL Empleado_x_Ferreteria
				UPDATE  Empleado_x_Ferreteria
					SET [activo] = 0
				WHERE id_empleado_x_ferreteria = @inid_empleado_x_ferreteria AND
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
CREATE Procedure Eliminar_Departamento
	@inid_departamento int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Departamento

				Update Departamento
					set [activo] = 0
					where id_departamento = @inid_departamento AND
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
	@inid_pasillo int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Pasillo
				Update Pasillo
					set [activo] = 0
					where id_pasillo = @inid_pasillo AND
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
CREATE Procedure Eliminar_Departamento_x_Ferreteria
	@inid_departamento_x_ferreteria int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN

				--Eliminar AL Departamento_x_Ferreteria
				Update Departamento_x_Ferreteria
				set [activo] = 0
				where id_departamento_x_ferreteria=@inid_departamento_x_ferreteria AND
					activo=1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Eliminar el Departamento_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Pasillo_x_Departamento
	@inid_pasillo_x_departamento INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Eliminar AL Pasillo_x_Departamento
				Update Pasillo_x_Departamento 
				set [activo] = 0
				where id_pasillo_x_departamento=@inid_pasillo_x_departamento and
					activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar la Pasillo_x_Departamento, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Estante
	@inid_estante INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
		BEGIN TRAN
				--Eliminar AL Estante
				Update Estante 
				set [activo] = 0
				where id_estante=@inid_estante and
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
CREATE Procedure Eliminar_Producto_x_Estante
	@inid_producto_x_estante INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Eliminar AL Producto_x_Estante
				Update Producto_x_Estante 
				set [activo] = 0
				where 
				id_producto_x_estante = @inid_producto_x_estante and
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Producto_x_Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Tipo_Venta
	@inid_tipo_venta int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Eliminario AL Tipo_venta
				Update Tipo_venta
					set [activo] = 0
					where id_tipo_venta = @inid_tipo_venta AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido eliminar el Tipo_venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Venta
	@inid_venta int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Eliminar AL Venta
				Update Venta 
				set [activo] = 0
				where id_venta = @inid_venta AND 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Detalle_Venta
	@inid_detalle_venta INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Eliminar AL Detalle_Venta
				Update Detalle_Venta 
				set [activo] = 0
				where id_detalle_venta = @inid_detalle_venta AND 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Detalle_Venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Lista_Deseos
	@inid_lista INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Eliminar AL Lista_Deseos
				Update Lista_Deseos 
				set [activo] = 0
				where id_lista = @inid_lista AND 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Lista_Deseos, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Detalle_Lista_Deseos
	@inid_detalle INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Eliminar AL Detalle_Lista_Deseos
				Update Detalle_Lista_Deseos 
				set [activo] = 0
				where id_detalle = @inid_detalle AND 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Detalle_Lista_Deseos, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Eliminar_Vacaciones_disfrutadas
	@inid_vacaciones_disfrutadas INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Eliminar AL Vacaciones_disfrutadas
				Update Vacaciones_disfrutadas 
				set [activo] = 0
				where id_vacaciones_disfrutadas = @inid_vacaciones_disfrutadas AND 
				activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Eliminar el Vacaciones_disfrutadas, por favor revise los datos',1;
		END CATCH
	END
GO