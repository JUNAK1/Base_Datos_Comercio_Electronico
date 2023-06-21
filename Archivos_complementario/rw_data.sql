CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT,
    id_inventario INT NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    descripcion VARCHAR(2000),
    precio DECIMAL(10,2) NOT NULL,
    imagen VARCHAR(200),
    origen VARCHAR(100),                 
    descuento VARCHAR(50),
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario)
);
ALTER TABLE mercadolibre_prodcutos ADD COLUMN id_inventario INT NOT NULL;
ALTER TABLE mercadolibre_prodcutos ADD COLUMN origen VARCHAR(100); 



ALTER TABLE mercadolibre_prodcutos
ADD FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario);

update mercadolibre_prodcutos
desc  mercadolibre_prodcutos;

RENAME TABLE mercadolibre_prodcutos TO Productos;
ALTER TABLE Productos CHANGE id id_producto INT AUTO_INCREMENT;


UPDATE mercadolibre_prodcutos SET id_inventario = REPLACE(id_inventario, 0, 2)
where id < 1000;
INSERT INTO Inventario (cantidad_disponible) VALUES (50), (100), (25), (10), (75), (200), (30), (50), (15), (80), (60), (40), (20), (100), (50), (70), (90), (200), (15), (25), (50), (40), (100), (30), (20), (10), (150), (80), (60), (35);










INSERT INTO Usuarios (nombre, correo_electrónico, contraseña, cedula, genero, edad, datos_pago)
VALUES
('Juan Perez', 'juanperez@example.com', 'juan123', '1234567890', 'Mas', '25',  'Visa, **** **** **** 1234'),
('Maria Rodriguez', 'mariarodriguez@example.com', 'maria456', '0987654321', 'Fem', '25','Mastercard, **** **** **** 5678'),
('Roberto Torres', 'robertotorres@example.com', 'roberto789', '1357908642', 'Mas', '29','American Express, **** **** **** 9012'),
('Laura Gomez', 'lauragomez@example.com', 'laura123', '2468013579', 'Fem', '20', 'PayPal, lauragomez@example.com'),
('Carlos Hernandez', 'carloshernandez@example.com', 'carlos456', '9753102468', 'Mas', '65',  'Visa, **** **** **** 3456'),
('Ana Fernandez', 'anafernandez@example.com', 'ana789', '8642097531', 'Fem', '26', 'Mastercard, **** **** **** 6789'),
('Daniel Torres', 'danieltorres@example.com', 'daniel123', '1235798642', 'Mas', '21',  'American Express, **** **** **** 0123'),
('Marta Garcia', 'martagarcia@example.com', 'marta456', '2468135790', 'Fem', '35','PayPal, martagarcia@example.com'),
('Pedro Rodriguez', 'pedrorodriguez@example.com', 'pedro789', '9753102468', 'Mas', '25', 'Visa, **** **** **** 7890'),
('Sofia Gonzalez', 'sofiagonzalez@example.com', 'sofia123', '8642097531',  'Fem', '25', 'Mastercard, **** **** **** 1234'),
('Julia Perez', 'juliaperez@example.com', 'julia456', '1357908642', 'Fem', '25','American Express, **** **** **** 5678'),
('Mario Castro', 'mariocastro@example.com', 'mario789', '2468013579', 'Mas', '52',  'PayPal, mariocastro@example.com'),
('Luisa Ramirez', 'luisaramirez@example.com', 'luisa123', '9753102468', 'Fem', '32', 'Visa, **** **** **** 9012'),
('David Garcia', 'davidgarcia@example.com', 'david456', '8642097531', 'Mas', '45', 'Mastercard, **** **** **** 3456');

