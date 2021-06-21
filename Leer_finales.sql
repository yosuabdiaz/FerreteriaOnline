USE FerreteriaOnline;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---															   Stores Procedure Leer
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE Procedure Leer_Marca
	@inid_marca int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Bodega
				sELECT nombre
				FROM Marca
				where id_marca = @inid_marca AND
					[activo] = 1						
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer la marca, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Bodega
	@inid_bodega int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Bodega
				sELECT descripcion,ubicacion
				FROM Bodega
				where id_bodega = @inid_bodega AND
					[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer la bodega , por favor revise los datos',1;
		END CATCH
	END
GO

CREATE Procedure Leer_Ferreteria
	@inid_ferreteria int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Ferreteria
				sELECT descripcion,ubicacion
				FROM Ferreteria
				where id_ferreteria = @inid_ferreteria AND
					[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer la ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Provedor
	@inid_provedor int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Provedor
				sELECT nombre,telefono
				FROM Proveedor
				where id_provedor = @inid_provedor AND
					[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer la Provedor, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Garantia
	@inid_garantia int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL gARANTIA
				sELECT descripcion,tiempo_garantia
				FROM Garantia
				where id_garantia = @inid_garantia
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer la Garantia, por favor revise los datos',1;
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
				sELECT Producto.descripcion,
						Producto.precio,
						Producto.codigo,
						Marca.nombre,
						Garantia.descripcion,
						Garantia.tiempo_garantia,
						Producto.foto
				FROM Producto
				INNER JOIN Marca on Marca.id_marca = Producto.id_marca
				INNER JOIN Garantia on Garantia.id_garantia = Producto.id_garantia
				where Producto.codigo = @incodigo and Producto.activo = 1
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
	@inid_aspecto_tecnico int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Producto
				sELECT descripcion
				FROM Aspecto_Tecnico
				where id_aspecto_tecnico = 	@inid_aspecto_tecnico  AND
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
	@inid_utilidad int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Utilidad
				sELECT descripcion
				FROM Utilidad
				WHERE id_utilidad = @inid_utilidad AND
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
	@inid_contraindicacion int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL contraindicacion
				sELECT descripcion
				FROM Contraindicacion
				where id_contraindicacion = @inid_contraindicacion AND
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
	@inid_cuidado int 
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Cuidado
				sELECT descripcion
				FROM Cuidado
				where id_cuidado = @inid_cuidado AND
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
CREATE Procedure Leer_Inventario_Bodega
	@inid_inventario_bodega int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
		BEGIN TRAN

				--Leer AL Inventario_Bodega
				sELECT Bodega.descripcion, 
					Producto.codigo, 
					Producto.descripcion, 
					Inventario_Bodega.cantidad
				FROM Inventario_Bodega
				INNER JOIN Bodega on Bodega.id_bodega = Inventario_Bodega.id_bodega
				INNER JOIN Producto on Producto.id_producto = Inventario_Bodega.id_producto
				WHERE Inventario_Bodega.id_inventario_bodega = @inid_inventario_bodega AND 
						Inventario_Bodega.activo = 1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Leer el Inventario_Bodega, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Inventario_Ferreteria
	@inid_inventario_ferreteria int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Leer AL Inventario_Ferreteria
				sELECT  Ferreteria.descripcion, 
					Producto.codigo, 
					Producto.descripcion, 
					Inventario_Ferreteria.cantidad
				FROM Inventario_Ferreteria
				INNER JOIN Ferreteria on Ferreteria.id_ferreteria = Inventario_Ferreteria.id_ferreteria
				INNER JOIN Producto on Producto.id_producto = Inventario_Ferreteria.id_producto
				WHERE Inventario_Ferreteria.id_inventario_ferreteria = @inid_inventario_ferreteria and
					Inventario_Ferreteria.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Leer el Inventario_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Tipo_Empleado
	@inid_tipo_empleado int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Tipo_Empleado
				sELECT descripcion
				FROM Tipo_Empleado
				WHERE id_tipo_empleado = @inid_tipo_empleado AND
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
CREATE Procedure Leer_Empleado
	@inid_empleado int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Empleado

				sELECT Empleado.nombre,
					Empleado.carnet,
					Empleado.fecha_ingreso,
					Empleado.salario,
					Empleado.vacaciones,
					Tipo_Empleado.descripcion
				FROM Empleado
				INNER JOIN Tipo_Empleado on Tipo_Empleado.id_tipo_empleado = Empleado.id_tipo_empleado
				where Empleado.id_empleado = @inid_empleado AND
						Empleado.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Amonestacion
	@inid_amonestacion int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Amonestacion
				sELECT descripcion
				FROM Amonestacion
				WHERE id_amonestacion = @inid_amonestacion AND
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
CREATE Procedure Leer_Amonestacion_x_Empleado
	@inid_amonestacion_x_empleado int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Leer AL Amonestacion_x_Empleado
				sELECT Amonestacion_x_Empleado.descripcion,
						Amonestacion_x_Empleado.fecha,
						Empleado.nombre,
						Empleado.carnet,
						Amonestacion.descripcion
				FROM  Amonestacion_x_Empleado
				INNER JOIN Amonestacion on Amonestacion.id_amonestacion = Amonestacion_x_Empleado.id_amonestacion
				INNER JOIN Empleado on Empleado.id_empleado = Amonestacion_x_Empleado.id_empleado
				WHERE Amonestacion_x_Empleado.id_amonestacion_x_empleado = @inid_amonestacion_x_empleado and
						Amonestacion_x_Empleado.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Leer la Amonestacion_x_Empleado, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Empleado_x_Ferreteria
	@inid_empleado_x_ferreteria int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN

				--Leer AL Empleado_x_Ferreteria
				sELECT Empleado.nombre,
						Empleado.carnet,
						Ferreteria.descripcion
				FROM  Empleado_x_Ferreteria
				INNER JOIN Empleado ON Empleado.id_empleado = Empleado_x_Ferreteria.id_empleado
                INNER JOIN Ferreteria on Ferreteria.id_ferreteria = Empleado_x_Ferreteria.id_ferreteria
				WHERE Empleado_x_Ferreteria.id_empleado_x_ferreteria = @inid_empleado_x_ferreteria AND
						Empleado_x_Ferreteria.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Leer el Empleado_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Departamento
	@inid_departamento int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Departamento

				sELECT nombre
				FROM Departamento
				WHERE id_departamento = @inid_departamento AND
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
	@inid_pasillo int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Pasillo
				sELECT numero
				FROM Pasillo
				where id_pasillo = @inid_pasillo AND
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
CREATE Procedure Leer_Departamento_x_Ferreteria
	@inid_departamento_x_ferreteria int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN

				--Leer AL Departamento_x_Ferreteria
				sELECT Empleado.nombre,
						Empleado.carnet,
						Ferreteria.descripcion,
						Departamento.nombre
				FROM Departamento_x_Ferreteria
				INNER JOIN Empleado ON Empleado.id_empleado = Departamento_x_Ferreteria.id_experto
                INNER JOIN Ferreteria on Ferreteria.id_ferreteria = Departamento_x_Ferreteria.id_ferreteria
                INNER JOIN Departamento on Departamento.id_departamento = Departamento_x_Ferreteria.id_departamento
				where Departamento_x_Ferreteria.id_departamento_x_ferreteria=@inid_departamento_x_ferreteria AND
					Departamento_x_Ferreteria.activo=1

			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62528,'Error: No se ha podido Leer el Departamento_x_Ferreteria, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Pasillo_x_Departamento
	@inid_pasillo_x_departamento INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Leer AL Pasillo_x_Departamento
				sELECT Ferreteria.descripcion,
						Departamento.nombre,
						Pasillo.numero
				FROM Pasillo_x_Departamento
				INNER JOIN Departamento_x_Ferreteria on Departamento_x_Ferreteria.id_departamento_x_ferreteria = Pasillo_x_Departamento.id_departamento_x_ferreteria
                INNER JOIN Ferreteria on Ferreteria.id_ferreteria = Departamento_x_Ferreteria.id_ferreteria
				INNER JOIN Departamento on Departamento.id_departamento = Departamento_x_Ferreteria.id_departamento
				INNER JOIN Pasillo on Pasillo.id_pasillo = Pasillo_x_Departamento.id_pasillo
				where Pasillo_x_Departamento.id_pasillo_x_departamento=@inid_pasillo_x_departamento and
					Pasillo_x_Departamento.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer la Pasillo_x_Departamento, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Numero_Estante
	@inid_estante INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
		BEGIN TRAN
				--Leer AL Estante
				sELECT Estante.numero,
						Departamento.nombre,
						Pasillo.numero
				FROM Estante
				INNER JOIN Pasillo_x_Departamento on Pasillo_x_Departamento.id_pasillo_x_departamento = Estante.id_pasillo_x_departamento
				INNER JOIN Departamento_x_Ferreteria on Departamento_x_Ferreteria.id_departamento_x_ferreteria = Pasillo_x_Departamento.id_departamento_x_ferreteria
				INNER JOIN Departamento on Departamento.id_departamento = Departamento_x_Ferreteria.id_departamento
				INNER JOIN Pasillo on Pasillo.id_pasillo = Pasillo_x_Departamento.id_pasillo
				where Estante.id_estante = @inid_estante and
				Estante.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Producto_x_Estante
	@inid_producto_x_estante INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Leer AL Producto_x_Estante
				sELECT Producto.codigo, 
					Producto.descripcion,
					Estante.numero
				FROM Producto_x_Estante
				INNER JOIN Estante on Estante.id_estante = Producto_x_Estante.id_estante
				INNER JOIN Producto on Producto.id_producto = Producto_x_Estante.id_producto
				where Producto_x_Estante.id_producto_x_estante = @inid_producto_x_estante and
				Producto_x_Estante.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Producto_x_Estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Todo_Estante
	@inid_estante INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
		BEGIN TRAN
				--Leer AL Estante
				sELECT Producto.codigo, 
					Producto.descripcion,
					Estante.numero
				FROM Producto_x_Estante
				INNER JOIN Estante on Estante.id_estante = Producto_x_Estante.id_estante
				INNER JOIN Producto on Producto.id_producto = Producto_x_Estante.id_producto
				where Producto_x_Estante.id_estante = @inid_estante and
				Producto_x_Estante.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el todos los productos del estante, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Tipo_Venta
	@inid_tipo_venta int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON
			BEGIN TRAN
				--Leer AL Tipo_venta
				sELECT descripcion
				FROM Tipo_venta
				WHERE id_tipo_venta = @inid_tipo_venta AND
						[activo] = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Tipo_venta, por favor revise los datos',1;
		END CATCH
	END
GO
----Como llamar a cliente
CREATE Procedure Leer_Venta
	@inid_venta int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Leer AL Venta
				sELECT Ferreteria.descripcion, 
					Empleado.carnet,
					Empleado.nombre,
					Cliente.nombre,
					Tipo_venta.descripcion,
					Venta.fecha,
					Venta.monto
				FROM Venta
				INNER JOIN Ferreteria on Ferreteria.id_ferreteria = Venta.id_ferreteria
				INNER JOIN Cliente on Cliente.id_cliente = Venta.id_cliente
				INNER JOIN Empleado on Empleado.id_empleado = Venta.id_vendedor
				INNER JOIN Tipo_venta on Tipo_venta.id_tipo_venta = Venta.id_tipo_venta

				where Venta.id_venta = @inid_venta AND 
				Venta.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Detalle_Venta
	@inid_detalle_venta INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Leer AL Detalle_Venta
				sELECT Venta.fecha,
					Empleado.carnet,
					Empleado.nombre,
					Cliente.nombre,
					Producto.codigo, 
					Producto.descripcion,
					Detalle_Venta.cantidad
				FROM Detalle_Venta
				INNER JOIN Venta on Venta.id_venta = Detalle_Venta.id_venta
				INNER JOIN Cliente on Cliente.id_cliente = Venta.id_cliente
				INNER JOIN Empleado on Empleado.id_empleado = Venta.id_vendedor
				INNER JOIN Tipo_venta on Tipo_venta.id_tipo_venta = Venta.id_tipo_venta
				INNER JOIN Producto on Producto.id_producto = Detalle_Venta.id_producto
				where Detalle_Venta.id_detalle_venta = @inid_detalle_venta AND 
				Detalle_Venta.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Detalle_Venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Tods_Deatlles_Venta
	@inid_venta int
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Leer AL Venta
				sELECT Ferreteria.descripcion, 
					Empleado.carnet,
					Empleado.nombre,
					Cliente.nombre,
					Tipo_venta.descripcion,
					Producto.codigo, 
					Producto.descripcion,
					Venta.fecha,
					Venta.monto
				FROM Detalle_Venta
				INNER JOIN Venta on Venta.id_venta = Detalle_Venta.id_venta
				INNER JOIN Ferreteria on Ferreteria.id_ferreteria = Venta.id_ferreteria
				INNER JOIN Cliente on Cliente.id_cliente = Venta.id_cliente
				INNER JOIN Empleado on Empleado.id_empleado = Venta.id_vendedor
				INNER JOIN Tipo_venta on Tipo_venta.id_tipo_venta = Venta.id_tipo_venta
				INNER JOIN Producto on Producto.id_producto = Detalle_Venta.id_producto
				where Detalle_Venta.id_venta = @inid_venta AND 
				Detalle_Venta.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Venta, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Lista_Deseos
	@inid_lista INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Leer AL Lista_Deseos
				sELECT Cliente.nombre,
					Empleado.carnet,
					Empleado.nombre,
					Lista_Deseos.fecha,
					Lista_Deseos.entregado
				FROM Lista_Deseos
				INNER JOIN Empleado on Empleado.id_empleado = Lista_Deseos.id_vendedor
				INNER JOIN Cliente on Cliente.id_cliente = Venta.id_cliente
				where Lista_Deseos.id_lista = @inid_lista AND 
				Lista_Deseos.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Lista_Deseos, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Detalle_Lista_Deseos
	@inid_detalle INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Leer AL Detalle_Lista_Deseos
				sELECT Cliente.nombre,
					Empleado.carnet,
					Empleado.nombre,
					Producto.codigo, 
					Producto.descripcion,
					Detalle_Lista_Deseos.cantidad,
					Lista_Deseos.fecha
					Lista_Deseos.entregado
				FROM Detalle_Lista_Deseos
				INNER JOIN Lista_Deseos on Lista_Deseos.id_lista = Detalle_Lista_Deseos.id_lista
				INNER JOIN Empleado on Empleado.id_empleado = Lista_Deseos.id_vendedor
				INNER JOIN Cliente on Cliente.id_cliente = Venta.id_client
				INNER JOIN Producto on Producto.id_producto = Detalle_Lista_Deseos.id_producto
				where Detalle_Lista_Deseos.id_detalle = @inid_detalle AND 
				Detalle_Lista_Deseos.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Detalle_Lista_Deseos, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Todo_Productos_Lista_Deseos
	@inid_lista INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Leer AL Lista_Deseos
				sELECT Cliente.nombre,
					Empleado.carnet,
					Empleado.nombre,
					Producto.codigo, 
					Producto.descripcion,
					Detalle_Lista_Deseos.cantidad,
					Lista_Deseos.fecha,
					Lista_Deseos.entregado
				FROM Detalle_Lista_Deseos
				INNER JOIN Lista_Deseos on Lista_Deseos.id_lista = Detalle_Lista_Deseos.id_lista
				INNER JOIN Empleado on Empleado.id_empleado = Lista_Deseos.id_vendedor
				INNER JOIN Cliente on Cliente.id_cliente = Venta.id_cliente
				INNER JOIN Producto on Producto.id_producto = Detalle_Lista_Deseos.id_producto
				where Detalle_Lista_Deseos.id_lista = @inid_lista AND 
				Detalle_Lista_Deseos.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Lista_Deseos, por favor revise los datos',1;
		END CATCH
	END
GO
CREATE Procedure Leer_Vacaciones_disfrutadas
	@inid_vacaciones_disfrutadas INT
AS   
	BEGIN 
		BEGIN TRY
		SET NOCOUNT ON 
		SET XACT_ABORT ON

			BEGIN TRAN
				--Leer AL Vacaciones_disfrutadas
				sELECT Empleado.nombre,
						Empleado.carnet,
						Vacaciones_disfrutadas.dias,
						Vacaciones_disfrutadas.fecha_inicio,
						Vacaciones_disfrutadas.fecha_final
				FROM Vacaciones_disfrutadas
				INNER JOIN Empleado ON Empleado.id_empleado = Vacaciones_disfrutadas.id_empleado
				where Vacaciones_disfrutadas.id_vacaciones_disfrutadas = @inid_vacaciones_disfrutadas AND 
				Vacaciones_disfrutadas.activo = 1
			COMMIT
		END TRY
		BEGIN CATCH
			If @@TRANCOUNT > 0 
				ROLLBACK TRAN;
			THROW 62503,'Error: No se ha podido Leer el Vacaciones_disfrutadas, por favor revise los datos',1;
		END CATCH
	END
GO