
#-----------------------------CONSULTAS MULTITABLAS
#1. Obtener los productos del carrito de compras con ID = 1 de carrito:
select p.id_producto, p.nombre, c.id_carrito 
from Productos p
inner join Productos_carrito pr  
on p.id_producto=pr.id_producto
inner join Carrito_compras c 
on c.id_carrito=pr.id_carrito
where c.id_carrito = 1;

#2. Obtener los usuarios tienen mas de una ciudad de domicilio
 with consulta as (
	select u.id_usuario, u.nombre, count(nombre) as no_ciudades
	from Usuarios u
	inner join direccion_usuario dr
	on u.id_usuario=dr.id_usuario
	inner join Ciudad c
	on c.id_ciudad=dr.id_ciudad
    group by id_usuario)
    
select id_usuario, nombre, no_ciudades from consulta  
where no_ciudades>1 ;

#3. Obtener todos los productos del usuario llamado Pedro Rodriguez en su carrito de compras:
select p.id_producto, p.nombre, c.id_carrito, u.nombre
from Productos p
inner join Productos_carrito pr  
on p.id_producto=pr.id_producto
inner join Carrito_compras c 
on c.id_carrito=pr.id_carrito
inner join Usuarios u
on u.id_usuario=c.id_usuario
where u.nombre='Pedro Rodriguez';

#4. Obtener la lista de productos disponibles en el inventario, incluyendo su información de categoría:
select p.Nombre, p.Descripción, i.cantidad_disponible
from Productos p, Inventario i
where p.id_inventario=i.id_inventario and i.cantidad_disponible>0
order by i.cantidad_disponible asc;

#5. Obtener los clientes y sus pedidos pendientes:
select u.id_usuario,u.nombre, pe.id_pedido, pe.estado_pedido
from Pedidos pe
inner join Usuarios u
on u.id_usuario=pe.id_usuario
where pe.estado_pedido='pendiente';

#6. Obtener lista de los clientes que hicieron un pedido para Medellin y ya fueron enviados
select u.id_usuario,u.nombre, pe.id_pedido, pe.estado_pedido, c.ciudad
	from Pedidos pe
	inner join Usuarios u
	on u.id_usuario=pe.id_usuario
	inner join direccion_usuario dr
	on u.id_usuario=dr.id_usuario
	inner join Ciudad c
	on c.id_ciudad=dr.id_ciudad
	where pe.estado_pedido='enviado' and c.ciudad='medellín';
    
#7. Consulta que me diga cuantos usuarios tenemos por ciudad
SELECT Ciudad.ciudad AS Ciudad, COUNT(DISTINCT Usuarios.id_usuario) AS Cantidad_de_Usuarios
FROM Ciudad
JOIN direccion_usuario ON Ciudad.id_ciudad = direccion_usuario.id_ciudad
JOIN Usuarios ON Usuarios.id_usuario = direccion_usuario.id_usuario
GROUP BY Ciudad.id_ciudad;

#8. Consultar los 10 productos con mas inventarios
SELECT Productos.Nombre AS Producto, SUM(Inventario.cantidad_disponible) AS Total_Inventario
FROM Productos
JOIN Inventario ON Productos.id_producto = Inventario.id_inventario
GROUP BY Productos.id_producto
ORDER BY Total_Inventario DESC
LIMIT 10;

#9. Cantidad de productos pedidos por cada origen
SELECT Productos.origen AS Origen, SUM(Productos_pedidos.cantidad) AS Cantidad_de_Productos
FROM Productos
JOIN Productos_pedidos ON Productos.id_producto = Productos_pedidos.id_producto
GROUP BY Productos.origen;

#10. Consulta cuantos productos se encuentran en el carrito_compras
SELECT COUNT(*) AS Cantidad_de_Productos
FROM Productos_carrito
WHERE id_carrito = id_carrito;

#11. Consulta los usuarios que tienen los Cupones_descuento mas grandes
SELECT u.nombre, cd.codigo, cd.descuento
FROM Usuarios u
INNER JOIN Carrito_compras cc ON u.id_usuario = cc.id_usuario
INNER JOIN Cupones_descuento cd ON cc.id_cupon = cd.id_cupon
ORDER BY cd.descuento DESC
LIMIT 10;

