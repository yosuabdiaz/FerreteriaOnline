USE FerreteriaOnline

--Buscar Producto por cualquier caracteristica

CREATE PROCEDURE Buscar_Producto
	@inid_Producto INT,
	@inid_marca INT, 
    @inid_Provedor INT,
    @in_Codigo INT,
    @in_Precio MONEY,
    @inid_Garantia INT, 
    @in_Descripcion VARCHAR(200),
    @inid_aspectos_tecnicos  INT,
    @inid_contraindicaciones INT,
    @inid_utilidades INT,
    @inid_cuidados INT,
    @in_Nombre_Proveedor VARCHAR(200),
    @in_Nombre_Marca VARCHAR(200),
    @in_Tiempo_Garantia INT,
    @inid_Ferreteria INT

AS   
	BEGIN 
        SELECT ProductoDetalles.id_producto AS Producto,
		Marca.nombre AS Marca,
        Proveedor.nombre AS Proovedor,
		Producto.codigo AS Cod,
        Producto.precio AS Precio,
		Garantia.tiempo_garantia,
        Producto.descripcion AS Descripcion,
		Aspecto_Tecnico.descripcion AS Aspecto_Tecnico,
        Contraindicacion.descripcion AS Contraindicacion,
        Utilidad.descripcion AS Utilidad,
		Cuidado.descripcion AS Cuidado,
        Inventario_Ferreteria.id_ferreteria AS Ferreteria
        FROM Producto 
		INNER JOIN ProductoDetalles
        ON ProductoDetalles.id_producto = Producto.id_producto
        INNER JOIN Marca
        ON Marca.id_marca = Producto.id_marca
        INNER JOIN Proveedor
        ON ProductoDetalles.id_provedor = Proveedor.id_provedor
        INNER JOIN Garantia
        ON Garantia.id_garantia = Producto.id_garantia
        INNER JOIN Aspecto_Tecnico
        ON Aspecto_Tecnico.id_aspecto_tecnico = ProductoDetalles.id_aspectos_tecnicos
        INNER JOIN Contraindicacion
        ON Contraindicacion.id_contraindicacion = ProductoDetalles.id_contraindicaciones
        INNER JOIN Utilidad
        ON Utilidad.id_utilidad = ProductoDetalles.id_utilidades
        INNER JOIN Cuidado
        ON Cuidado.id_cuidado = ProductoDetalles.id_cuidados
        INNER JOIN Inventario_Ferreteria
        ON Inventario_Ferreteria.id_producto = ProductoDetalles.id_producto
        WHERE Producto.id_producto = ISNULL(@inid_Producto,Producto.id_producto)
        AND Producto.id_marca = ISNULL(@inid_marca,Producto.id_marca)
        AND ProductoDetalles.id_provedor = ISNULL(@inid_Provedor,ProductoDetalles.id_provedor)
        AND Producto.codigo = ISNULL(@in_Codigo,Producto.codigo)
        AND Producto.precio = ISNULL(@in_Precio,Producto.precio)
        AND Producto.id_garantia = ISNULL(@inid_Garantia,Producto.id_garantia)
        AND Producto.descripcion = ISNULL(@in_Descripcion,Producto.descripcion)
        AND ProductoDetalles.id_aspectos_tecnicos = ISNULL(@inid_aspectos_tecnicos,ProductoDetalles.id_aspectos_tecnicos)
        AND ProductoDetalles.id_contraindicaciones = ISNULL(@inid_contraindicaciones,ProductoDetalles.id_contraindicaciones)
        AND ProductoDetalles.id_utilidades = ISNULL(@inid_utilidades,ProductoDetalles.id_utilidades)
        AND ProductoDetalles.id_cuidados = ISNULL(@inid_cuidados,ProductoDetalles.id_cuidados)
        AND Marca.nombre = ISNULL(@in_Nombre_Marca,Marca.nombre)
        AND Proveedor.nombre = ISNULL(@in_Nombre_Proveedor,Proveedor.nombre)
        AND Garantia.tiempo_garantia = ISNULL(@in_Tiempo_Garantia,Garantia.tiempo_garantia)
        AND Inventario_Ferreteria.id_ferreteria = ISNULL(@inid_Ferreteria,Inventario_Ferreteria.id_ferreteria)
	END
GO

--Buscar Producto por una parte de la descripcion

CREATE Procedure Buscar_Producto_Parte_Descripcion
    @in_Parte_Descripcion VARCHAR(200)
