-- SQL Manager for PostgreSQL 5.7.0.46919
-- ---------------------------------------
-- Host      : localhost
-- Database  : taller1
-- Version   : PostgreSQL 9.6.4, compiled by Visual C++ build 1800, 64-bit



SET search_path = public, pg_catalog;
DROP INDEX IF EXISTS public.novedad_pedido_id_pedido_idx;
DROP INDEX IF EXISTS public.pedido_detalle_id_pedido_idx;
DROP INDEX IF EXISTS public.pedido_detalle_id_producto_idx;
DROP INDEX IF EXISTS public.pedido_id_cliente_idx;
DROP SEQUENCE IF EXISTS public.pedido_detalle_id_pedido_detalle_seq;
DROP TABLE IF EXISTS public.novedad_pedido;
DROP TABLE IF EXISTS public.pedido_detalle;
DROP TABLE IF EXISTS public.producto;
DROP TABLE IF EXISTS public.pedido;
DROP TABLE IF EXISTS public.cliente;
SET check_function_bodies = false;
--
-- Structure for table cliente (OID = 16396) :
--
CREATE TABLE public.cliente (
    id_cliente serial NOT NULL,
    identificacion varchar NOT NULL,
    nombre varchar NOT NULL,
    direccion varchar NOT NULL,
    telefono varchar NOT NULL,
    root varchar,
    camara_comercio varchar,
    eps varchar,
    correo varchar(30)
)
WITH (oids = false);
--
-- Structure for table pedido (OID = 16409) :
--
CREATE TABLE public.pedido (
    id_pedido serial NOT NULL,
    numero serial NOT NULL,
    valor numeric NOT NULL,
    id_cliente integer NOT NULL
)
WITH (oids = false);
--
-- Structure for table pedido_detalle (OID = 16420) :
--
CREATE TABLE public.pedido_detalle (
    id_pedido_detalle integer DEFAULT nextval(('public.pedido_detalle_id_pedido_detalle_seq'::text)::regclass) NOT NULL,
    id_producto integer NOT NULL,
    id_pedido integer NOT NULL,
    cantidad integer NOT NULL,
    valor numeric NOT NULL
)
WITH (oids = false);
--
-- Structure for table producto (OID = 16432) :
--
CREATE TABLE public.producto (
    id_producto serial NOT NULL,
    nombre varchar NOT NULL,
    cantidad integer NOT NULL,
    valor numeric NOT NULL
)
WITH (oids = false);
--
-- Structure for table novedad_pedido (OID = 16443) :
--
CREATE TABLE public.novedad_pedido (
    id_novedad serial NOT NULL,
    id_pedido integer NOT NULL,
    fecha date NOT NULL,
    descripcion varchar NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence pedido_detalle_id_pedido_detalle_seq (OID = 16473) :
--
CREATE SEQUENCE public.pedido_detalle_id_pedido_detalle_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 2147483647
    NO MINVALUE
    CACHE 1;
--
-- Data for table public.cliente (OID = 16396) (LIMIT 0,72)
--
INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (4, '', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (5, 'dsdasd', 'asdasd', '', 'asdasd', NULL, NULL, 'asdas', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (6, 'sadasdasd', 'asdasd', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (7, '234234', '234234', '234', '234', NULL, NULL, '234', '234');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (8, '3434', '3434', '3434', '3434', NULL, NULL, '33', '3434');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (9, '12345', 'samy sanchez', 'sdsds', '23232', NULL, NULL, 'dsdsd', 'sdsd');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (10, 'eawe', 'qwe', '', 'qwe', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (11, 'wqwewe', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (12, 'qqqq', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (13, '3333', '', '', '', '', '', NULL, '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (14, '123456', 'dj zona', '343', '34343', NULL, NULL, '3434', '3434');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (15, '4321', 'dj otro', '3434', '3434', NULL, NULL, 'dsdsa', '3434');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (16, '343434', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (17, 'fdsf', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (18, 'fdsfdf', 'dfdf', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (19, 'fsdf', 'sdfsdf', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (20, 'fsdf', 'sdfsdf', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (21, 'dsd', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (22, '3434', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (23, '3434', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (24, '3434', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (25, '3434', '', '', '', '', '3434', NULL, '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (26, '3434', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (27, '3434', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (28, '3434', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (29, '454545', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (30, '454545', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (31, '454545', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (32, '454545', 'dsdasdd', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (33, '454545', 'dsdasdd', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (34, '454545', 'dsdasdd', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (35, '454545', 'dsdasdd', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (36, '454545', 'dsdasdd', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (37, '', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (38, '3434', '3434', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (39, '3434', 'fdf', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (40, '434', 'fdfdf', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (41, 'gdfg', 'dfgdfg', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (42, '4343', 'dsdsad', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (43, '1938383', 'samy sanchez ', 'cr 20 45 458', '31119898', NULL, NULL, 'nueva eps', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (44, '12333', 'wewewe', 'dsdsd', '32323', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (45, '23232323', 'leydy', 'sdsd', '332', NULL, NULL, 'dfdf', 's');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (46, '', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (47, '', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (48, '', '', '', '', NULL, NULL, '', 'dsd');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (49, '25664555', 'asdasdasddsdsd', 'asdasd', 'asdasd', NULL, NULL, '3434', 'dsdsd@ddd.co');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (50, 'fdf', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (51, 'sddd', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (52, 'sdss', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (53, 'sdsd', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (54, 'sdsd', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (55, 'sdsd', '', '', '', NULL, NULL, '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (56, '34343434', 'fsdfsdffsdfsdf', '', '343434', NULL, NULL, '', 'dfdfsdf@sds.fff');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (57, '324234', 'sdfsdffsdfd', 'dfsdf', '343434', NULL, NULL, '', 'dsfsdff@fdfd.f');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (58, '2020451234', 'pepito perez', 'castilla', '3104040387', NULL, NULL, 'nueva eps', 'pepito@gmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (59, '2342342', 'sdfsf esfsfdfsdff', 'fsdfsf', '434343434', NULL, NULL, 'sdfsf', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (60, '2342342', 'sdfsf esfsfdfsdff', 'fsdfsf', '434343434', NULL, NULL, 'sdfsf', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (61, '234343', 'dsdsddsfsdfsf', 'dsfsdf', '34343444', NULL, NULL, 'dsdsd', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (62, '34343434', 'ffsdfsdfsd', 'dfsdfsd', '3434344', 'rewrwe', 'werwerwerwe', NULL, 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (63, '254244', 'sdasd dsssdd', 'fsdfsdf', '34444', NULL, NULL, 'eee', 'ffdf@sdsds.cc');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (64, '', '', '', '', '', '', NULL, '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (65, '', '', '', '', '', '', NULL, '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (66, '332323232323', 'dasdasddsdsdsdsd', 'dadasd', '3232323233', NULL, NULL, 'dadasd', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (67, '332323232323', 'dasdasddsdsdsdsd', 'dadasd', '3232323233', NULL, NULL, 'dadasd', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (68, '', '', '', '', '', '', NULL, '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (69, '', '', '', '', '', '', NULL, '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (70, '332323232323', 'sammy dj zona sanchez', 'dadasd', '3232323233', NULL, NULL, 'dadasd', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (1, '', 'samy', '', '', '', '', '', '');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (2, '1129044859', 'sammy dj zona sanchez 2', 'dadasd', '3232323233', '', '', 'dadasd', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (71, '332323232323', 'sammy dj zona sanchez', 'dadasd', '3232323233', NULL, NULL, 'dadasd', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (72, '332323232323', 'sammy dj zona sanchez', 'dadasd', '3232323233', NULL, NULL, 'dadasd', 'sami_djzona@hotmail.com');

INSERT INTO cliente (id_cliente, identificacion, nombre, direccion, telefono, root, camara_comercio, eps, correo)
VALUES (3, '1129044859', 'sammy dj zona sanchez 2', 'dadasd', '3232323233', '', '', 'dadasd', 'sami_djzona@hotmail.com');

--
-- Data for table public.pedido (OID = 16409) (LIMIT 0,34)
--
INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (45, 45, 100000, 61);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (48, 48, 0, 64);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (6, 6, 40000, 19);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (7, 7, 40000, 20);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (49, 49, 0, 65);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (50, 50, 18000, 66);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (51, 51, 18000, 67);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (52, 52, 0, 68);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (15, 15, 100000, 30);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (18, 18, 100000, 33);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (19, 19, 100000, 34);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (20, 20, 100000, 35);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (53, 53, 0, 69);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (22, 22, 40000, 37);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (23, 23, 80000, 38);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (24, 24, 100000, 39);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (25, 25, 100000, 40);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (26, 26, 80000, 41);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (27, 27, 80000, 42);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (28, 28, 18000, 43);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (29, 29, 14000, 44);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (54, 54, 18000, 70);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (55, 55, 18000, 71);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (32, 32, 60000, 47);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (34, 34, 75000, 49);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (35, 35, 40000, 50);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (36, 36, 40000, 51);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (37, 37, 60000, 52);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (38, 38, 60000, 53);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (39, 39, 15000, 54);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (40, 40, 15000, 55);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (41, 41, 60000, 56);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (56, 56, 18000, 72);

INSERT INTO pedido (id_pedido, numero, valor, id_cliente)
VALUES (44, 44, 60000, 60);

--
-- Data for table public.pedido_detalle (OID = 16420) (LIMIT 0,38)
--
INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (7, 1, 6, 2, 40000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (8, 1, 7, 2, 40000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (16, 1, 15, 5, 100000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (19, 1, 18, 5, 100000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (20, 1, 19, 5, 100000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (21, 1, 20, 5, 100000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (24, 1, 22, 2, 40000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (25, 1, 23, 4, 80000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (26, 1, 24, 5, 100000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (27, 1, 25, 5, 100000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (28, 1, 26, 4, 80000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (29, 1, 27, 4, 80000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (30, 2, 28, 2, 10000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (31, 3, 28, 4, 8000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (32, 2, 29, 2, 10000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (33, 3, 29, 2, 4000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (38, 1, 32, 3, 60000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (39, 1, 34, 3, 60000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (40, 2, 34, 3, 15000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (41, 1, 35, 2, 40000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (42, 1, 36, 2, 40000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (43, 1, 37, 3, 60000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (44, 1, 38, 3, 60000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (45, 2, 39, 3, 15000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (46, 2, 40, 3, 15000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (47, 1, 41, 3, 60000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (51, 1, 44, 3, 60000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (52, 1, 45, 5, 100000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (57, 2, 50, 2, 10000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (58, 3, 50, 4, 8000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (59, 2, 51, 2, 10000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (60, 3, 51, 4, 8000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (61, 2, 54, 2, 10000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (62, 3, 54, 4, 8000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (63, 2, 55, 2, 10000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (64, 3, 55, 4, 8000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (65, 2, 56, 2, 10000);

INSERT INTO pedido_detalle (id_pedido_detalle, id_producto, id_pedido, cantidad, valor)
VALUES (66, 3, 56, 4, 8000);

--
-- Data for table public.producto (OID = 16432) (LIMIT 0,4)
--
INSERT INTO producto (id_producto, nombre, cantidad, valor)
VALUES (1, 'Gaseosa cocacola', 40, 20000);

INSERT INTO producto (id_producto, nombre, cantidad, valor)
VALUES (2, 'Doritos', 50, 5000);

INSERT INTO producto (id_producto, nombre, cantidad, valor)
VALUES (3, 'Papas fritas  de pollo', 20, 2000);

INSERT INTO producto (id_producto, nombre, cantidad, valor)
VALUES (4, 'Glacitas', 10, 500);

--
-- Data for table public.novedad_pedido (OID = 16443) (LIMIT 0,22)
--
INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (2, 18, '2017-08-29', 'sdfsffsdf');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (3, 25, '2017-08-29', 'fdff');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (4, 23, '2017-08-29', 'sdfsdf');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (5, 23, '2017-08-29', 'sdfsdf');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (8, 29, '2017-09-03', 'dsfsdf');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (9, 41, '2017-09-05', 'dsdsd');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (10, 41, '2017-09-05', 'dsdsd');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (11, 41, '2017-09-05', 'sfsdf');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (12, 41, '2017-09-05', 'awdsd');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (13, 41, '2017-09-05', 'awdsd');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (17, 45, '2017-10-10', 'dasdasd');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (20, 48, '2017-11-11', 'sdsdds');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (21, 48, '2017-11-11', 'Probando');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (23, 48, '2017-11-11', 'Probando');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (24, 48, '2017-11-11', 'Probando');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (25, 48, '2017-11-11', 'Probando');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (26, 55, '2017-11-11', 'prueba desde php');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (27, 48, '2017-11-11', 'Probando');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (28, 48, '2017-11-11', 'Probando');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (29, 55, '2017-11-11', 'prueba desde php');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (30, 55, '2017-11-11', 'prueba desde php');

INSERT INTO novedad_pedido (id_novedad, id_pedido, fecha, descripcion)
VALUES (31, 48, '2017-11-14', 'Probando');

--
-- Definition for index pedido_id_cliente_idx (OID = 16419) :
--
CREATE INDEX pedido_id_cliente_idx ON pedido USING btree (id_cliente);
--
-- Definition for index pedido_detalle_id_producto_idx (OID = 16428) :
--
CREATE INDEX pedido_detalle_id_producto_idx ON pedido_detalle USING btree (id_producto);
--
-- Definition for index pedido_detalle_id_pedido_idx (OID = 16429) :
--
CREATE INDEX pedido_detalle_id_pedido_idx ON pedido_detalle USING btree (id_pedido);
--
-- Definition for index novedad_pedido_id_pedido_idx (OID = 16452) :
--
CREATE INDEX novedad_pedido_id_pedido_idx ON novedad_pedido USING btree (id_pedido);
--
-- Definition for index cliente_pkey (OID = 16403) :
--
ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_pkey
    PRIMARY KEY (id_cliente);
--
-- Definition for index pedido_pkey (OID = 16417) :
--
ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_pkey
    PRIMARY KEY (id_pedido);
--
-- Definition for index producto_pkey (OID = 16439) :
--
ALTER TABLE ONLY producto
    ADD CONSTRAINT producto_pkey
    PRIMARY KEY (id_producto);
--
-- Definition for index novedad_pedido_pkey (OID = 16450) :
--
ALTER TABLE ONLY novedad_pedido
    ADD CONSTRAINT novedad_pedido_pkey
    PRIMARY KEY (id_novedad);
--
-- Definition for index fk_pedido__id_cliente (OID = 16453) :
--
ALTER TABLE ONLY pedido
    ADD CONSTRAINT fk_pedido__id_cliente
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);
--
-- Definition for index fk_pedido_detalle__id_producto (OID = 16458) :
--
ALTER TABLE ONLY pedido_detalle
    ADD CONSTRAINT fk_pedido_detalle__id_producto
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto);
--
-- Definition for index pedido_detalle_pkey (OID = 16475) :
--
ALTER TABLE ONLY pedido_detalle
    ADD CONSTRAINT pedido_detalle_pkey
    PRIMARY KEY (id_pedido_detalle);
--
-- Definition for index fk_pedido_detalle__id_pedido (OID = 16483) :
--
ALTER TABLE ONLY pedido_detalle
    ADD CONSTRAINT fk_pedido_detalle__id_pedido
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido) ON DELETE CASCADE;
--
-- Definition for index fk_novedad_pedido__id_pedido (OID = 16488) :
--
ALTER TABLE ONLY novedad_pedido
    ADD CONSTRAINT fk_novedad_pedido__id_pedido
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido) ON DELETE CASCADE;
--
-- Data for sequence public.cliente_id_cliente_seq (OID = 16394)
--
SELECT pg_catalog.setval('cliente_id_cliente_seq', 72, true);
--
-- Data for sequence public.pedido_id_pedido_seq (OID = 16405)
--
SELECT pg_catalog.setval('pedido_id_pedido_seq', 56, true);
--
-- Data for sequence public.pedido_numero_seq (OID = 16407)
--
SELECT pg_catalog.setval('pedido_numero_seq', 56, true);
--
-- Data for sequence public.producto_id_producto_seq (OID = 16430)
--
SELECT pg_catalog.setval('producto_id_producto_seq', 4, true);
--
-- Data for sequence public.novedad_pedido_id_novedad_seq (OID = 16441)
--
SELECT pg_catalog.setval('novedad_pedido_id_novedad_seq', 31, true);
--
-- Data for sequence public.pedido_detalle_id_pedido_detalle_seq (OID = 16473)
--
SELECT pg_catalog.setval('pedido_detalle_id_pedido_detalle_seq', 66, true);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