#12. Consulta los usuarios que tienen los Cupones_descuento mas proximos a vencerse.
SELECT u.nombre, cd.codigo, cd.fecha_vencimiento
FROM Usuarios u
INNER JOIN Carrito_compras cc ON u.id_usuario = cc.id_usuario
INNER JOIN Cupones_descuento cd ON cc.id_cupon = cd.id_cupon
WHERE cd.fecha_vencimiento >= CURDATE()
ORDER BY cd.fecha_vencimiento ASC
LIMIT 10;

#13.Consultar los 10 productos con menos inventarios
SELECT Productos.Nombre AS Producto, SUM(Inventario.cantidad_disponible) AS Total_Inventario
FROM Productos
JOIN Inventario ON Productos.id_producto = Inventario.id_inventario
GROUP BY Productos.id_producto
ORDER BY Total_Inventario asc
LIMIT 10;
select*from Cupones_descuento;
select*from Carrito_compras;

#14. Consulta los usuarios que tienen los Cupones_descuento mas pequeños
SELECT u.nombre, cd.codigo, cd.descuento
FROM Usuarios u
INNER JOIN Carrito_compras cc ON u.id_usuario = cc.id_usuario
INNER JOIN Cupones_descuento cd ON cc.id_cupon = cd.id_cupon
ORDER BY cd.descuento asc
LIMIT 10;

#15. Saber que carritos de compras estan usando cupones que aun no han vencido
 select cc.id_carrito, cd.id_cupon, cd.fecha_vencimiento
 from Carrito_compras cc, Cupones_descuento cd
 where cc.id_cupon=cd.id_cupon and  cd.fecha_vencimiento > CURRENT_DATE();

#----------------------------------SUBCONSULTAS
#1. Obtener los nombres y correos electrónicos de los usuarios que han realizado pedidos
SELECT nombre, correo_electrónico
FROM Usuarios
WHERE id_usuario IN (SELECT DISTINCT id_usuario FROM Pedidos);

#2. Obtener la cantidad de productos en el carrito de compras de un usuario específico
SELECT COUNT(id_producto)
FROM Productos_carrito
WHERE id_carrito = (SELECT id_carrito FROM Carrito_compras WHERE id_usuario = 2);

#3. Obtener los nombres de los usuarios que han realizado un pedido y la cantidad de pedidos que han hecho:
SELECT nombre, (
  SELECT COUNT(*) FROM Pedidos
  WHERE Pedidos.id_usuario = Usuarios.id_usuario
) AS cantidad_pedidos
FROM Usuarios;

#4. Obtener los nombres y correos electrónicos de los usuarios que han realizado un pedido y que tienen una dirección 
#en una ciudad específica
SELECT nombre, correo_electrónico FROM Usuarios
WHERE id_usuario IN ( SELECT id_usuario FROM Pedidos
  WHERE id_usuario IN ( SELECT id_usuario
    FROM direccion_usuario 
    WHERE id_ciudad = (SELECT id_ciudad FROM Ciudad WHERE ciudad = 'Bogotá')));
    
#5. Obtener la cantidad total de productos en el inventario que han sido pedidos
SELECT SUM(cantidad_disponible) FROM Inventario
WHERE id_inventario IN ( SELECT id_producto FROM Productos_pedidos );

#6. Obtener los nombres de los usuarios que han usado un cupón de descuento específico en su carrito de compras
SELECT nombre FROM Usuarios
WHERE id_usuario IN ( SELECT id_usuario FROM Carrito_compras
  WHERE id_cupon = (SELECT id_cupon FROM Cupones_descuento WHERE codigo = 'DESCUENTO50'));

#7. Obtener los productos que han sido pedidos al menos una vez
SELECT * FROM Productos
WHERE id_producto IN ( SELECT id_producto FROM Productos_pedidos);

#8. Obtener los nombres y correos electrónicos de los usuarios que han realizado un pedido y que tienen más de 30 años
SELECT nombre, correo_electrónico FROM Usuarios
WHERE edad > 30 AND id_usuario IN (
SELECT id_usuario FROM Pedidos);

#9. Obtener el número total de pedidos realizados por cada usuario
SELECT id_usuario, (SELECT COUNT(*) FROM Pedidos
  WHERE Pedidos.id_usuario = Usuarios.id_usuario
) AS cantidad_pedidos
FROM Usuarios;

