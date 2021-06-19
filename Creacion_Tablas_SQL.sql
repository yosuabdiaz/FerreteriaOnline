USE master 
SET IMPLICIT_TRANSACTIONS OFF
alter database Proyecto_Bases2 SET single_USEr with rollback immediate --Permite eliminar un BD en uso
DROP DATABASE IF EXISTS Proyecto_Bases2;  --Elimina la bd
CREATE DATABASE Proyecto_Bases2;
Go
USE Proyecto_Bases2;
GO


CREATE TABLE Marca(
	id_marca			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	nombre				[VARCHAR](200)	NOT NULL,
	activo				[BIT]	NOT NULL
);
GO
CREATE TABLE Bodega(
	id_bodega			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](200)	NOT NULL,
	ubicacion			[GEOMETRY] NOT NULL,
	activo				[BIT]	NOT NULL
);
GO
CREATE TABLE Ferreteria(
	id_ferreteria		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](200)	NOT NULL,
	ubicacion			[GEOMETRY] NOT NULL,
	activo				[BIT]	NOT NULL
);
GO
CREATE TABLE Provedor(
	id_provedor			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	nombre				[VARCHAR](200)	NOT NULL,
	telefono			[INT]	NOT NULL,
	activo				[BIT]	NOT NULL
);
GO
CREATE TABLE Garantia(
	id_garantia			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](200)	NOT NULL,
	tiempo_garantia		[INT]	NOT NULL,
	activo				[BIT]	NOT NULL
);
GO
CREATE TABLE Producto(
	id_producto			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_marca			[INT]	NOT NULL,
	id_provedor			[INT]	NOT NULL,
	codigo				[INT]	NOT NULL,
	precio				[Money]	NOT NULL,
	id_garantia			[INT]	NOT NULL,
	--foto				[varbinary(MAX)]	NOT NULL,		-- no se puede multimedia
	descripcion			[VARCHAR](200)	NOT NULL,
	activo				[BIT]	NOT NULL,
	FOREIGN KEY (id_marca) REFERENCES Marca(id_marca),
	FOREIGN KEY (id_provedor) REFERENCES Provedor(id_provedor),
	FOREIGN KEY (id_garantia) REFERENCES Garantia(id_garantia)
);
GO
CREATE TABLE Aspecto_Tecnico(
	id_aspecto_tecnico	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](200)	NOT NULL,
	activo				[BIT]	NOT NULL,
);
GO
CREATE TABLE Utilidad(
	id_utilidad			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](200)	NOT NULL,
	activo				[BIT]	NOT NULL,
);
GO
CREATE TABLE contraindicacion(
	id_contraindicacion		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion				[VARCHAR](200)	NOT NULL,
	activo					[BIT]	NOT NULL,
);
GO
CREATE TABLE Cuidado(
	id_cuidado			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](200)	NOT NULL,
	activo				[BIT]	NOT NULL,
);
GO
CREATE TABLE Aspecto_Tecnico_x_Producto(
	id_aspecto_tecnico_x_producto	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_aspecto_tecnico				[INT]	NOT NULL,
	id_producto						[INT]	NOT NULL,
	activo							[BIT]	NOT NULL,
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
	FOREIGN KEY (id_aspecto_tecnico) REFERENCES Aspecto_Tecnico(id_aspecto_tecnico)
);
GO
CREATE TABLE Utilidad_x_Producto(
	id_utilidad_x_producto		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_utilidad					[INT]	NOT NULL,
	id_producto					[INT]	NOT NULL,
	activo						[BIT]	NOT NULL,
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
	FOREIGN KEY (id_utilidad) REFERENCES Utilidad(id_utilidad)
);
GO
CREATE TABLE Contraindicacion_x_Producto(
	id_contraindicacion_x_producto	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_contraindicacion				[INT]	NOT NULL,
	id_producto						[INT]	NOT NULL,
	activo							[BIT]	NOT NULL,
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
	FOREIGN KEY (id_contraindicacion) REFERENCES Contraindicacion(id_contraindicacion)
);
GO
CREATE TABLE Cuidado_x_Producto(
	id_cuidado_x_producto	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_cuidado				[INT]	NOT NULL,
	id_producto				[INT]	NOT NULL,
	activo					[BIT]	NOT NULL,
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
	FOREIGN KEY (id_cuidado) REFERENCES Cuidado(id_cuidado)
);
GO
CREATE TABLE Inventario_Bodega(
	id_inventario_bodega			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_bodega						[INT]	NOT NULL,
	id_producto						[INT]	NOT NULL,
	cantidad						[INT]	NOT NULL,
	activo							[BIT]	NOT NULL,
	FOREIGN KEY (id_bodega) REFERENCES Bodega(id_bodega),
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);
GO
CREATE TABLE Inventario_Ferreteria(
	id_inventario_ferreteria			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_ferreteria						[INT]	NOT NULL,
	id_producto							[INT]	NOT NULL,
	cantidad							[INT]	NOT NULL,
	activo								[BIT]	NOT NULL,
	FOREIGN KEY (id_ferreteria) REFERENCES Ferreteria(id_ferreteria),
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);
GO
CREATE TABLE Tipo_Empleado(
	id_tipo_empleado			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion					[VARCHAR](200)	NOT NULL,
	activo						[BIT]	NOT NULL,
);
GO
CREATE TABLE Empleado(
	id_empleado			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_tipo_empleado	[INT]	NOT NULL, 
	nombre				[VARCHAR](50)	NOT NULL,
	fecha_ingreso		[DATE]	NOT NULL,
	carnet				[INT]	NOT NULL,
	salario				[MONEY]	NOT NULL,
	vacaciones			[INT]	NOT NULL,
	activo				[BIT]	NOT NULL,
	FOREIGN KEY (id_tipo_empleado) REFERENCES Tipo_Empleado(id_tipo_empleado)
);
GO
CREATE TABLE Amonestacion(
	id_amonestacion			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion				[VARCHAR](200)	NOT NULL,
	activo					[BIT]	NOT NULL,
);
GO
CREATE TABLE Amonestacion_x_Empleado(
	id_amonestacion_x_empleado		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_amonestacion					[INT]	NOT NULL,
	id_empleado						[INT]	NOT NULL,
	descripcion						[VARCHAR](200)	NOT NULL,
	activo							[BIT]	NOT NULL,
	FOREIGN KEY (id_amonestacion) REFERENCES Amonestacion(id_amonestacion),
	FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);
