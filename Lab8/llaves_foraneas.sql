ALTER TABLE hechos_ventas_libros
ADD CONSTRAINT tiempo_venta FOREIGN KEY (id_tiempo) REFERENCES dim_tiempo (id_tiempo)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE hechos_ventas_libros
ADD CONSTRAINT venta_libro FOREIGN KEY (id_libro) REFERENCES dim_libro (id_libro)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE hechos_ventas_libros
ADD CONSTRAINT venta_cliente FOREIGN KEY (id_cliente) REFERENCES dim_cliente (id_cliente)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE hechos_ventas_libros
ADD CONSTRAINT venta_tienda FOREIGN KEY (id_tienda) REFERENCES dim_tienda (id_tienda)
    ON DELETE SET NULL ON UPDATE CASCADE;
