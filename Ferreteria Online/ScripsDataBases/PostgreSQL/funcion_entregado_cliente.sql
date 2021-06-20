CREATE OR REPLACE FUNCTION obtenerRuta(inid_Venta integer,) 
RETURNS void AS
$$
	UPDATE detalle_entrega
        SET recibido = 1
        WHERE id_venta = inid_Venta
$$ LANGUAGE SQL;