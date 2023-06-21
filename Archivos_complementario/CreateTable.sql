drop database techmarket;
create database techmarket;
USE techmarket;

CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    correo_electrónico VARCHAR(50) NOT NULL,
    contraseña VARCHAR(50) NOT NULL,
    cedula VARCHAR(50) NOT NULL,
    direccion_envio VARCHAR(100),
    datos_pago VARCHAR(100),
    PRIMARY KEY (id_usuario)
);

CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT,
	id_inventario INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    precio DECIMAL(10,2) NOT NULL,
    imagen VARCHAR(100),                
    categoria VARCHAR(50),
    proveedor VARCHAR(50),
    cantidad_disponible INT NOT NULL,
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario)
);

CREATE TABLE Carrito_compras (
    id_carrito INT AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    id_cupon INT NOT NULL,
    cantidad INT NOT NULL,
    precio_total DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_carrito),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_cupon) REFERENCES Cupones_descuento(id_cupon)
);

CREATE TABLE Cupones_descuento (
    id_cupon INT AUTO_INCREMENT,
    codigo VARCHAR(50) NOT NULL,
    descuento DECIMAL(10,2) NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    PRIMARY KEY (id_cupon)
);

CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    fecha_pedido DATE NOT NULL,
    estado_pedido VARCHAR(20) NOT NULL,
    total_pedido DECIMAL(10,2) NOT NULL,
    fecha_envio DATE NOT NULL,
    fecha_entrega DATE NOT NULL,
    fecha_estimada DATE NOT NULL,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Productos_pedidos (
    id_producto INT NOT NULL,
    id_pedido INT NOT NULL,
    cantidad INT NOT NULL,
    precio_total DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_producto, id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

CREATE TABLE Inventario (
    id_inventario INT AUTO_INCREMENT,
    cantidad_disponible INT NOT NULL,
    PRIMARY KEY (id_inventario)
);

CREATE TABLE Productos_carrito (
    id_producto INT NOT NULL,
    id_carrito INT NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY (id_producto, id_carrito),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    FOREIGN KEY (id_carrito) REFERENCES Carrito_compras(id_carrito)
);