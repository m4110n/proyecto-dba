CREATE DATABASE bd_inventariofree;
use bd_inventariofree;

-- estructura de tablas

-- Producto -------------------------------------------
CREATE TABLE `db.producto`
(
 `pro_codigo`      INT NOT NULL AUTO_INCREMENT,
 `pro_descripcion` varchar(45) NOT NULL,

PRIMARY KEY (`pro_codigo`)
);


-- Entrada -------------------------------------------
CREATE TABLE `db.entrada`
(
 `ent_id`         int NOT NULL ,
 `ent_factura`    varchar(30) NOT NULL ,
 `ent_pro_codigo` varchar(50) NOT NULL ,
 `ent_fecha_date` date NOT NULL ,
 `ent_cantidad`   int NOT NULL ,

PRIMARY KEY (`ent_id`),
KEY `FK_1` (`ent_pro_codigo`),
CONSTRAINT `FK_3` FOREIGN KEY `FK_1` (`ent_pro_codigo`) REFERENCES `db.producto` (`pro_codigo`)
);

-- salida -------------------------------------------
CREATE TABLE `db.salida`
(
 `sal_id`         int NOT NULL ,
 `sal_pro_codigo` varchar(50) NOT NULL ,
 `sal_factura`    varchar (30) NOT NULL ,
 `sal_fecha`      date NOT NULL ,
 `sal_cantidad`   int NOT NULL ,

PRIMARY KEY (`sal_id`, `sal_pro_codigo`),
KEY `FK_1` (`sal_pro_codigo`),
CONSTRAINT `FK_1` FOREIGN KEY `FK_1` (`sal_pro_codigo`) REFERENCES `db.producto` (`pro_codigo`)
);

-- Inventario -------------------------------------------
CREATE TABLE `db.inventario`
(
 `inv_pro_codigo` varchar(50) NOT NULL ,
 `inv_entradas`   int NOT NULL ,
 `inv_salidas`    int NOT NULL ,
 `inv_stock`      int NOT NULL ,

PRIMARY KEY (`inv_pro_codigo`),
KEY `FK_1` (`inv_pro_codigo`),
CONSTRAINT `FK_2` FOREIGN KEY `FK_1` (`inv_pro_codigo`) REFERENCES `db.producto` (`pro_codigo`)
);

