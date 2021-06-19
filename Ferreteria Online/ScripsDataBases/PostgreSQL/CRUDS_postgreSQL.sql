CREATE OR REPLACE FUNCTION crear_ruta(pdescripcion VARCHAR(200)) RETURNS void AS
$$
	INSERT INTO ruta(descripcion) VALUES (pdescripcion);
$$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION actualizar_ruta (pId_ruta INTEGER, pdescripcion VARCHAR(200))
RETURNS void AS
$$
	UPDATE ruta SET descripcion = pdescripcion 
	WHERE id_ruta = pId_ruta;
$$ LANGUAGE sql;


CREATE OR REPLACE FUNCTION eliminar_ruta(pId_ruta INTEGER) 
RETURNS VOID AS
$$
	DELETE FROM ruta 
	WHERE pId_ruta = id_ruta;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION ver_ruta(pId_ruta INTEGER) 
RETURNS setof record AS
$$
	SELECT id_ruta,descripcion FROM ruta 
	WHERE pId_ruta = id_ruta;
$$ LANGUAGE SQL;



CREATE OR REPLACE FUNCTION crear_direccion(pUbicacion GEOMETRY) RETURNS void AS
$$
	INSERT INTO direccion(ubicacion) VALUES (pUbicacion);
$$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION actualizar_direccion (pId_direccion INTEGER, pUbicacion GEOMETRY)
RETURNS void AS
$$
	UPDATE direccion SET ubicacion = pUbicacion 
	WHERE id_direccion = pId_direccion;
$$ LANGUAGE sql;


CREATE OR REPLACE FUNCTION eliminar_direccion(pId_direccion INTEGER) 
RETURNS VOID AS
$$
	DELETE FROM direccion 
	WHERE pId_direccion = id_direccion;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION ver_direccion(pId_direccion INTEGER) 
RETURNS setof record AS
$$
	SELECT ubicacion FROM direccion 
	WHERE pId_direccion = id_direccion;
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION crear_punto_x_ruta(pid_ruta INTEGER, pid_direccion INTEGER) RETURNS void AS
$$
	INSERT INTO Punto_x_ruta(id_ruta,id_direccion) VALUES (pid_ruta,pid_direccion);
$$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION actualizar_punto_x_ruta (pId_punto_x_ruta INTEGER,pId_direccion INTEGER, pId_ruta INTEGER)
RETURNS void AS
$$
	UPDATE Punto_x_ruta SET (id_ruta,id_direccion) = (pId_ruta,pId_direccion) 
	WHERE id_punto_x_ruta = pId_punto_x_ruta;
$$ LANGUAGE sql;


CREATE OR REPLACE FUNCTION eliminar_punto_x_ruta(pId_punto_x_ruta INTEGER) 
RETURNS VOID AS
$$
	DELETE FROM Punto_x_ruta 
	WHERE id_punto_x_ruta = pId_punto_x_ruta;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION ver_punto_x_ruta(pId_punto_x_ruta INTEGER) 
RETURNS setof record AS
$$
	SELECT id_punto_x_ruta, id_ruta, id_direccion FROM Punto_x_ruta 
	WHERE pId_punto_x_ruta = id_punto_x_ruta;
$$ LANGUAGE SQL;


--flotilla

CREATE OR REPLACE FUNCTION crear_flotilla(pid_ferreteria INTEGER) RETURNS void AS
$$
	INSERT INTO flotilla(id_ferreteria) VALUES (pid_ferreteria);
$$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION actualizar_flotilla (pId_flotilla INTEGER,pid_ferreteria INTEGER)
RETURNS void AS
$$
	UPDATE flotilla SET id_ferreteria = pid_ferreteria
	WHERE id_flotilla = pId_flotilla;
$$ LANGUAGE sql;


CREATE OR REPLACE FUNCTION eliminar_flotilla(pId_flotilla INTEGER) 
RETURNS VOID AS
$$
	DELETE FROM flotilla 
	WHERE id_flotilla = pId_flotilla;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION ver_flotilla(pId_flotilla INTEGER) 
RETURNS setof record AS
$$
	SELECT id_ferreteria FROM flotilla 
	WHERE id_flotilla = pId_flotilla;
$$ LANGUAGE SQL;