GO

CREATE TABLE Cliente(
	id_cliente			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	nombre				[VARCHAR](50)	NOT NULL,
	correo				[VARCHAR](100)	NOT NULL,
	puntuacion			[INT]	NOT NULL,
	metodo_Pago			[INT]	NOT NULL,	 --Tarjeta		---Corregir metodo de pago
	activo				[BIT]	NOT NULL,
);
GO
CREATE TABLE Empleado_x_Ferreteria(
	id_empleado_x_ferreteria		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_empleado					[INT]	NOT NULL,
	id_ferreteria				[INT]	NOT NULL,
	activo						[BIT]	NOT NULL,
	FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado),
	FOREIGN KEY (id_ferreteria) REFERENCES Ferreteria(id_ferreteria)
);
GO



--Creo que es incesesario




CREATE TABLE Cliente_x_Ferreteria(
	id_cliente_x_ferreteria		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_cliente					[INT]	NOT NULL,
	id_ferreteria				[INT]	NOT NULL,
	activo						[BIT]	NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_ferreteria) REFERENCES Ferreteria(id_ferreteria)
);
GO




CREATE TABLE Direccion(
	id_direccion		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](200)	NOT NULL,
	ubicacion			[GEOMETRY] NOT NULL,
	activo				[BIT]	NOT NULL,
);
GO
CREATE TABLE Direccion_x_Cliente(
	id_direccion_x_cliente		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_cliente					[INT]	NOT NULL,
	id_direccion				[INT]	NOT NULL,
	activo						[BIT]	NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_direccion) REFERENCES Direccion(id_direccion)
);
GO
CREATE TABLE Departamento(
	id_departamento			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	nombre					[VARCHAR](200)	NOT NULL,
	activo					[BIT]	NOT NULL,
);
GO
CREATE TABLE Pasillo(
	id_pasillo			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	numero				[INT]	NOT NULL,
	activo				[BIT]	NOT NULL,
);
GO
CREATE TABLE Departamento_x_Ferreteria(
	id_departamento_x_ferreteria	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_deparamento					[INT]	NOT NULL,
	id_ferreteria					[INT]	NOT NULL,
	id_experto						[INT]	NOT NULL,
	activo							[BIT]	NOT NULL,
	FOREIGN KEY (id_deparamento) REFERENCES Departamento(id_departamento),
	FOREIGN KEY (id_ferreteria) REFERENCES Ferreteria(id_ferreteria),
	FOREIGN KEY (id_experto) REFERENCES Empleado(id_empleado)
);
GO
CREATE TABLE Pasillo_x_Departamento(
	id_pasillo_x_departamento		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_departamento_x_ferreteria	[INT]	NOT NULL,
	id_pasillo						[INT]	NOT NULL,
	activo							[BIT]	NOT NULL,
	FOREIGN KEY (id_departamento_x_ferreteria) REFERENCES Departamento_x_Ferreteria(id_departamento_x_ferreteria),
	FOREIGN KEY (id_pasillo) REFERENCES Pasillo(id_pasillo)
);
GO
CREATE TABLE Estante(
	id_estante					[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_pasillo_x_departamento	[INT]	NOT NULL,
	numero						[INT]	NOT NULL,
	activo						[BIT]	NOT NULL,
	FOREIGN KEY (id_pasillo_x_departamento) REFERENCES Pasillo_x_Departamento(id_pasillo_x_departamento)
);
GO
CREATE TABLE Producto_x_Estante(
	id_producto_x_estante	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_estante				[INT]	NOT NULL,
	id_producto				[INT]	NOT NULL,
	activo					[BIT]	NOT NULL,
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
	FOREIGN KEY (id_estante) REFERENCES Estante(id_estante)
);
GO
CREATE TABLE Venta(
	id_venta			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_cliente			[INT]	NOT NULL,
	id_ferreteria		[INT]	NOT NULL,
	id_vendedor			[INT]	NOT NULL,
	fecha				[DATE]	NOT NULL,
	monto				[MONEY]	NOT NULL,
	activo				[BIT]	NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_ferreteria) REFERENCES Ferreteria(id_ferreteria),
	FOREIGN KEY (id_vendedor) REFERENCES Empleado(id_empleado)
);
GO
CREATE TABLE Detalle_Venta(
	id_detalle_venta	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_venta			[INT]	NOT NULL,
	id_producto			[INT]	NOT NULL,
	cantidad			[INT]	NOT NULL,
	activo				[BIT]	NOT NULL,
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
	FOREIGN KEY (id_venta) REFERENCES Venta(id_venta)
);
GO
CREATE TABLE Flotilla(
	id_flotilla			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_ferreteria		[INT]	NOT NULL,
	activo				[BIT]	NOT NULL,
	FOREIGN KEY (id_ferreteria) REFERENCES Ferreteria(id_ferreteria)
	
);
GO
CREATE TABLE Vehiculo(
	id_vehiculo					[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	placa						[VARCHAR](15)	NOT NULL,
	descripcion					[VARCHAR](150)	NOT NULL,
	capcidad_tanque_gasolina	[INT]	NOT NULL,
	id_flotilla					[INT]	NOT NULL,
	id_chofer					[INT]	NOT NULL,
	activo						[BIT]	NOT NULL,
	FOREIGN KEY (id_vehiculo) REFERENCES Vehiculo(id_vehiculo),
	FOREIGN KEY (id_flotilla) REFERENCES Flotilla(id_flotilla),
	FOREIGN KEY (id_chofer) REFERENCES Empleado(id_empleado)
);
GO

CREATE TABLE Ruta(
	id_ruta				[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](200)	NOT NULL,
	activo				[BIT]	NOT NULL,
);
GO
--Lugar de entrea
CREATE TABLE Punto(
	id_punto			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	ubicacion			[GEOMETRY] NOT NULL,
	activo				[BIT]	NOT NULL,
);
GO
--Lugar de entrea por ruta
CREATE TABLE Punto_x_Ruta(
	id_punto_x_ruta			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_ruta					[INT]	NOT NULL,
	id_punto				[INT]	NOT NULL,
	activo					[BIT]	NOT NULL,
	FOREIGN KEY (id_ruta) REFERENCES Ruta(id_ruta),
	FOREIGN KEY (id_punto) REFERENCES Punto(id_punto)
);
GO

--ENTREGA DOMICILIO
CREATE TABLE Entrega(
	id_entrega		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_vehiculo		[INT]	NOT NULL,
	id_ruta			[INT]	NOT NULL,
	id_chofer		[INT]	NOT NULL,
	activo			[BIT]	NOT NULL,
	fecha			[DATE]	NOT NULL,
	FOREIGN KEY (id_vehiculo) REFERENCES Vehiculo(id_vehiculo),
	FOREIGN KEY (id_chofer) REFERENCES Empleado(id_empleado),
	FOREIGN KEY (id_ruta) REFERENCES Ruta(id_ruta)
);
GO
CREATE TABLE Detalle_Entrega(
	id_detalle_entrega	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_venta			[INT]	NOT NULL,
	id_entrega			[INT]	NOT NULL,
	recibido			[BIT]	NOT NULL,
	activo				[BIT]	NOT NULL,
	FOREIGN KEY (id_entrega) REFERENCES Entrega(id_entrega),
	FOREIGN KEY (id_venta) REFERENCES Venta(id_venta)
);
GO

----------------------------------------------------