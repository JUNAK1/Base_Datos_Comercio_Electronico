show tables;
USE techmarket;



#Agragar id, y que este sea la primera columna
ALTER TABLE productos_mercadolibre
ADD id INT AUTO_INCREMENT PRIMARY KEY FIRST;

#los links tenian (,) en lugar de (.)
UPDATE productos_mercadolibre
SET Imagen = REPLACE(Imagen, ',', '.')
where id < 500;

 #la columna precio tiene datos sin precio y en lugar tienen un string, si es string entonces = 0
UPDATE productos_mercadolibre
SET precio = IF(precio REGEXP '^[0-9]+(\\.[0-9]+)?$', precio, 0)
where id < 500;

ALTER TABLE productos_mercadolibre
MODIFY COLUMN Precio FLOAT;

desc productos_mercadolibre;