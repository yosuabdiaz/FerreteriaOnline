
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;

CREATE TABLE ruta
(
    id_ruta             SERIAL NOT NULL,
    descripcion         VARCHAR(200) NOT NULL,
    activo              BOOLEAN NOT NULL
);


ALTER TABLE ruta
    ADD CONSTRAINT pk_ruta PRIMARY KEY (id_ruta);

CREATE TABLE direccion
(
    id_direccion      SERIAL NOT NULL,
    ubicacion         GEOMETRY NOT NULL,
    activo              BOOLEAN NOT NULL,
    descripcion       VARCHAR(200) NOT NULL
);

ALTER TABLE direccion
    ADD CONSTRAINT pk_direccion PRIMARY KEY (id_direccion);


CREATE TABLE Punto_x_ruta
(
    id_punto_x_ruta     SERIAL NOT NULL,
    id_ruta         INTEGER NOT NULL,
    id_direccion        INTEGER NOT NULL,
    activo              BOOLEAN NOT NULL

);
ALTER TABLE Punto_x_ruta
    ADD CONSTRAINT pk_punto_x_ruta PRIMARY KEY (id_punto_x_ruta);

ALTER TABLE Punto_x_ruta
    ADD CONSTRAINT fk_ruta  FOREIGN KEY (id_ruta)
    REFERENCES ruta (id_ruta);

ALTER TABLE Punto_x_ruta
    ADD CONSTRAINT fk_direccion  FOREIGN KEY (id_direccion)
    REFERENCES direccion (id_direccion);



    
CREATE TABLE flotilla
(
    id_flotilla      SERIAL NOT NULL,
    id_ferreteria   INTEGER NOT NULL,
    activo              BOOLEAN NOT NULL

);

ALTER TABLE flotilla
    ADD CONSTRAINT pk_flotilla PRIMARY KEY (id_flotilla);
    

CREATE TABLE vehiculo
(
    id_vehiculo     SERIAL NOT NULL,
    id_chofer       INTEGER NOT NULL,
    id_flotilla     INTEGER NOT NULL,
    placa           INTEGER NOT NULL,
    descripcion     VARCHAR(200) NOT NULL,
    km_L            DECIMAL NOT NULL,
    activo              BOOLEAN NOT NULL

);


ALTER TABLE vehiculo
    ADD CONSTRAINT pk_vehiculo PRIMARY KEY (id_vehiculo);
ALTER TABLE vehiculo
    ADD CONSTRAINT fk_flota  FOREIGN KEY (id_flotilla)
    REFERENCES flotilla (id_flotilla);

    
CREATE TABLE entrega_domicilio
(
    id_entrega      SERIAL NOT NULL,
    id_vehiculo         INTEGER NOT NULL,
    id_ruta     INTEGER NOT NULL,
    fecha       TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    distancia DECIMAL NOT NULL,
    activo              BOOLEAN NOT NULL

);

ALTER TABLE entrega_domicilio
    ADD CONSTRAINT pk_entrega_domicilio PRIMARY KEY (id_entrega);
ALTER TABLE entrega_domicilio
    ADD CONSTRAINT fk_vehiculo  FOREIGN KEY (id_vehiculo)
    REFERENCES vehiculo (id_vehiculo);
ALTER TABLE entrega_domicilio
    ADD CONSTRAINT fk_ruta  FOREIGN KEY (id_ruta)
    REFERENCES ruta (id_ruta);


CREATE TABLE detalle_entrega
(
    id_detalle      SERIAL NOT NULL,
    id_entrega      INTEGER NOT NULL,
    id_venta        INTEGER NOT NULL,
    recibido        BOOLEAN NOT NULL,
    activo              BOOLEAN NOT NULL

);

ALTER TABLE detalle_entrega
    ADD CONSTRAINT pk_detalle_entrega PRIMARY KEY (id_detalle);
ALTER TABLE detalle_entrega
    ADD CONSTRAINT fk_entrega  FOREIGN KEY (id_entrega)
    REFERENCES entrega_domicilio (id_entrega);


CREATE TABLE cliente
(
    id_cliente      SERIAL NOT NULL,
    nombre          VARCHAR(40) NOT NULL,
    correo          VARCHAR (40) NOT NULL,
    metodo_Pago     INTEGER NOT NULL,
    puntuacion      INTEGER NOT NULL,
    activo              BOOLEAN NOT NULL

);

ALTER TABLE cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente);


CREATE TABLE direccion_x_cliente
(
    id_direccion_x_cliente      SERIAL NOT NULL,
    id_cliente         INTEGER NOT NULL,
    id_direccion       INTEGER NOT NULL,
    activo              BOOLEAN NOT NULL

);

ALTER TABLE direccion_x_cliente
    ADD CONSTRAINT pk_direccion_cliente PRIMARY KEY (id_direccion_x_cliente);
ALTER TABLE direccion_x_cliente
    ADD CONSTRAINT fk_cliente  FOREIGN KEY (id_cliente)
    REFERENCES cliente (id_cliente);
ALTER TABLE direccion_x_cliente
    ADD CONSTRAINT fk_direccion  FOREIGN KEY (id_direccion)
    REFERENCES direccion (id_direccion);

CREATE TABLE multa
(
    id_multa       SERIAL NOT NULL,
    id_entrega     INTEGER NOT NULL,
    monto          INTEGER NOT NULL,
    descripcion    VARCHAR(200),
    activo              BOOLEAN NOT NULL

);

ALTER TABLE multa
    ADD CONSTRAINT pk_multa PRIMARY KEY (id_multa);

ALTER TABLE multa
    ADD CONSTRAINT fk_entrega  FOREIGN KEY (id_entrega)
    REFERENCES entrega_domicilio (id_entrega);
