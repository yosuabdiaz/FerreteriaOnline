CREATE OR REPLACE FUNCTION obtenerVertice(geom geometry) 
RETURNS setof integer AS
$$
	SELECT id FROM gis_osm_roads_free_1_vertices_pgr
	ORDER BY ST_Distance(ST_SetSRID(geom,5367),the_geom) ASC
	LIMIT 1
$$ LANGUAGE SQL;

-- Se utiliza obtener vertice para obtener el punto de partida y los puntos de entrega. 
CREATE OR REPLACE FUNCTION obtenerRuta(partida integer, entregas int[]) 
RETURNS setof record AS
$$
	SELECT * FROM pgr_dijkstra(
		'SELECT gid AS id, source, target, ST_Length(the_geom) AS cost FROM gis_osm_roads_free_1',
		partida, entregas,
		FALSE
	);
$$ LANGUAGE SQL;