INSERT INTO Usuarios (nombre, correo_electrónico, contraseña, cedula, genero, edad, datos_pago)
VALUES
('Juan Perez', 'juanperez@example.com', 'juan123', '1234567890', 'Mas', '25',  'Visa, **** **** **** 1234'),
('Maria Rodriguez', 'mariarodriguez@example.com', 'maria456', '0987654321', 'Fem', '25','Mastercard, **** **** **** 5678'),
('Roberto Torres', 'robertotorres@example.com', 'roberto789', '1357908642', 'Mas', '29','American Express, **** **** **** 9012'),
('Laura Gomez', 'lauragomez@example.com', 'laura123', '2468013579', 'Fem', '20', 'PayPal, lauragomez@example.com'),
('Carlos Hernandez', 'carloshernandez@example.com', 'carlos456', '9753102468', 'Mas', '65',  'Visa, **** **** **** 3456'),
('Ana Fernandez', 'anafernandez@example.com', 'ana789', '8642097531', 'Fem', '26', 'Mastercard, **** **** **** 6789'),
('Daniel Torres', 'danieltorres@example.com', 'daniel123', '1235798642', 'Mas', '21',  'American Express, **** **** **** 0123'),
('Marta Garcia', 'martagarcia@example.com', 'marta456', '2468135790', 'Fem', '35','PayPal, martagarcia@example.com'),
('Pedro Rodriguez', 'pedrorodriguez@example.com', 'pedro789', '9753102468', 'Mas', '25', 'Visa, **** **** **** 7890'),
('Sofia Gonzalez', 'sofiagonzalez@example.com', 'sofia123', '8642097531',  'Fem', '25', 'Mastercard, **** **** **** 1234'),
('Julia Perez', 'juliaperez@example.com', 'julia456', '1357908642', 'Fem', '25','American Express, **** **** **** 5678'),
('Mario Castro', 'mariocastro@example.com', 'mario789', '2468013579', 'Mas', '52',  'PayPal, mariocastro@example.com'),
('Luisa Ramirez', 'luisaramirez@example.com', 'luisa123', '9753102468', 'Fem', '32', 'Visa, **** **** **** 9012'),
('Juan Perez', 'juanperez@example.com', 'juan123', '1234567890', 'Mas', '25',  'Visa, **** **** **** 1234'),
('Maria Rodriguez', 'mariarodriguez@example.com', 'maria456', '0987654321', 'Fem', '25','Mastercard, **** **** **** 5678'),
('Roberto Torres', 'robertotorres@example.com', 'roberto789', '1357908642', 'Mas', '29','American Express, **** **** **** 9012'),
('Laura Gomez', 'lauragomez@example.com', 'laura123', '2468013579', 'Fem', '20', 'PayPal, lauragomez@example.com'),
('Carlos Hernandez', 'carloshernandez@example.com', 'carlos456', '9753102468', 'Mas', '65',  'Visa, **** **** **** 3456'),
('Ana Fernandez', 'anafernandez@example.com', 'ana789', '8642097531', 'Fem', '26', 'Mastercard, **** **** **** 6789'),
('Daniel Torres', 'danieltorres@example.com', 'daniel123', '1235798642', 'Mas', '21',  'American Express, **** **** **** 0123'),
('Marta Garcia', 'martagarcia@example.com', 'marta456', '2468135790', 'Fem', '35','PayPal, martagarcia@example.com'),
('Pedro Rodriguez', 'pedrorodriguez@example.com', 'pedro789', '9753102468', 'Mas', '25', 'Visa, **** **** **** 7890'),
('Sofia Gonzalez', 'sofiagonzalez@example.com', 'sofia123', '8642097531',  'Fem', '25', 'Mastercard, **** **** **** 1234'),
('Julia Perez', 'juliaperez@example.com', 'julia456', '1357908642', 'Fem', '25','American Express, **** **** **** 5678'),
('Mario Castro', 'mariocastro@example.com', 'mario789', '2468013579', 'Mas', '52',  'PayPal, mariocastro@example.com'),
('Luisa Ramirez', 'luisaramirez@example.com', 'luisa123', '9753102468', 'Fem', '32', 'Visa, **** **** **** 9012'),
('David Garcia', 'davidgarcia@example.com', 'david456', '8642097531', 'Mas', '45', 'Mastercard, **** **** **** 3456');


select * from Cupones_descuento;
INSERT INTO Cupones_descuento (codigo, descuento, fecha_vencimiento)
SELECT
  CONCAT(
    ELT(1 + FLOOR(RAND() * 6), 'DESCUENTO10', 'CUPON20OFF', 'OFERTA25', 'DESCUENTO50', 'REBAJA10','SANVALENTIN15'),
    LPAD(FLOOR(RAND() * 100), 2, '0')
  ) AS codigo,
  FLOOR(RAND() * (120000 - 10000 + 1)) + 10000 AS descuento,
  DATE_ADD('2022-01-01', INTERVAL FLOOR(RAND() * DATEDIFF('2023-08-31', '2022-01-01')) DAY) AS fecha_vencimiento
FROM
  (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6) AS a
  CROSS JOIN
  (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6) AS b
LIMIT 50;

-- Desactivar la restricción de clave externa para evitar errores de eliminación

INSERT INTO Carrito_compras (id_usuario, id_cupon, cantidad, precio_total)
SELECT 
  FLOOR(RAND() * 50) + 1 AS id_usuario,
  FLOOR(RAND() * 36) + 1 AS id_cupon,
   FLOOR(RAND() * 10) AS cantidad,
  FLOOR(RAND() * (10000000 - 200000 + 1)) + 200000 AS precio_total
 
