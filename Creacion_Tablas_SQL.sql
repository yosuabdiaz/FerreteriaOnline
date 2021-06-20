USE master 
SET IMPLICIT_TRANSACTIONS OFF
alter database FerreteriaOnline SET single_USEr with rollback immediate --Permite eliminar un BD en uso
DROP DATABASE IF EXISTS FerreteriaOnline;  --Elimina la bd
CREATE DATABASE FerreteriaOnline;
Go
USE FerreteriaOnline;
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
CREATE TABLE Proveedor(
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
CREATE TABLE ProductoDetalles(
	id_producto			  [INT]	NOT NULL IDENTITY(1,1),
	id_provedor			  [INT]	NOT NULL,
	id_aspectos_tecnicos  [INT] NOT NULL,
	id_contraindicaciones [INT] NOT NULL,
	id_utilidades         [INT] NOT NULL,
	id_cuidados           [INT] NOT NULL,
	activo				[BIT]	NOT NULL,
	CONSTRAINT DProducto_PK PRIMARY KEY CLUSTERED (id_producto)
);
GO

CREATE TABLE Producto(
	id_producto         [INT] FOREIGN KEY REFERENCES ProductoDetalles(id_producto),
	descripcion			[VARCHAR](200)	NOT NULL,
	foto				[IMAGE]	NOT NULL,	
	precio				[Money]	NOT NULL,
	id_marca			  [INT]	NOT NULL,
	codigo				  [INT]	NOT NULL,
	id_garantia			  [INT]	NOT NULL,
	activo				  [BIT] NOT NULL,	 
    CONSTRAINT PK_producto PRIMARY KEY CLUSTERED (id_producto),
	FOREIGN KEY (id_marca) REFERENCES Marca(id_marca),
	FOREIGN KEY (id_garantia) REFERENCES Garantia(id_garantia)
);

GO

CREATE TABLE Aspecto_Tecnico(
	id_aspecto_tecnico	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](MAX)	NOT NULL,
	activo				[BIT]	NOT NULL,
);
GO
CREATE TABLE Utilidad(
	id_utilidad			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](MAX)	NOT NULL,
	activo				[BIT]	NOT NULL,
);
GO
CREATE TABLE Contraindicacion(
	id_contraindicacion		[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion				[VARCHAR](MAX)	NOT NULL,
	activo					[BIT]	NOT NULL,
);
GO
CREATE TABLE Cuidado(
	id_cuidado			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion			[VARCHAR](MAX)	NOT NULL,
	activo				[BIT]	NOT NULL,
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
	fecha 						    [DATE]  NOT NULL,
	FOREIGN KEY (id_amonestacion) REFERENCES Amonestacion(id_amonestacion),
	FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
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
	id_departamento					[INT]	NOT NULL,
	id_ferreteria					[INT]	NOT NULL,
	id_experto						[INT]	NOT NULL,
	activo							[BIT]	NOT NULL,
	FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento),
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


CREATE TABLE Tipo_venta(
	id_tipo_venta   	[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	descripcion         [VARCHAR](20) NOT NULL,
	activo              [BIT]       NOT NULL
);
GO
CREATE TABLE Venta(
	id_venta			[INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_cliente			[INT]	NOT NULL,
	id_tipo_venta       [INT]   NOT NULL,
	id_ferreteria		[INT]	NOT NULL,
	id_vendedor			[INT]	NOT NULL,
	fecha				[DATETIME]	NOT NULL,
	monto				[MONEY]	NOT NULL,
	activo				[BIT]	NOT NULL,
	FOREIGN KEY (id_ferreteria) REFERENCES Ferreteria(id_ferreteria),
	FOREIGN KEY (id_vendedor) REFERENCES Empleado(id_empleado),
	FOREIGN KEY (id_tipo_venta) REFERENCES Tipo_venta(id_tipo_venta)
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

CREATE TABLE Lista_Deseos(
	id_lista	        [INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_cliente			[INT]	NOT NULL,
	id_vendedor			[INT]	NOT NULL,
	fecha       		[DATE]	NOT NULL,
	entregado           [BIT]   NOT NULL,
	activo				[BIT]	NOT NULL,
	FOREIGN KEY (id_vendedor) REFERENCES Empleado(id_empleado)
);
GO

CREATE TABLE Detalle_Lista_Deseos(
	id_detalle	        [INT]	NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_lista			[INT]	NOT NULL,
	id_producto			[INT]	NOT NULL,
	cantidad       		[INT]	NOT NULL,
	activo				[BIT]	NOT NULL,
	FOREIGN KEY (id_lista) REFERENCES Lista_Deseos(id_lista),
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);
GO

CREATE TABLE Vacaciones_disfrutadas(
	id_vacaciones_disfrutadas   [INT] NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_empleado					[INT] NOT NULL,
	dias						[INT] NOT NULL,
	fecha_inicio				[DATE] NOT NULL,
	fecha_final					[DATE] NOT NULL,
	activo						[BIT]	NOT NULL
);
GO