CREATE TABLE hechos_ventas_libros (
    id_venta INT NOT NULL,
    id_tiempo INT NOT NULL,
    id_libro INT NOT NULL,
    id_cliente INT NOT NULL,
    id_tienda INT NOT NULL,
    cantidad INT,
    precio_total INT,
    CONSTRAINT venta PRIMARY KEY (id_venta)   
);


CREATE TABLE dim_tiempo (
    id_tiempo INT NOT NULL,
    año INT,
    mes INT,
    dia INT,
    trimestre INT,
    CONSTRAINT tiempo PRIMARY KEY (id_tiempo)
);

CREATE TABLE dim_libro (
    id_libro INT NOT NULL,
    titulo CHAR(100),
    autor CHAR(100),
    genero CHAR(100),
    precio_unitario INT,
    CONSTRAINT libro PRIMARY KEY (id_libro)
);

CREATE TABLE dim_cliente (
    id_cliente INT NOT NULL,
    nombre_cliente CHAR(100),
    edad INT,
    genero CHAR(1),
    ciudad CHAR(20),
    CONSTRAINT cliente PRIMARY KEY (id_cliente)
);

CREATE TABLE dim_tienda (
    id_tienda INT NOT NULL,
    nombre_tienda CHAR(30),
    ciudad CHAR(30),
    pais CHAR(30),
    CONSTRAINT tienda PRIMARY KEY (id_tienda)
);