FROM 
  (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) a,
  (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) b
LIMIT 70;

UPDATE Pedidos
SET total_pedido = FLOOR(RAND()*(9000000-300000+1))+300000
WHERE id_usuario < 500;
select * from Pedidos;
INSERT INTO Pedidos (id_usuario, fecha_pedido, estado_pedido, total_pedido, fecha_envio, fecha_entrega, fecha_estimada)
VALUES
(1, '2023-04-01', 'Pendiente', 50.00, '2023-04-02', '2023-04-05', '2023-04-07'),
(2, '2023-04-02', 'Enviado', 25.00, '2023-04-03', '2023-04-06', '2023-04-08'),
(3, '2023-04-03', 'Entregado', 100.00, '2023-04-04', '2023-04-07', '2023-04-09'),
(4, '2023-04-04', 'Pendiente', 50.00, '2023-04-05', '2023-04-08', '2023-04-10'),
(5, '2023-04-05', 'Enviado', 25.00, '2023-04-06', '2023-04-09', '2023-04-11'),
(6, '2023-04-06', 'Entregado', 75.00, '2023-04-07', '2023-04-10', '2023-04-12'),
(7, '2023-04-07', 'Pendiente', 100.00, '2023-04-08', '2023-04-11', '2023-04-13'),
(8, '2023-04-08', 'Enviado', 25.00, '2023-04-09', '2023-04-12', '2023-04-14'),
(9, '2023-04-09', 'Entregado', 50.00, '2023-04-10', '2023-04-13', '2023-04-15'),
(10, '2023-04-10', 'Pendiente', 25.00, '2023-04-11', '2023-04-14', '2023-04-16'),
(11, '2023-04-11', 'Enviado', 100.00, '2023-04-12', '2023-04-15', '2023-04-17'),
(12, '2023-04-12', 'Entregado', 50.00, '2023-04-13', '2023-04-16', '2023-04-18'),
(13, '2023-04-13', 'Pendiente', 75.00, '2023-04-14', '2023-04-17', '2023-04-19'),
(14, '2023-04-14', 'Enviado', 100.00, '2023-04-15', '2023-04-18', '2023-04-20'),
(12, '2023-04-15', 'Entregado', 25.00, '2023-04-16', '2023-04-19', '2023-04-21');


INSERT INTO Pedidos (id_usuario, fecha_pedido, estado_pedido, total_pedido, fecha_envio, fecha_entrega, fecha_estimada)
VALUES
(1, '2023-04-01', 'Pendiente', 50.00, '2023-01-02', '2023-04-05', '2023-04-07'),
(2, '2023-04-02', 'Enviado', 25.00, '2023-01-03', '2023-04-06', '2023-04-08'),
(3, '2023-04-03', 'Entregado', 100.00, '2023-02-04', '2023-04-07', '2023-04-09'),
(6, '2023-04-06', 'Enviado', 60.00, '2023-02-07', '2023-04-10', '2023-04-12'),
(7, '2023-04-07', 'Entregado', 120.00, '2023-02-08', '2023-04-11', '2023-04-13'),
(14, '2023-04-14', 'Enviado', 55.00, '2023-02-15', '2023-04-18', '2023-04-20'),
(15, '2023-04-15', 'Entregado', 80.00, '2023-03-16', '2023-04-19', '2023-04-21'),
(25, '2023-02-15', 'Pendiente', 80.00, '2023-02-16', '2023-02-19', '2023-02-21'),
(26, '2022-12-01', 'Entregado', 75.00, '2022-12-02', '2022-12-05', '2022-12-07'),
(27, '2023-01-22', 'Pendiente', 20.00, '2023-01-23', '2023-01-26', '2023-01-28'),
(28, '2023-03-05', 'Enviado', 65.00, '2023-03-06', '2023-03-09', '2023-03-11'),
(29, '2022-11-29', 'Entregado', 95.00, '2022-11-30', '2022-12-03', '2022-12-05'),
(30, '2023-02-10', 'Pendiente', 50.00, '2023-02-11', '2023-02-14', '2023-02-16'),
(31, '2022-12-23', 'Entregado', 30.00, '2022-12-24', '2022-12-27', '2022-12-29'),
(32, '2023-01-05', 'Pendiente', 55.00, '2023-01-06', '2023-01-09', '2023-01-11'),
(33, '2023-03-22', 'Enviado', 70.00, '2023-03-23', '2023-03-26', '2023-03-28'),
(34, '2022-11-15', 'Entregado', 90.00, '2022-11-16', '2022-11-19', '2022-11-21'),
(35, '2023-01-30', 'Pendiente', 25.00, '2023-01-31', '2023-02-03', '2023-02-05'),
(36, '2023-02-25', 'Enviado', 45.00, '2023-02-26', '2023-03-01', '2023-03-03'),
(37, '2022-12-18', 'Entregado', 60.00, '2022-12-19', '2022-12-22', '2022-12-24'),
(38, '2023-03-10', 'Pendiente', 85.00, '2023-03-11', '2023-03-14', '2023-03-16'),
(39, '2022-11-05', 'Enviado', 40.00, '2022-11-06', '2022-11-09', '2022-11-11'),
(40, '2023-01-15', 'Entregado', 100.00, '2023-01-16', '2023-01-19', '2023-01-21');