AS
    BEGIN
        SELECT Producto.id_producto, Marca.nombre AS Marca,
        Proveedor.nombre AS Proovedor, Producto.codigo,
        Producto.precio, Garantia.tiempo_garantia,
        Producto.descripcion, Aspecto_Tecnico.descripcion AS Aspecto_Tecnico,
        Contraindicacion.descripcion AS Contraindicacion,
        Utilidad.descripcion AS Utilidad, Cuidado.descripcion AS Cuidado
        FROM Producto
        INNER JOIN Marca
        ON Marca.id_marca = Producto.id_marca
        INNER JOIN Proveedor
        ON Producto.idprovedor = ProductoDetalles.id_provedor
        INNER JOIN Garantia
        ON Garantia.id_garantia = Producto.id_garantia
        INNER JOIN Aspecto_Tecnico
        ON Aspecto_Tecnico.id_aspecto_tecnico = ProductoDetalles.id_aspectos_tecnicos
        INNER JOIN Contraindicacion
        ON Contraindicacion.id_contraindicacion = ProductoDetalles.id_contraindicaciones
        INNER JOIN Utilidad
        ON Utilidad.id_utilidad = ProductoDetalles.id_utilidades
        INNER JOIN Cuidado
        ON Cuidado.id_cuidado = ProductoDetalles.id_cuidados
        WHERE CONTAINS(Producto.descripcion,@in_Parte_Descripcion)
    END
GO 

-- Buscar mejor vendedor por fechas

CREATE Procedure Buscar_Mejor_Vendedor
    @in_Fecha_Inicial DATE,
    @in_Fecha_Final DATE,
    @inid_Ferreteria INT

AS
    BEGIN
        SELECT TOP 1 Venta.id_vendedor, SUM(Venta.monto) AS Total
        FROM Venta
        GROUP BY Venta.id_vendedor
        HAVING Venta.id_ferreteria =  ISNULL(@inid_Ferreteria,Venta.id_ferreteria)
        AND Venta.fecha <= ISNULL(@in_Fecha_Final,Venta.fecha)
        AND Venta.fecha >= ISNULL(@in_Fecha_Inicial,Venta.fecha)
        ORDER BY Total DESC
    END
GO

--ver amolestaciones por chofer, sucursal y/o fechas

CREATE Procedure Ver_Amolestaciones
    @inid_Chofer INT, 
    @inid_Ferreteria INT,
    @in_Fecha_Final DATE,
    @in_Fecha_Inicial DATE

AS
    BEGIN
        SELECT Empleado.id_empleado, Empleado.nombre,
            Empleado.carnet, Amonestacion.descripcion AS Amonestacion
        FROM Empleado
        INNER JOIN Amonestacion_x_empleado
        ON Empleado.idEmpleado = Amonestacion_x_empleado.id_empleado
        INNER JOIN Amonestacion
        ON Amonestacion_x_empleado.id_amonestacion = Amonestacion.id_amonestacion
        INNER JOIN Ferreteria_x_Empleado
        ON Empleado.id_empleado = Ferreteria_x_Empleado.id_empleado
        WHERE Empleado.id_empleado = ISNULL(@inid_Chofer,Empleado.id_Empleado)
        AND Ferreteria_x_Empleado.id_ferreteria = ISNULL(@inid_Ferreteria,Ferreteria_x_Empleado.id_ferreteria)
        AND Amonestacion_x_empleado.fecha >= ISNULL(@in_Fecha_Inicial,Amonestacion_x_empleado.fecha)
        AND Amonestacion_x_empleado.fecha <= ISNULL(@in_Fecha_Final,Amonestacion_x_empleado.fecha)
    END
GO

--ver cantidad de vacaciones por empleado

CREATE PROCEDURE Ver_Vacaciones_Empleado
    @inid_Empleado INT,
    @in_Fecha_Final DATE,
    @in_Fecha_Inicial DATE
AS
    BEGIN
    SELECT Empleado.id_empleado, Empleado.nombre,
    Empleado.carnet, Vacaciones_disfrutadas.dias,
    Vacaciones_disfrutadas.fecha_inicio, 
    Vacaciones_disfrutadas.fecha_final
    FROM Empleado
    INNER JOIN Vacaciones_disfrutadas
    ON Vacaciones_disfrutadas.id_empleado = Empleado.id_empleado
    WHERE Empleado.id_empleado = ISNULL(@inid_Empleado,Empleado.id_empleado)
    AND Vacaciones_disfrutadas.fecha_inicio >= ISNULL(@in_Fecha_Inicial,Vacaciones_disfrutadas.fecha_inicio)
    AND Vacaciones_disfrutadas.fecha_final <= ISNULL(@in_Fecha_Final,Vacaciones_disfrutadas.fecha_final)
    END
GO

--calculo de vacacionesxempleado

CREATE procedure Calcular_Vacaciones
    @inid_Empleado INT,
    @baseVacaciones INT

AS
    BEGIN
        SELECT ((( YEAR(Empleado.fecha_ingreso) - 1 ) / 4 ) * 2) + @baseVacaciones AS Vacaciones_Calculadas,
        Empleado.carnet, Empleado.nombre
        FROM Empleado
        WHERE Empleado.id_empleado = ISNULL(@inid_Empleado,Empleado.id_empleado)
    END
GO 

--Premiación de empleados, validar amonestaciones

CREATE procedure Calcular_Preamicion
    @inid_Ferreteria INT, 
    @in_Fecha_Inicial DATE,
    @in_Fecha_Final DATE