--vehiculo

CREATE OR REPLACE FUNCTION crear_vehiculo(pid_chofer INTEGER, pid_flotilla INTEGER, pplaca INTEGER,pdescripcion VARCHAR(200), KmL DECIMAL) RETURNS void AS
$$
	INSERT INTO vehiculo(id_chofer, id_flotilla, placa, descripcion,km_L) VALUES (pid_chofer, pid_flotilla, pplaca, pdescripcion, KmL);
$$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION actualizar_vehiculo(pId_vehiculo INTEGER,pid_chofer INTEGER, pid_flotilla INTEGER, pplaca INTEGER,pdescripcion VARCHAR(200),KmL DECIMAL)
RETURNS void AS
$$
	UPDATE vehiculo SET (id_chofer , id_flotilla , placa ,descripcion, km_L) = (pid_chofer , pid_flotilla , pplaca ,pdescripcion,KmL) 
	WHERE id_vehiculo = pId_vehiculo;
$$ LANGUAGE sql;


CREATE OR REPLACE FUNCTION eliminar_vehiculo(pId_vehiculo INTEGER) 
RETURNS VOID AS
$$
	DELETE FROM vehiculo 
	WHERE id_vehiculo = pId_vehiculo;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION ver_vehiculo(pId_vehiculo INTEGER) 
RETURNS setof record AS
$$
	SELECT id_chofer, id_flotilla, placa, descripcion, km_L FROM vehiculo 
	WHERE id_vehiculo = pId_vehiculo;
$$ LANGUAGE SQL;

--entrega_domicilio

CREATE OR REPLACE FUNCTION crear_entrega_domicilio(pid_vehiculo INTEGER, pid_ruta INTEGER, pfecha TIMESTAMP WITHOUT TIME ZONE, pdistancia DECIMAL) RETURNS void AS
$$
	INSERT INTO entrega_domicilio(id_vehiculo, id_ruta, fecha, distancia) VALUES (pid_vehiculo, pid_ruta, pfecha, pdistancia);
$$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION actualizar_entrega_domicilio(pId_entrega INTEGER, pid_vehiculo INTEGER, pid_ruta INTEGER, pfecha TIMESTAMP WITHOUT TIME ZONE, pdistancia DECIMAL)
RETURNS void AS
$$
	UPDATE entrega_domicilio SET (id_vehiculo, id_ruta, fecha, distancia) = (pid_vehiculo, pid_ruta, pfecha, pdistancia) 
	WHERE id_entrega = pId_entrega;
$$ LANGUAGE sql;


CREATE OR REPLACE FUNCTION eliminar_entrega_domicilio(pId_entrega INTEGER) 
RETURNS VOID AS
$$
	DELETE FROM entrega_domicilio 
	WHERE id_entrega = pId_entrega;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION ver_entrega_domicilio(pId_entrega INTEGER) 
RETURNS setof record AS
$$
	SELECT id_entrega, id_vehiculo, id_ruta, fecha, distancia FROM entrega_domicilio 
	WHERE id_entrega = pId_entrega;
$$ LANGUAGE SQL;

--multa

CREATE OR REPLACE FUNCTION crear_multa (pid_entrega INTEGER, pmonto INTEGER, pdescripcion VARCHAR(200)) RETURNS void AS
$$
	INSERT INTO multa(id_entrega, monto, descripcion) VALUES (pid_entrega, pmonto, pdescripcion);
$$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION actualizar_multa(pid_multa INTEGER, pid_entrega INTEGER, pmonto INTEGER, pdescripcion VARCHAR(200))
RETURNS void AS
$$
	UPDATE multa SET (id_entrega, monto, descripcion) = (pid_entrega, pmonto, pdescripcion) 
	WHERE pid_multa = pid_multa;
$$ LANGUAGE sql;


CREATE OR REPLACE FUNCTION eliminar_multa(pid_multa INTEGER) 
RETURNS VOID AS
$$
	DELETE FROM multa 
	WHERE id_multa = pid_multa;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION ver_multa(pid_multa INTEGER) 
RETURNS setof record AS
$$
	SELECT id_multa, id_entrega, monto, descripcion FROM multa 
	WHERE id_multa = pid_multa;
$$ LANGUAGE SQL;