UPDATE Productos_pedidos
SET precio_total = FLOOR(RAND()*(9000000-300000+1))+300000
WHERE id_producto < 500;
select * from Productos_pedidos;


INSERT INTO Productos_pedidos (id_producto, id_pedido, cantidad, precio_total)
VALUES
(31, 1, 2, 30.00),
(32, 1, 1, 20.00),
(23, 2, 3, 45.00),
(24, 2, 2, 40.00),
(25, 3, 1, 15.00),
(26, 3, 4, 60.00),
(27, 4, 2, 35.00),
(28, 4, 3, 50.00),
(29, 5, 3, 45.00),
(30, 5, 1, 15.00),
(31, 6, 2, 30.00),
(32, 6, 2, 40.00),
(33, 7, 1, 20.00),
(24, 7, 4, 60.00),
(25, 8, 2, 35.00),
(26, 8, 3, 45.00),
(27, 9, 3, 50.00),
(28, 9, 1, 15.00),
(29, 10, 2, 30.00),
(30, 10, 3, 45.00),
(31, 11, 1, 20.00),
(32, 11, 2, 30.00),
(33, 12, 2, 40.00),
(23, 12, 1, 20.00),
(25, 13, 3, 45.00),
(26, 13, 2, 35.00),
(27, 14, 1, 15.00),
(28, 14, 4, 60.00),
(29, 15, 2, 30.00),
(30, 15, 2, 40.00);




SELECT * FROM Carrito_compras;
-- Datos para poblar la tabla Productos_carrito
INSERT INTO Productos_carrito (id_producto, id_carrito, cantidad) VALUES
(23, 15, 2),
(24, 7, 1),
(25, 8, 3),
(26, 9, 2),
(27, 2, 1),
(28, 1, 4),
(29, 2, 2),
(30, 3, 3),
(31, 14, 1),
(32, 15, 2),
(33, 6, 2),
(23, 7, 1),
(24, 8, 3),
(25, 9, 2),
(26, 10, 4),
(27, 12, 3),
(28, 7, 1),
(29, 8, 2),
(30, 9, 1),
(31, 2, 3),
(32, 1, 2),
(33, 2, 2),
(23, 3, 1),
(24, 4, 4),
(25, 5, 3);

select * from Ciudad;
INSERT INTO Ciudad (region, departamento, ciudad) VALUES ('Región Caribe', 'Atlántico', 'Barranquilla'),
                                                       ('Región Andina', 'Bogotá D.C.', 'Bogotá'),
                                                       ('Región Andina', 'Antioquia', 'Medellín'),
                                                       ('Región Andina', 'Valle del Cauca', 'Cali'),
                                                       ('Región Andina', 'Risaralda', 'Pereira'),
                                                       ('Región Orinoquía', 'Meta', 'Villavicencio'),
                                                       ('Región Pacífico', 'Nariño', 'Pasto'),
                                                       ('Región Caribe', 'Magdalena', 'Santa Marta'),
                                                       ('Región Andina', 'Cundinamarca', 'Chía'),
                                                       ('Región Pacífico', 'Valle del Cauca', 'Buenaventura'),
                                                       ('Región Andina', 'Boyacá', 'Tunja'),
                                                       ('Región Pacífico', 'Chocó', 'Quibdó'),
                                                       ('Región Caribe', 'Córdoba', 'Montería'),
                                                       ('Región Caribe', 'Bolívar', 'Cartagena'),
                                                       ('Región Andina', 'Caldas', 'Manizales'),
                                                       ('Región Andina', 'Quindío', 'Armenia'),
                                                       ('Región Andina', 'Santander', 'Bucaramanga'),
                                                       ('Región Caribe', 'La Guajira', 'Riohacha'),
                                                       ('Región Caribe', 'Sucre', 'Sincelejo');