AS
    BEGIN
        SELECT Empleado.nombre,Empleado.id_empleado, Empleado.carnet,
        SUM(Ventas.monto) AS Total_Ventas, 
        Sum(Amonestacion_x_empleado.id_empleado) AS Total_Amolestaciones
        FROM Empleado
        INNER JOIN Ferreteria_x_Empleado
        ON Ferreteria_x_Empleado.id_empleado = Empleado.id_empleado
        INNER JOIN Venta
        ON Venta.idVendedor = Empleado.id_empleado
        INNER JOIN Amonestacion_x_empleado
        ON Amonestacion_x_empleado.id_empleado = Empleado.id_empleado
        GROUP BY Empleado.id_empleado
        HAVING Total_Amolestaciones = 0
        AND Amonestacion_x_empleado.fecha BETWEEN @in_Fecha_Inicial AND @in_Fecha_Final
        AND Venta.fecha BETWEEN @in_Fecha_Inicial AND @in_Fecha_Final
        AND Ferreteria_x_Empleado.id_ferreteria = ISNULL(@inid_Ferreteria,Ferreteria_x_Empleado.id_ferreteria) 
        ORDER BY Total_Ventas DESC
    END 
GO 

--Recibido de los productos por parte del cliente

CREATE PROCEDURE Recibido_Cliente
    @inid_Venta INT

AS
    BEGIN
        UPDATE Detalle_Entrega
        SET recibido = 1
        WHERE id_venta = @inid_Venta
    END
GO

--Reporte de ganancias, sucursal y productos

CREATE PROCEDURE reporte

AS
    BEGIN
        SELECT Venta.id_ferreteria, Detalle_Venta.id_producto,
        SUM(Producto.precio) * Detalle_Venta.cantidad AS Monto
        FROM Venta
        INNER JOIN Inventario_Ferreteria
        ON Inventario_Ferreteria.id_ferreteria = Venta.id_ferreteria
        INNER JOIN Detalle_Venta
        ON Detalle_Venta.id_venta = Venta.id_venta
        INNER JOIN Producto
        ON Producto.id_producto = Detalle_Venta.id_producto
        GROUP BY CUBE (Venta.id_ferreteria, Detalle_Venta.id_producto, Monto)
    END
GO

-- Crear compra, devuelve id 

CREATE PROCEDURE Crear_Compra
    @inid_Cliente INT,
    @inid_Tipo_Venta INT,
    @inid_Ferreteria INT, 
    @inid_Vendedor INT, 
    @in_Fecha DATE,
    @in_Monto MONEY 

AS
    BEGIN
        INSERT INTO Venta (id_cliente, id_tipo_venta, id_ferreteria, id_vendedor, fecha, monto, activo)
        VALUES(@inid_Cliente, @inid_Tipo_Venta, @inid_Ferreteria, @inid_Vendedor, @in_Fecha, @in_Monto, 1)
        DECLARE @id_Venta INT
        SET @id_Venta = (
            SELECT TOP 1 id_venta 
            FROM Venta 
            WHERE id_cliente = @inid_Cliente
            AND id_tipo_venta = @inid_Tipo_Venta
            AND id_ferreteria = @inid_Ferreteria
            AND fecha = @in_Fecha
            AND in_Monto = @in_Monto
            )
        RETURN @id_Venta
    END
GO

--Agregar producto a compra

CREATE PROCEDURE Agregar_Detalle_Venta
    @inid_venta INT, 
    @inid_producto INT, 
    @in_cantidad INT
AS
    BEGIN
        INSERT INTO Detalle_Venta (id_venta,id_producto,cantidad,activo)
        VALUES(@inid_venta,@inid_producto,@in_cantidad,1)
    END
GO 

-- Crear lista deseos, devuelve id 

CREATE PROCEDURE Crear_Lista_deseos
    @inid_Cliente INT,
    @inid_Vendedor INT, 
    @in_Fecha DATE

AS
    BEGIN
        INSERT INTO Venta (id_cliente, id_vendedor, fecha, activo, entregado)
        VALUES(@inid_Cliente, @inid_Vendedor, @in_Fecha, 1, 0)
        DECLARE @id_Venta INT
        SET @id_Venta = (
            SELECT TOP 1 id_venta 
            FROM Venta 
            WHERE id_cliente = @inid_Cliente
            AND fecha = @in_Fecha
            AND entregado = 0
            AND id_vendedor = @inid_Vendedor
            )
        RETURN @id_Venta
    END
GO

--Agregar producto a compra

CREATE PROCEDURE Agregar_Detalle_Lista_deseos
    @inid_lista INT, 
    @inid_producto INT, 
    @in_cantidad INT
AS
    BEGIN
        INSERT INTO Detalle_lista_deseos (id_venta,id_producto,cantidad,activo)
        VALUES(@inid_venta,@inid_producto,@in_cantidad,1)
    END
GO 