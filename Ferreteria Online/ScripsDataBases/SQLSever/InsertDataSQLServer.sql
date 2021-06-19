INSERT INTO Amonestacion (descripcion,activo)
VALUES ('Amonestacion1',1);
INSERT INTO Amonestacion (descripcion,activo)
VALUES ('Amonestacion2',1);
INSERT INTO Amonestacion (descripcion,activo)
VALUES ('Amonestacion3',1);
INSERT INTO Amonestacion (descripcion,activo)
VALUES ('Amonestacion4',1);

--TIPO EMPLEADO
INSERT INTO Tipo_Empleado(descripcion,activo)
VALUES ('Tipo_Empleado1',1);
INSERT INTO Tipo_Empleado(descripcion,activo)
VALUES ('Chofer',1);
INSERT INTO Tipo_Empleado(descripcion,activo)
VALUES ('Experto',1);
INSERT INTO Tipo_Empleado(descripcion,activo)
VALUES ('Tipo_Empleado2',1);

--EMPLEADO

INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (2,'Mariana', '02/01/2010', 123, 400000, 12, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (2,'Esteban', '02/02/2011', 124, 400000, 10, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (3,'Yosua', '02/01/2009', 125, 800000, 18, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (3,'Paola', '02/01/2010', 126, 800000, 18, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (1,'Empleado1', '02/01/2015', 123, 600000, 15, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (4,'Empleado2', '02/01/2015', 123, 600000, 15, 1);


INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (2,'Mariana2', '02/01/2021', 123, 400000, 12, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (2,'Esteban2', '02/02/2021', 124, 400000, 10, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (3,'Yosua2', '02/01/2021', 125, 800000, 18, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (3,'Paola2', '02/01/2021', 126, 800000, 18, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (1,'Empleado1.2', '02/01/2021', 123, 600000, 15, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (4,'Empleado2.2', '02/01/2021', 123, 600000, 15, 1);


INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (2,'Mariana3', '02/01/2018', 123, 400000, 12, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (2,'Esteban3', '02/02/2018', 124, 400000, 10, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (3,'Yosua3', '02/01/2018', 125, 800000, 18, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (3,'Paola3', '02/01/2019', 126, 800000, 18, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (1,'Empleado1.3', '02/01/2019', 123, 600000, 15, 1);
INSERT INTO Empleado(id_tipo_empleado, nombre, fecha_ingreso,
carnet, salario, vacaciones, activo)
VALUES (4,'Empleado2.3', '02/01/2019', 123, 600000, 15, 1);

--AMONESTACION POR EMPLEADO

INSERT INTO Amonestacion_x_Empleado(id_amonestacion,id_empleado,
descripcion,activo,fecha)
VALUES (1,3,'descripcion',1,'02/01/2021');

INSERT INTO Amonestacion_x_Empleado(id_amonestacion,id_empleado,
descripcion,activo,fecha)
VALUES (2,6,'descripcion',1,'02/06/2021');

INSERT INTO Aspecto_Tecnico(descripcion,activo)
VALUES ('{	"Aspecto1": "aspecto tecnico1",
			"Aspecto2": "aspecto_tecnico1",
			"Aspecto3": "aspectotecnico1"
		}',1);
INSERT INTO Aspecto_Tecnico(descripcion,activo)
VALUES ('{	"Aspecto1": "aspecto tecnico2",
			"Aspecto2": "aspecto_tecnico2",
			"Aspecto3": "aspectotecnico2"
		}',1);
INSERT INTO Aspecto_Tecnico(descripcion,activo)
VALUES ('{	"Aspecto1": "aspecto tecnico3",
			"Aspecto2": "aspecto_tecnico3",
			"Aspecto3": "aspectotecnico3"
		}',1);

--MARCA 
INSERT INTO Marca (nombre,activo)
VALUES('Marca1',1);
INSERT INTO Marca (nombre,activo)
VALUES('Marca2',1);
INSERT INTO Marca (nombre,activo)
VALUES('Marca3',1);
INSERT INTO Marca (nombre,activo)
VALUES('Marca4',1);
INSERT INTO Marca (nombre,activo)
VALUES('Marca5',1);
INSERT INTO Marca (nombre,activo)
VALUES('Marca6',1);
--Garantia 
INSERT INTO Garantia (descripcion,tiempo_garantia,activo)
VALUES(' 1 dia ',1,1);
INSERT INTO Garantia (descripcion,tiempo_garantia,activo)
VALUES(' 15 dia ',15,1);
INSERT INTO Garantia (descripcion,tiempo_garantia,activo)
VALUES(' 7 dia ',7,1);
INSERT INTO Garantia (descripcion,tiempo_garantia,activo)
VALUES(' 1 año ',365,1);
--PROVEEDOR
INSERT INTO Proveedor(nombre, telefono, activo)
VALUES('Provedor1',888888,1);
INSERT INTO Proveedor(nombre, telefono, activo)
VALUES('Provedor2',888888,1);
INSERT INTO Proveedor(nombre, telefono, activo)
VALUES('Provedor3',888888,1);
INSERT INTO Proveedor(nombre, telefono, activo)
VALUES('Provedor4',888888,1);
--CONTRAINDICACIONES
INSERT INTO contraindicacion(descripcion,activo)
VALUES ('{	"Contraindicacion1": "ctdc1",
			"Contraindicacion2": "ctdc1",
			"Contraindicacion3": "ctdc1"
		}',1);
INSERT INTO contraindicacion(descripcion,activo)
VALUES ('{	"Contraindicacion1": "ctdc2",
			"Contraindicacion2": "ctdc2",
			"Contraindicacion3": "ctdc2"
		}',1);
INSERT INTO contraindicacion(descripcion,activo)
VALUES ('{	"Contraindicacion1": "ctdc3",
			"Contraindicacion2": "ctdc3",
			"Contraindicacion3": "ctdc3"
		}',1);
--UTILIDADES
INSERT INTO Utilidad(descripcion,activo)
VALUES ('{	"Utilidad1": "utt1",
			"Utilidad2": "utt1",
			"Utilidad3": "utt1"
		}',1);
INSERT INTO Utilidad(descripcion,activo)
VALUES ('{	"Utilidad1": "utt2",
			"Utilidad2": "utt2",
			"Utilidad3": "utt2"
		}',1);
INSERT INTO Utilidad(descripcion,activo)
VALUES ('{	"Utilidad1": "utt3",
			"Utilidad2": "utt3",
			"Utilidad3": "utt3"
		}',1);
--CUIDADOS
INSERT INTO Cuidado(descripcion,activo)
VALUES ('{	"Cuidado1": "cdd1",
			"Cuidado2": "cdd1",
			"Cuidado3": "cdd1"
		}',1);
INSERT INTO Cuidado(descripcion,activo)
VALUES ('{	"Cuidado1": "cdd2",
			"Cuidado2": "cdd2",
			"Cuidado3": "cdd2"
		}',1);
INSERT INTO Cuidado(descripcion,activo)
VALUES ('{	"Cuidado1": "cdd3",
			"Cuidado2": "cdd3",
			"Cuidado3": "cdd3"
		}',1);
--PRODUCTO DETALLE
INSERT INTO ProductoDetalles(id_provedor,id_aspectos_tecnicos, id_contraindicaciones,
id_utilidades, id_cuidados)
VALUES(1,1,1,1,1);

INSERT INTO ProductoDetalles(id_provedor,id_aspectos_tecnicos, id_contraindicaciones,
id_utilidades, id_cuidados)
VALUES(1,2,1,2,1);

INSERT INTO ProductoDetalles(id_provedor,id_aspectos_tecnicos, id_contraindicaciones,
id_utilidades, id_cuidados)
VALUES(2,2,2,2,1);

INSERT INTO ProductoDetalles(id_provedor,id_aspectos_tecnicos, id_contraindicaciones,
id_utilidades, id_cuidados)
VALUES(2,2,2,2,2);

--PRODUCTO 
INSERT INTO Producto(id_producto, descripcion, foto, precio, id_marca, codigo, id_garantia,activo)
SELECT 1,'descripcion',BulkColumn,2000,1,11,1,1
FROM Openrowset(Bulk 'C:\Captura.PNG',Single_Blob) as Image 

INSERT INTO Producto(id_producto, descripcion, foto, precio, id_marca, codigo, id_garantia,activo)
SELECT 2,'descripcion1',BulkColumn,4000,2,12,2,1
FROM Openrowset(Bulk 'C:\Captura.PNG',Single_Blob) as Image 

INSERT INTO Producto(id_producto, descripcion, foto, precio, id_marca, codigo, id_garantia,activo)
SELECT 3,'descripcion2',BulkColumn,6000,2,13,3,1
FROM Openrowset(Bulk 'C:\Captura.PNG',Single_Blob) as Image

INSERT INTO Producto(id_producto, descripcion, foto, precio, id_marca, codigo, id_garantia,activo)
SELECT 4,'descripcion3',BulkColumn,10000,1,14,4,1
FROM Openrowset(Bulk 'C:\Captura.PNG',Single_Blob) as Image 

-- Bodega

INSERT INTO Bodega (descripcion,ubicacion,activo)
VALUES ('Matiz','POINT (0 0)',1);

INSERT INTO Bodega (descripcion,ubicacion,activo)
VALUES ('Zona Norte','POINT (0 100)',1);

INSERT INTO Bodega (descripcion,ubicacion,activo)
VALUES ('GAM','POINT (100 0)',1);

INSERT INTO Bodega (descripcion,ubicacion,activo)
VALUES ('Zona Sur','POINT (0 -100)',1);


INSERT INTO Departamento(nombre, activo)
VALUES ('Departamento1',1);
INSERT INTO Departamento(nombre, activo)
VALUES ('Departamento2',1);
INSERT INTO Departamento(nombre, activo)
VALUES ('Departamento3',1);
INSERT INTO Departamento(nombre, activo)
VALUES ('Departamento4',1);
INSERT INTO Departamento(nombre, activo)
VALUES ('Departamento5',1);

--Ferreteria

INSERT INTO Ferreteria(descripcion, ubicacion, activo)
VALUES ('Ferreteria1', 'POINT(10 10)',1);
INSERT INTO Ferreteria(descripcion, ubicacion, activo)
VALUES ('Ferreteria2', 'POINT(-10 -10)',1);
INSERT INTO Ferreteria(descripcion, ubicacion, activo)
VALUES ('Ferreteria3', 'POINT(30 30)',1);
INSERT INTO Ferreteria(descripcion, ubicacion, activo)
VALUES ('Ferreteria4', 'POINT(-30 -30)',1);
INSERT INTO Ferreteria(descripcion, ubicacion, activo)
VALUES ('Ferreteria5', 'POINT(70 70)',1);
INSERT INTO Ferreteria(descripcion, ubicacion, activo)
VALUES ('Ferreteria6', 'POINT(-70 -70)',1);
INSERT INTO Ferreteria(descripcion, ubicacion, activo)
VALUES ('Ferreteria7', 'POINT(200 200)',1);
--Departamento x ferreteria

INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (1,1,3,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (2,1,4,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (3,1,3,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (4,1,4,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (5,1,3,1)

INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (1,2,9,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (2,2,10,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (3,2,9,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (4,2,10,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (5,2,9,1)

INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (1,3,15,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (2,3,16,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (3,3,15,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (4,3,16,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (5,3,15,1)

INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (1,4,9,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (2,4,10,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (3,4,9,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (4,4,10,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (5,4,9,1)

INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (1,5,15,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (2,5,16,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (3,5,15,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (4,5,16,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (5,5,15,1)

INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (1,6,9,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (2,6,10,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (3,6,9,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (4,6,10,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (5,6,9,1)

INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (1,7,15,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (2,7,16,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (3,7,15,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (4,7,16,1)
INSERT INTO Departamento_x_Ferreteria(id_departamento, id_ferreteria, id_experto, activo)
VALUES (5,7,15,1)

--cliente    Estan en PostgreSQL
/*
INSERT INTO cliente(nombre, correo, metodo_pago, puntuacion, activo)
VALUES      ('Maria', 'maria@gmail.com', 123, 5,true);
INSERT INTO cliente(nombre, correo, metodo_pago, puntuacion, activo)
VALUES      ('Alicia', 'alicia@gmail.com', 124, 5,true);
INSERT INTO cliente(nombre, correo, metodo_pago, puntuacion, activo)
VALUES      ('cliente1', 'cliente1@gmail.com', 125, 5,true);
INSERT INTO cliente(nombre, correo, metodo_pago, puntuacion, activo)
VALUES      ('cliente2', 'cliente2@gmail.com', 126, 5,true);
INSERT INTO cliente(nombre, correo, metodo_pago, puntuacion, activo)
VALUES      ('cliente3', 'cliente1@gmail.com', 127, 5,true);
*/

--lista de deseos 

INSERT INTO Lista_Deseos(id_cliente, id_vendedor, fecha, entregado, activo)
VALUES (1, 3, '06/06/2021', 0, 1);

INSERT INTO Lista_Deseos(id_cliente, id_vendedor, fecha, entregado, activo)
VALUES (2, 6, '06/08/2021', 0, 1);
--detalle lista de deseos 

INSERT INTO Detalle_Lista_Deseos(id_lista, id_producto, cantidad, activo)
VALUES (1, 1, 3, 1);

INSERT INTO Detalle_Lista_Deseos(id_lista, id_producto, cantidad, activo)
VALUES (1, 2, 4, 1);

INSERT INTO Detalle_Lista_Deseos(id_lista, id_producto, cantidad, activo)
VALUES (2, 4, 3, 1);

INSERT INTO Detalle_Lista_Deseos(id_lista, id_producto, cantidad, activo)
VALUES (2, 3, 4, 1);

--TIPO VENTA

INSERT INTO Tipo_venta(descripcion, activo)
VALUES ('local',1);

INSERT INTO Tipo_venta(descripcion, activo)
VALUES ('online',1);

--VENTA

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (1,1,1,3,'2021-01-04 00:00:00', 250000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (2,1,1,3,'2021-02-04 00:00:00', 20000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (3,2,1,4,'2021-03-04 00:00:01', 400000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (4,1,2,9,'2021-12-04 00:00:01', 20000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (5,2,2,9,'2021-12-04 00:00:01', 6000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (1,2,2,6,'2021-12-04 00:00:01', 6000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (2,1,3,13,'2021-01-04 00:00:00', 135600,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (3,1,3,13,'2021-05-04 00:00:00', 4500000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (4,2,3,14,'2021-08-04 00:00:01', 260000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (5,1,4,17,'2021-12-04 00:00:01', 288000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (1,2,4,17,'2021-11-04 00:00:01', 750000,1);

INSERT INTO Venta(id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
VALUES (2,2,4,16,'2021-10-04 00:00:01', 60000,1);

--DETALLE VENTA 

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (1,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (1,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (1,3,200,1);


INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (2,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (2,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (2,3,200,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (3,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (3,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (3,3,200,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (4,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (4,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (4,3,200,1);


INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (5,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (5,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (5,3,200,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (5,4,100,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (6,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (6,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (6,3,200,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (6,4,100,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (7,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (7,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (7,3,200,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (7,4,100,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (8,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (8,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (8,3,200,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (8,4,100,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (9,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (9,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (9,3,200,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (9,4,100,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (10,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (10,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (10,3,200,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (10,4,100,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (11,1,300,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (11,2,150,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (11,3,200,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (11,4,100,1);

INSERT INTO Detalle_Venta(id_venta, id_producto, cantidad ,activo)
VALUES (12,4,100,1);

--Empleado


INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (1,1,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (2,1,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (3,1,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (4,2,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (5,2,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (6,3,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (7,3,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (8,4,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (9,4,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (10,5,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (11,5,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (12,6,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (13,6,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (14,7,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (15,7,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (16,7,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (17,7,1);

INSERT INTO Empleado_x_Ferreteria(id_empleado, id_ferreteria ,activo)
VALUES (18,7,1);

--Pasillo
INSERT INTO Pasillo(numero,activo)
VALUES (1,1);

INSERT INTO Pasillo(numero,activo)
VALUES (2,1);

INSERT INTO Pasillo(numero,activo)
VALUES (3,1);

INSERT INTO Pasillo(numero,activo)
VALUES (4,1);

INSERT INTO Pasillo(numero,activo)
VALUES (5,1);

--Pasillo_x_departamento

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (1,1,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (2,2,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (3,3,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (4,4,1);


INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (5,5,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (6,1,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (7,2,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (8,3,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (9,4,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (10,5,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (11,1,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (12,2,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (13,3,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (14,4,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (15,5,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (16,1,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (17,2,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (18,3,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (19,4,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (20,5,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (21,1,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (22,2,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (23,3,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (24,4,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (25,5,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (26,1,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (27,2,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (28,3,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (29,4,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (30,5,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (31,1,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (32,2,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (33,3,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (34,4,1);

INSERT INTO Pasillo_x_Departamento(id_departamento_x_ferreteria, id_pasillo, activo)
VALUES (35,5,1);

--Estante 