INSERT INTO Ciudad (region, departamento, ciudad) VALUES
('Región Caribe', 'Atlántico', 'Soledad'),
('Región Andina', 'Caldas', 'Pácora'),
('Región Andina', 'Tolima', 'Ibagué'),
('Región Andina', 'Cundinamarca', 'Zipaquirá'),
('Región Andina', 'Boyacá', 'Duitama'),
('Región Caribe', 'Magdalena', 'Ciénaga'),
('Región Andina', 'Huila', 'Neiva'),
('Región Andina', 'Norte de Santander', 'Cúcuta'),
('Región Andina', 'Cauca', 'Popayán'),
('Región Caribe', 'Córdoba', 'Ciénaga de Oro'),
('Región Andina', 'Cundinamarca', 'Fusagasugá'),
('Región Andina', 'Antioquia', 'Itagüí'),
('Región Orinoquía', 'Meta', 'Acacias'),
('Región Caribe', 'Sucre', 'Tolú'),
('Región Andina', 'Caldas', 'Chinchiná'),
('Región Andina', 'Santander', 'Floridablanca'),
('Región Pacífico', 'Valle del Cauca', 'Cali'),
('Región Caribe', 'Bolívar', 'Arjona'),
('Región Andina', 'Cundinamarca', 'Mosquera'),
('Región Andina', 'Boyacá', 'Paipa'),
('Región Andina', 'Nariño', 'Ipiales'),
('Región Orinoquía', 'Meta', 'Puerto Gaitán'),
('Región Andina', 'Cundinamarca', 'Girardot'),
('Región Andina', 'Cauca', 'Santander de Quilichao'),
('Región Andina', 'Antioquia', 'Envigado'),
('Región Orinoquía', 'Arauca', 'Arauca'),
('Región Caribe', 'La Guajira', 'Maicao'),
('Región Andina', 'Santander', 'Piedecuesta'),
('Región Caribe', 'Magdalena', 'Fundación');





-- Primero, asegurémonos de tener los registros de ciudades en la tabla Ciudad
-- (puedes utilizar el ejemplo que te proporcioné previamente)

-- Luego, insertamos 20 registros ficticios en la tabla direccion_usuario
INSERT INTO direccion_usuario (id_usuario, id_ciudad, direccion) VALUES (1, 1, 'Calle 123 #456'),
                                                                         (1, 2, 'Avenida XYZ #789'),
                                                                         (2, 3, 'Carrera ABC #101'),
                                                                         (2, 4, 'Diagonal LMN #202'),
                                                                         (3, 5, 'Transversal OPQ #303'),
                                                                         (3, 6, 'Calle 456 #707'),
                                                                         (4, 7, 'Avenida UVW #404'),
                                                                         (4, 8, 'Diagonal XYZ #505'),
                                                                         (5, 9, 'Carrera 789 #606'),
                                                                         (5, 10, 'Transversal DEF #707'),
                                                                         (6, 11, 'Calle 234 #808'),
                                                                         (6, 12, 'Avenida GHI #909'),
                                                                         (7, 13, 'Diagonal JKL #1010'),
                                                                         (7, 14, 'Carrera MNO #1111'),
                                                                         (8, 15, 'Transversal PQRS #1212'),
                                                                         (8, 16, 'Avenida TUV #1313'),
                                                                         (9, 17, 'Diagonal WXY #1414'),
                                                                         (9, 18, 'Calle ZAB #1515'),
                                                                         (10, 19, 'Carrera CDE #1616');
INSERT INTO direccion_usuario (id_usuario, id_ciudad, direccion) VALUES
(10, 13, 'Calle 321 #654'),
(12, 16, 'Carrera XYZ #123'),
(15, 23, 'Avenida ABC #456'),
(20, 33, 'Transversal LMN #789'),
(25, 41, 'Diagonal OPQ #101'),
(27, 29, 'Calle 456 #707'),
(31, 12, 'Avenida UVW #404'),
(35, 19, 'Diagonal XYZ #505'),
(40, 28, 'Carrera 789 #606'),
(44, 41, 'Calle 111 #222'),
(46, 15, 'Avenida 555 #666'),
(50, 27, 'Carrera 888 #999'),
(52, 36, 'Transversal 777 #888'),
(55, 44, 'Calle 222 #333'),
(58, 48, 'Avenida 999 #888'),
(60, 11, 'Diagonal 777 #666'),
(13, 20, 'Carrera 333 #222'),
(17, 24, 'Transversal 555 #444'),
(21, 37, 'Calle 888 #777');