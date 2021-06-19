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

INSERT INTO flotilla(id_ferreteria, activo)
VALUES (1,true),(2,true),(3,true),(4,true),(5,true),(6,true),(7,true);

INSERT INTO ruta (descripcion, activo)
VALUES ('ruta1',true),('ruta2',true),('ruta3',true),('ruta4',true);

INSERT INTO vehiculo(id_chofer, id_flotilla, placa, descripcion, km_L, activo)
VALUES (1,1,1111,'descripcion1', 10, true),
	   (2,2,2222,'descripcion2', 9, true),
	   (7,3,3333,'descripcion3', 8, true),
	   (8,4,4444,'descripcion4', 10, true),
	   (13,5,5555,'descripcion5', 15, true),
	   (14,6,6666,'descripcion6', 25, true);


INSERT INTO entrega_domicilio(id_vehiculo, id_ruta, fecha, distancia, activo)
VALUES(1, 1, '07/01/2021', 50, true),
	  (2, 2, '07/04/2021', 70, true),
	  (3, 3, '07/08/2021', 40, true); 


INSERT INTO detalle_entrega(id_entrega, id_venta, recibido, activo)
VALUES (1,1,true,true),(1,2,true,true),
	   (2,11,true,true),(2,12,true,true),
	   (3,6,true,true),(3,5,true,true);

INSERT INTO direccion (ubicacion, activo, descripcion)
VALUES ('POINT(5 5)',true,'descripcion1'),
       ('POINT(8 8)',true,'descripcion2'),
       ('POINT(7 7)',true,'descripcion3'),
       ('POINT(12 12)',true,'descripcion4'),
       ('POINT(2 5)',true,'descripcion5'),
       ('POINT(5 2)',true,'descripcion6'),
       ('POINT(5 9)',true,'descripcion7'),
       ('POINT(9 5)',true,'descripcion8'),
       ('POINT(5 56)',true,'descripcion9'),
       ('POINT(54 56)',true,'descripcion10');

INSERT INTO direccion_x_cliente(id_cliente, id_direccion, activo)
VALUES (1, 1, true), (1, 2, true),
	   (2, 3, true), (2, 4, true),
	   (3, 5, true), (3, 6, true),
	   (4, 7, true), (4, 8, true),
	   (5, 9, true), (5, 10, true);

INSERT INTO multa(id_entrega, monto, descripcion, activo)
VALUES (1,460000,'descripcion1',true);


INSERT INTO punto_x_ruta(id_ruta, id_direccion, activo)
VALUES (1,1,true),(1,2,true),
	   (2,3,true),(2,4,true),
	   (3,5,true),(3,2,true),
	   (4,1,true),(4,2,true),(4,3,true),(4,6,true);