# Ferretería Online

## Postgre

Requisitos:
1. Postgresql 11
2. PostGis
```sql
CREATE EXTENSION postgis; 
```
```sql
CREATE EXTENSION postgis_topology;
```
3. Pgrouting
```sql
CREATE EXTENSION pgrouting;
```
4. Importar el mapa de las calles
    1. Abrir PostGIS Shapefile Import/Export Manager
	2. Agregar el archivo MapaCostaRica/gis_osm_roads_free_1.shp 
	3. En Geo Column cambiar geom por the_geom
	4. En SRID ingresar 5367
	5. En opciones verificar que estén marcadas las opciones Create spatial index automatically after load y Load data using COPY rather than INSERT
	6. Terminar con click en Import 
5. Conectar las calles del mapa, hacer un mapa con los vertices
    ```sql
    ALTER TABLE gis_osm_roads_free_1 ADD COLUMN source integer;
    ALTER TABLE gis_osm_roads_free_1 ADD COLUMN target integer;
    SELECT pgr_createtopology('gis_osm_roads_free_1',0.00001,'geom','gid');
    ```
6. Unicar los nombres de la tabla geom de ambas tablas, en este caso de la primera con la segunda
```sql
ALTER TABLE gis_osm_roads_free_1 RENAME COLUMN geom TO the_geom;
```