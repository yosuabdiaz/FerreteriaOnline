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

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(1,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(1,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(1,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(2,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(2,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(2,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(3,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(3,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(3,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(4,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(4,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(4,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(5,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(5,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(5,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(6,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(6,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(6,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(7,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(7,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(7,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(8,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(8,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(8,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(9,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(9,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(9,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(10,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(10,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(10,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(11,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(11,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(11,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(12,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(12,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(12,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(13,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(13,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(13,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(14,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(14,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(14,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(15,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(15,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(15,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(16,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(16,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(16,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(17,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(17,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(17,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(18,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(18,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(18,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(19,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(19,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(19,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(20,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(20,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(20,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(21,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(21,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(21,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(22,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(22,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(22,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(23,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(23,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(23,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(24,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(24,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(24,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(25,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(25,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(25,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(26,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(26,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(26,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(27,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(27,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(27,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(28,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(28,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(28,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(29,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(29,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(29,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(30,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(30,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(30,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(31,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(31,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(31,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(32,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(32,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(32,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(33,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(33,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(33,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(34,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(34,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(34,3,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(35,1,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(35,2,1);

INSERT INTO Estante(id_pasillo_x_departamento, numero, activo)
VALUES(35,3,1);

--Inventario Bodega 

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(1,1,10000,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(1,2,1000,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(1,3,1000,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(1,4,1000,1);


INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(2,1,1000,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(2,2,100,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(2,3,100,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(2,4,100,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(3,1,1000,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(3,2,100,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(3,3,100,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(3,4,100,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(4,1,1000,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(4,2,100,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(4,3,100,1);

INSERT INTO Inventario_Bodega(id_bodega, id_producto, cantidad, activo)
VALUES(4,4,100,1);

INSERT INTO Inventario_Ferreteria(id_ferreteria, id_producto, cantidad, activo)
VALUES(1,1,30,1),(1,2,40,1),(1,3,20,1),(1,4,0,1),
	  (2,1,30,1),(2,2,40,1),(2,3,20,1),(2,4,10,1),
	  (3,1,30,1),(3,2,40,1),(3,3,20,1),(3,4,20,1),
	  (4,1,30,1),(4,2,40,1),(4,3,20,1),(4,4,20,1),
	  (5,1,30,1),(5,2,40,1),(5,3,20,1),(5,4,50,1),
	  (6,1,30,1),(6,2,40,1),(6,3,20,1),(6,4,50,1),
	  (7,1,30,1),(7,2,40,1),(7,3,20,1),(7,4,70,1);

INSERT INTO Producto_x_Estante(id_estante, id_producto, activo)
VALUES (1,1,1),(1,2,1),(1,3,1),(1,4,1),
       (2,1,1),(2,2,1),(2,3,1),(2,4,1),
       (3,1,1),(3,2,1),(3,3,1),(3,4,1),
       (4,1,1),(4,2,1),(4,3,1),(4,4,1),
       (5,1,1),(5,2,1),(5,3,1),(5,4,1),
       (6,1,1),(6,2,1),(6,3,1),(6,4,1),
       (7,1,1),(7,2,1),(7,3,1),(7,4,1),
       (8,1,1),(8,2,1),(8,3,1),(8,4,1),
       (9,1,1),(9,2,1),(9,3,1),(9,4,1),
       (10,1,1),(10,2,1),(10,3,1),(10,4,1),
       (11,1,1),(11,2,1),(11,3,1),(11,4,1),
       (12,1,1),(12,2,1),(12,3,1),(12,4,1),
       (13,1,1),(13,2,1),(13,3,1),(13,4,1),
       (14,1,1),(14,2,1),(14,3,1),(14,4,1),
       (15,1,1),(15,2,1),(15,3,1),(15,4,1),
       (16,1,1),(16,2,1),(16,3,1),(16,4,1),
       (17,1,1),(17,2,1),(17,3,1),(17,4,1),
       (18,1,1),(18,2,1),(18,3,1),(18,4,1),
       (19,1,1),(19,2,1),(19,3,1),(19,4,1),
       (20,1,1),(20,2,1),(20,3,1),(20,4,1),
       (21,1,1),(21,2,1),(21,3,1),(21,4,1),
       (22,1,1),(22,2,1),(22,3,1),(22,4,1),
       (23,1,1),(23,2,1),(23,3,1),(23,4,1),
       (24,1,1),(24,2,1),(24,3,1),(24,4,1),
       (25,1,1),(25,2,1),(25,3,1),(25,4,1),
       (26,1,1),(26,2,1),(26,3,1),(26,4,1),
       (27,1,1),(27,2,1),(27,3,1),(27,4,1),
       (28,1,1),(28,2,1),(28,3,1),(28,4,1),
       (29,1,1),(29,2,1),(29,3,1),(29,4,1),
       (30,1,1),(30,2,1),(30,3,1),(30,4,1),
       (31,1,1),(31,2,1),(31,3,1),(31,4,1),
       (32,1,1),(32,2,1),(32,3,1),(32,4,1),
       (33,1,1),(33,2,1),(33,3,1),(33,4,1),
       (34,1,1),(34,2,1),(34,3,1),(34,4,1),
       (35,1,1),(35,2,1),(35,3,1),(35,4,1),
       (36,1,1),(36,2,1),(36,3,1),(36,4,1),
       (37,1,1),(37,2,1),(37,3,1),(37,4,1),
       (38,1,1),(38,2,1),(38,3,1),(38,4,1),
       (39,1,1),(39,2,1),(39,3,1),(39,4,1),
       (40,1,1),(40,2,1),(40,3,1),(40,4,1),
       (41,1,1),(41,2,1),(41,3,1),(41,4,1),
       (42,1,1),(42,2,1),(42,3,1),(42,4,1),
       (43,1,1),(43,2,1),(43,3,1),(43,4,1),
       (44,1,1),(44,2,1),(44,3,1),(44,4,1),
       (45,1,1),(45,2,1),(45,3,1),(45,4,1),
       (46,1,1),(46,2,1),(46,3,1),(46,4,1),
       (47,1,1),(47,2,1),(47,3,1),(47,4,1),
       (48,1,1),(48,2,1),(48,3,1),(48,4,1),
       (49,1,1),(49,2,1),(48,3,1),(49,4,1),
       (50,1,1),(50,2,1),(50,3,1),(50,4,1),
       (51,1,1),(51,2,1),(51,3,1),(51,4,1),
       (52,1,1),(52,2,1),(52,3,1),(52,4,1),
       (53,1,1),(53,2,1),(53,3,1),(53,4,1),
       (54,1,1),(54,2,1),(54,3,1),(54,4,1),
       (55,1,1),(55,2,1),(55,3,1),(55,4,1),
       (56,1,1),(56,2,1),(56,3,1),(56,4,1),
       (57,1,1),(57,2,1),(57,3,1),(57,4,1),
       (58,1,1),(58,2,1),(58,3,1),(58,4,1),
       (59,1,1),(59,2,1),(59,3,1),(59,4,1),
       (60,1,1),(60,2,1),(60,3,1),(60,4,1),
       (61,1,1),(61,2,1),(61,3,1),(61,4,1),
       (62,1,1),(62,2,1),(62,3,1),(62,4,1),
       (63,1,1),(63,2,1),(63,3,1),(63,4,1),
       (64,1,1),(64,2,1),(64,3,1),(64,4,1),
       (65,1,1),(65,2,1),(65,3,1),(65,4,1),
       (66,1,1),(66,2,1),(66,3,1),(66,4,1),
       (67,1,1),(67,2,1),(67,3,1),(67,4,1),
       (68,1,1),(68,2,1),(68,3,1),(68,4,1),
       (69,1,1),(69,2,1),(69,3,1),(69,4,1),
       (70,1,1),(70,2,1),(70,3,1),(70,4,1),
       (71,1,1),(71,2,1),(71,3,1),(71,4,1),
       (72,1,1),(72,2,1),(72,3,1),(72,4,1),
       (73,1,1),(73,2,1),(73,3,1),(73,4,1),
       (74,1,1),(74,2,1),(74,3,1),(74,4,1),
       (75,1,1),(75,2,1),(75,3,1),(75,4,1),
       (76,1,1),(76,2,1),(76,3,1),(76,4,1),
       (77,1,1),(77,2,1),(77,3,1),(77,4,1),
       (78,1,1),(78,2,1),(78,3,1),(78,4,1),
       (79,1,1),(79,2,1),(79,3,1),(79,4,1),
       (80,1,1),(80,2,1),(80,3,1),(80,4,1),
       (81,1,1),(81,2,1),(81,3,1),(81,4,1),
       (82,1,1),(82,2,1),(82,3,1),(82,4,1),
       (83,1,1),(83,2,1),(83,3,1),(83,4,1),
       (84,1,1),(84,2,1),(84,3,1),(84,4,1),
       (85,1,1),(85,2,1),(85,3,1),(85,4,1),
       (86,1,1),(86,2,1),(86,3,1),(86,4,1),
       (87,1,1),(87,2,1),(87,3,1),(87,4,1),
       (88,1,1),(88,2,1),(88,3,1),(88,4,1),
       (89,1,1),(89,2,1),(89,3,1),(89,4,1),
       (90,1,1),(90,2,1),(90,3,1),(90,4,1),
       (91,1,1),(91,2,1),(91,3,1),(91,4,1),
       (92,1,1),(92,2,1),(92,3,1),(92,4,1),
       (93,1,1),(93,2,1),(93,3,1),(93,4,1),
       (94,1,1),(94,2,1),(94,3,1),(94,4,1),
       (95,1,1),(95,2,1),(95,3,1),(95,4,1),
       (96,1,1),(96,2,1),(96,3,1),(96,4,1),
       (97,1,1),(97,2,1),(97,3,1),(97,4,1),
       (98,1,1),(98,2,1),(98,3,1),(98,4,1),
       (99,1,1),(99,2,1),(99,3,1),(99,4,1),
       (100,1,1),(100,2,1),(100,3,1),(100,4,1),
       (101,1,1),(101,2,1),(101,3,1),(101,4,1),
       (102,1,1),(102,2,1),(102,3,1),(102,4,1),
       (103,1,1),(103,2,1),(103,3,1),(103,4,1),
       (104,1,1),(104,2,1),(104,3,1),(104,4,1),
       (105,1,1),(105,2,1),(105,3,1),(105,4,1);

INSERT INTO vacaciones_disfrutadas(id_empleado, dias, fecha_inicio, fecha_final)
VALUES (1,1,'01/01/2021','02/01/2021'),
	   (3,1,'01/01/2021','02/01/2021'),
	   (5,1,'01/01/2021','02/01/2021'),
	   (10,8,'01/01/2021','09/01/2021');