#10. Obtener los nombres de los usuarios que tienen un carrito de compras con al menos 3 productos
SELECT nombre FROM Usuarios
WHERE id_usuario IN (
  SELECT id_usuario FROM Carrito_compras
  GROUP BY id_usuario
  HAVING COUNT(*) >= 2
);

#11.  Obtener el número total de productos en el inventario que no han sido pedidos
SELECT SUM(cantidad_disponible) FROM Inventario
WHERE id_inventario NOT IN (
  SELECT id_producto FROM Productos_pedidos);
  
#12. Obtener los nombres y correos electrónicos de los usuarios que han realizado un pedido y que
#12.tienen una dirección en una ciudad que pertenece a una región específica
SELECT nombre, correo_electrónico
FROM Usuarios
WHERE id_usuario IN (
  SELECT id_usuario FROM Pedidos
  WHERE id_usuario IN (
    SELECT id_usuario FROM direccion_usuario
    WHERE id_ciudad IN (
      SELECT id_ciudad FROM Ciudad 
      WHERE region = 'Región Andina')));

#13. Obtener los nombres y correos electrónicos de los usuarios que han utilizado un cupón de descuento que está vencido
SELECT nombre, correo_electrónico FROM Usuarios
WHERE id_usuario IN (
  SELECT id_usuario FROM Carrito_compras
  WHERE id_cupon IN (
    SELECT id_cupon FROM Cupones_descuento
    WHERE fecha_vencimiento < CURDATE()));
    
#14. Obtener los nombres de los usuarios que han realizado un pedido y que han usado un cupón de descuento 
#que tiene un descuento superior al 30.000
SELECT nombre FROM Usuarios
WHERE id_usuario IN (
  SELECT id_usuario FROM Carrito_compras
  WHERE id_cupon IN (
    SELECT id_cupon FROM Cupones_descuento
    WHERE descuento > 30.000));
    
#15. Obtener los nombres de las ciudades que tienen más de 2 usuarios registrados
SELECT ciudad FROM Ciudad
WHERE id_ciudad IN (
  SELECT id_ciudad FROM direccion_usuario
  GROUP BY id_ciudad
  HAVING COUNT(*) > 2);
  
 #-----------------------------EXPRECIONES REGULARES
 #1. 
 SELECT * FROM Productos WHERE Descripción REGEXP 'negro';

#2. Seleccionar todos los usuarios cuyo correo electrónico termine en ".com":
SELECT * FROM Usuarios WHERE correo_electrónico REGEXP '\.com$';

#3. Seleccionar todos los productos cuyo nombre empiece con la letra "C" y termine con la letra "o":
SELECT * FROM Productos WHERE nombre REGEXP '^C.*o$';

#4. Seleccionar todos los cupones de descuento que tengan en su código la letra "A" o "B":
SELECT * FROM Cupones_descuento WHERE codigo REGEXP '[AB]';

#5. Seleccionar todos los usuarios cuyo nombre empiece con la letra "M" o "A" 
#y cuyo correo electrónico contenga la palabra "gmail"
SELECT * FROM Usuarios WHERE nombre REGEXP '^[CA].*' AND correo_electrónico REGEXP 'example';

ALTER TABLE Productos ADD FULLTEXT(Descripción);

#-----------------------------------ANALISIS TEXTO A CAMPO
#1.Contar la cantidad de productos que contienen la palabra "nuevo" en su descripción
SELECT COUNT(*) AS num_productos_nuevos
FROM Productos
WHERE MATCH(Descripción) AGAINST('nuevo' IN NATURAL LANGUAGE MODE);


#2.Listar los productos cuya descripción contiene la palabra "oferta".
SELECT * FROM Productos
WHERE MATCH(Descripción) AGAINST('oferta' IN NATURAL LANGUAGE MODE);

#3.Encontrar los productos que tienen una descripción similar a WiFi 
#utilizando la función SOUNDEX'
SELECT * FROM Productos
WHERE SOUNDEX(Descripción) = SOUNDEX('WiFi');

#4.Obtener los productos que contienen la frase "envío gratis" en su descripción y que pertenecen a la categoría "ropa"
SELECT * FROM Productos
WHERE MATCH(Descripción) AGAINST('+"envío gratis"' IN BOOLEAN MODE);
