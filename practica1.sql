--Yarlin Paola Vargas Valverde
--C08285
--Crear la base de datos
CREATE DATABASE Practica1
go
--Para uso de base de datos
use Practica1

--NOTA:Ejecutar por tablas
 
--Tabla Territorio
CREATE TABLE Territorio(
ID_Territorio tinyint primary key,
Provincia VARCHAR(20) not null,
Cantón VARCHAR(20) not null,
Distrito VARCHAR(20) not null
)

--Datos para la tabla Territorio de forma automatizada
INSERT INTO Territorio(ID_Territorio,Provincia,Cantón,Distrito) VALUES 
(4,'Heredia','Barva','Barva'),
(3,'Cartago','Paraiso','Orosi'),
(2,'Alajuela','Grecia','San Isidro'),
(1,'San Jose','Tarrazu','San Carlos'),
(7,'Limon','Siquirres','Siquirres'),
(12,'San Jose','Leon Cortes','Santa Cruz'),
(42,'Heredia','Santo Domingo','Santo Domingo'),
(6,'Puntarenas','Esparza','Esparza'),
(72,'Limon','Talamanca','Talamanca'),
(22,'Alajuela','Naranjo','Naranjo'),
(5,'Guanacaste','Liberia','Liberia'),
(49,'Heredia','San Joaquin','San Joaquin'),
(32,'Cartago','Turrialba','Turrialba'),
(43,'Heredia','Heredia','San Isidro'),
(33,'Cartago','Oreamuno','San Rafael'),
(23,'Alajuela','Atenas','Balsa'),
(13,'San Jose','Dota','Copey '),
(44,'Heredia','Barva','Barva'),
(34,'Cartago','Paraiso','Orosi'),
(24,'Alajuela','Grecia','San Isidro'),
(14,'San Jose','Tarrazu','San Carlos'),
(73,'Limon','Siquirres','Siquirres'),
(15,'San Jose','Leon Cortes','Santa Cruz'),
(45,'Heredia','Santo Domingo','Santo Domingo'),
(65,'Puntarenas','Esparza','Esparza'),
(74,'Limon','Talamanca','Talamanca'),
(25,'Alajuela','Naranjo','Naranjo'),
(56,'Guanacaste','Liberia','Liberia'),
(46,'Heredia','San Joaquin','San Joaquin'),
(36,'Cartago','Turrialba','Turrialba'),
(26,'Cartago','Paraiso','Orosi'),
(27,'Alajuela','Grecia','San Isidro'),
(16,'San Jose','Tarrazu','San Carlos'),
(75,'Limon','Siquirres','Siquirres'),
(17,'San Jose','Leon Cortes','Santa Cruz'),
(47,'Heredia','Santo Domingo','Santo Domingo'),
(63,'Puntarenas','Esparza','Esparza'),
(78,'Limon','Talamanca','Talamanca'),
(28,'Alajuela','Naranjo','Naranjo'),
(58,'Guanacaste','Liberia','Liberia')

--Tabla Proveedor
CREATE TABLE Proveedor(
CedulaProveedor int primary key,
NombreProveedor varchar (50),
TipoCedula varchar (50),
CorreoProveedor varchar (50),
TelefonoProveedor int,
ID_Territorio tinyint, /*llave foranea*/
CONSTRAINT FKIDT FOREIGN KEY (ID_Territorio) REFERENCES Territorio(ID_Territorio) --Llave foranea
)

--Datos para la tabla Proveedor de forma automatizada
INSERT INTO Proveedor (CedulaProveedor,NombreProveedor,TipoCedula,CorreoProveedor,TelefonoProveedor, ID_Territorio) VALUES  
(565776993,'ColeSlight','Fisica','cslight0@google.co.uk',61812279,4),
(548661457,'ReggisJemison','Juridica','rjemison1@over-blog.com',60515178,3),
(336258864,'StanlyStanney','Fisica','sstanney2@ycombinator.com',61743664,2),
(491646658,'VinaMacWilliam','Fisica','vmacwilliam3@gnu.org',64802854,1),
(491968767,'TieboutCicculi','Fisica','tcicculi4@paginegialle.it',64149534,7),
(455647342,'HolmesFishwick','Fisica','hfishwick5@comcast.net',62424477,12),
(423336863,'AlfieDrayton','Fisica','adrayton6@independent.co.uk',62016307,42),
(436127922,'ClemmyFensome','Fisica','cfensome7@addthis.com',61422004,6),
(698137389,'ElkeWorwood','Fisica','eworwood8@foxnews.com',61745271,72),
(542628124,'MargeMogg','Juridica','mmogg9@studiopress.com',60953722,22),
(295261046,'StormieLyburn','Fisica','slyburna@go.com',62943632,5),
(585599791,'AbrahanPrickett','Juridica','aprickettb@ning.com',63195334,49),
(620546200,'OlagOverill','Fisica','ooverillc@elegantthemes.com',63967017,32),
(827988513,'DarseyHobgen','Fisica','dhobgend@census.gov',60761673,43),
(684064845,'ElinorLinscott','Juridica','elinscotte@fema.gov',60797607,33),
(361187328,'ShirlChiommienti','Juridica','schiommientif@sitemeter.com',83868519,23),
(779608656,'LibStranks','Fisica','lstranksg@scribd.com',83848634,13),
(126227442,'HerminiaBourthouloume','Juridica','hbourthouloumeh@lulu.com',82557203,44),
(863177106,'ValeriaRupke','Juridica','vrupkei@bloglovin.com',83619096,34),
(861103740,'JoelieWinterborne','Juridica','jwinterbornej@bravesites.com',81145200,24),
(362139552,'FloPeddersen','Fisica','fpeddersenk@ca.gov',80181762,14),
(197713907,'GretaSibson','Fisica','gsibsonl@phoca.cz',80501196,73),
(158699845,'VickyDantesia','Juridica','vdantesiam@csmonitor.com',81158528,15),
(182074018,'HugibertCattlemull','Fisica','hcattlemulln@cnn.com',80198537,45),
(418208629,'BobbettePortchmouth','Fisica','bportchmoutho@4shared.com',80117748,65),
(136354903,'RobinaSimonetti','Fisica','rsimonettip@joomla.org',84864669,74),
(569071726,'IgnacioMcGuggy','Fisica','imcguggyq@slideshare.net',83204727,25),
(424951695,'TonyaGodar','Juridica','tgodarr@ihg.com',80543665,56),
(757626625,'KierstenWreak','Fisica','kwreaks@businesswire.com',83341408,46),
(317688991,'IllaSinson','Juridica','isinsont@businessinsider.com',82255652,36),
(482775291,'SadieCollacombe','Juridica','scollacombeu@mozilla.org',83792792,23),
(581105702,'WiattAndreas','Fisica','wandreasv@soundcloud.com',80086539,27),
(567046531,'JunieRagbourne','Fisica','jragbournew@vimeo.com',81955942,16),
(377198775,'SonyaAllum','Fisica','sallumx@usgs.gov',81437406,75),
(545658961,'EdBasketfield','Juridica','ebasketfieldy@sbwire.com',81553915,17),
(816024721,'AileeRomagosa','Fisica','aromagosaz@pcworld.com',81613225,47),
(761838465,'DuffTrathan','Fisica','dtrathan10@cyberchimps.com',80956447,63),
(235172101,'CordMcKenny','Juridica','cmckenny11@live.com',84089727,78),
(460483117,'ThaneTampen','Juridica','ttampen12@etsy.com',82335714,28),
(678079188,'RafaelaKirman','Fisica','rkirman13@tripadvisor.com',81596585,58)



--Tabla Categoria
CREATE TABLE Categoria(
IDCategoria int primary key,
NombreCategoria varchar (50)
)

--Datos para la tabla Categoria de forma automatizada
INSERT INTO Categoria(IDCategoria,NombreCategoria) VALUES 
('2510','Zapatos'),
('3196','Adornos'),
('1646','Ropa'),
('2116','Zapatos'),
('3181','Adornos'),
('2429','Zapatos'),
('2143','Zapatos'),
('3853','Adornos'),
('3735','Adornos'),
('1572','Ropa'),
('2262','Zapatos'),
('1174','Ropa'),
('1143','Ropa'),
('2198','Zapatos'),
('2775','Zapatos'),
('2242','Zapatos'),
('3605','Adornos'),
('3517','Adornos'),
('3805','Adornos'),
('1259','Ropa'),
('1312','Ropa'),
('3780','Adornos'),
('2479','Zapatos'),
('3499','Adornos'),
('1766','Ropa'),
('3611','Adornos'),
('3413','Adornos'),
('1715','Ropa'),
('1495','Ropa'),
('3996','Adornos'),
('1517','Ropa'),
('2488','Zapatos'),
('2105','Zapatos'),
('2967','Zapatos'),
('2122','Zapatos'),
('1570','Ropa'),
('1204','Ropa'),
('3799','Adornos'),
('3784','Adornos'),
('3184','Adornos')

--Tabla Subcategoria
CREATE TABLE Subcategoria(
IDSubcategoria  tinyint primary key,
IDCategoria int, /*llave foranea*/
constraint FKIDCar foreign key (IDCategoria) references Categoria(IDCategoria)
)

--Datos para la tabla Subcategoria de forma automatizada
INSERT INTO Subcategoria(IDSubcategoria,IDCategoria) VALUES  
(81,2510),
(82,3196),
(83,1646),
(84,2116),
(85,3181),
(86,2429),
(87,2143),
(88,3853),
(89,3735),
(90,1572),
(91,2262),
(92,1174),
(93,1143),
(94,2198),
(95,2775),
(96,2242),
(97,3605),
(98,3517),
(99,3805),
(100,1259),
(101,1312),
(102,3780),
(103,2479),
(104,3499),
(105,1766),
(106,3611),
(107,3413),
(108,1715),
(109,1495),
(110,3996),
(111,1517),
(112,2488),
(113,2105),
(114,2967),
(115,2122),
(116,1570),
(117,1204),
(118,3799),
(119,3784),
(120,3184)

--Tabla Producto
CREATE TABLE Producto(
IDInterno smallint primary key,
FechaFabricación date,
Precio smallint,
IDUniversal smallint,
Color varchar (30),
Tamaño varchar (50),
IDSubcategoria tinyint, /*llave foranea*/
constraint FKIDSubCar foreign key (IDSubcategoria) references Subcategoria(IDSubcategoria)
)
--Datos para la tabla Producto de forma automatizada
INSERT INTO  Producto(IDInterno,FechaFabricación,Precio,IDUniversal,Color,Tamaño,IDSubcategoria ) VALUES 
(41,'07/02/2023',1725,1,'Rojo','Grande',81),
(42,'08/18/2023',530,2,'Azul','Mediano',82),
(43,'08/23/2023',9415,3,'Verde','Pequeño',83),
(44,'07/07/2023',6125,4,'Amarillo','Pequeño',84),
(45,'09/09/2023',220,5,'Naranja','Pequeño',85),
(46,'07/06/2023',8255,6,'Rosa','Pequeño',86),
(47,'08/25/2023',4190,7,'Morado','Mediano',87),
(48,'09/04/2023',760,8,'Negro','Grande',88),
(49,'07/13/2023',6935,9,'Blanco','Grande',89),
(50,'08/01/2023',10500,10,'Gris','Grande',90),
(51,'08/31/2023',1735,11,'Marrón','Grande',91),
(52,'07/15/2023',12450,12,'Turquesa','Mediano',92),
(53,'08/08/2023',3575,13,'Dorado','Mediano',93),
(54,'09/03/2023',2260,14,'Plateado','Pequeño',94),
(55,'08/05/2023',1845,15,'Verde','Pequeño',95),
(56,'08/22/2023',6700,16,'Celeste','Pequeño',96),
(57,'08/11/2023',555,17,'Beige','Mediano',97),
(58,'07/10/2023',9920,18,'Coral','Pequeño',98),
(59,'08/28/2023',10925,19,'Lavanda','Grande',99),
(60,'08/20/2023',2935,20,'Cian','Mediano',100),
(61,'08/29/2023',1980,21,'Verde ','Pequeño',101),
(62,'08/24/2023',8005,22,'Lavanda','Mediano',102),
(63,'07/17/2023',6245,23,'Amarillo ','Pequeño',103),
(64,'08/14/2023',1565,24,'Rojo','Grande',104),
(65,'08/30/2023',2485,25,'Magenta','Grande',105),
(66,'09/12/2023',1380,26,'Verde ','Grande',106),
(67,'08/19/2023',9725,27,'Azul ','Mediano',107),
(68,'08/16/2023',3450,28,'Púrpura','Grande',108),
(69,'08/21/2023',5075,29,'Verde ','Pequeño',109),
(70,'08/26/2023',3855,30,'Amarillo','Mediano',110),
(71,'08/27/2023',2420,31,'Azul','Mediano',111),
(72,'08/02/2023',7165,32,'Lavanda','Mediano',112),
(73,'08/03/2023',9050,33,'Amarillo ','Pequeño',113),
(74,'09/01/2023',1355,34,'Rojo','Grande',114),
(75,'09/05/2023',2110,35,'Magenta','Grande',115),
(76,'09/06/2023',7505,36,'Verde ','Pequeño',116),
(77,'08/04/2023',4205,37,'Azul ','Grande',117),
(78,'08/07/2023',6075,38,'Púrpura','Grande',118),
(79,'08/09/2023',13450,39,'Verde ','Grande',119),
(80,'09/08/2023',5870,40,'Amarillo','Grande',120)


--Tabla Cliente
CREATE TABLE Cliente(
CedulaCliente int primary key,
Direccion varchar (100),
NombreCliente varchar (50),
TipoCedula varchar (50),
TelefonoCliente int,
FechaNacimiento date,
correo varchar (50)
)
--Datos para la tabla Cliente, de forma automatizada
INSERT INTO Cliente (CedulaCliente,Direccion,NombreCliente,TipoCedula,TelefonoCliente,FechaNacimiento,correo) VALUES 
('695376506','186160','Cecilia','Fisica','74625102','12/05/2002','cskillern1r@geocities.jp'),
('171843632','225084','Pansie','Fisica','67781616','04/10/1995','plesaunier1s@dagondesign.com'),
('127435759','412196','Katherine','Fisica','63373338','09/03/1998','kletchford1t@desdev.cn'),
('262052732','349355','Austen','Fisica','71010501','07/20/2003','awenman1u@etsy.com'),
('143665607','159191','Skip','Fisica','75025306','11/15/1991','sgeri1v@a8.net'),
('319775036','725786','Felic','Juridica','79177699','06/02/1997','ftosh1w@smh.com.au'),
('547662125','189570','Darby','Fisica','76045584','03/18/2004','dmennear1x@usa.gov'),
('161246447','127996','Elbertine','Fisica','71708515','08/29/2000','erominov1y@mediafire.com'),
('289183629','566662','Thorndike','Fisica','66093231','12/07/1993','tesslement1z@usda.gov'),
('273445097','471562','Beau','Fisica','72583529','02/14/2001','bmarie20@wunderground.com'),
('185641618','597020','Jilly','Fisica','61484632','09/25/1996','jpersich21@baidu.com'),
('759954779','548912','Papageno','Fisica','66339152','10/11/1990','pmusso22@phpbb.com'),
('361456178','360268','Seward','Juridica','61032644','06/19/2005','saireton23@rediff.com'),
('691812685','485727','Matelda','Fisica','69421404','04/22/1994','mbettam24@nydailynews.com'),
('232223600','188313','Herold','Fisica','64363907','01/08/1992','hvedenyakin25@gmpg.org'),
('761837854','440984','Madeline','Fisica','85153633','07/01/1999','mferriman26@google.cn'),
('573155433','476383','Herby','Fisica','73476982','05/12/1997','hstickney27@uiuc.edu'),
('396543699','547926','Sarge','Juridica','76554529','08/06/1993','sapplewhite28@sitemeter.com'),
('323021622','291537','Salim','Juridica','73481847','03/23/1998','schilver29@posterous.com'),
('398221238','387039','Miguela','Juridica','86264111','12/30/2004','mdaubeny2a@naver.com'),
('475282772','359262','Chas','Fisica','63025834','09/17/2002','ccreane2b@dyndns.org'),
('139858221','630238','Rorke','Fisica','81527188','11/04/1995','rkohrsen2c@tripod.com'),
('678576816','558676','Vonnie','Fisica','86110587','07/13/1991','vdenial2d@tamu.edu'),
('575931052','639371','Kippie','Fisica','65529276','02/09/2003','kpochet2e@wix.com'),
('568025896','186867','Cecelia','Fisica','81563351','08/21/1994','cbraney2f@networksolutions.com'),
('452066980','115947','Cchaddie','Fisica','76429362','01/03/1996','cgimlet2g@sfgate.com'),
('361323091','278039','Joelly','Juridica','89211420','10/10/2000','jvalentinuzzi2h@1688.com'),
('679472411','798357','Pris','Fisica','78681685','06/26/1990','pcraigie2i@a8.net'),
('740582670','593445','Demott','Fisica','65539281','04/05/1999','ddruce2j@soup.io'),
('516607283','621711','Ettie','Fisica','83584165','12/14/1992','efitzalan2k@tiny.cc'),
('341057291','793290','Raddy','Juridica','67988496','03/07/1997','rcampion2l@icq.com'),
('550201195','493646','Giusto','Fisica','83435811','05/16/2001','gfowlston2m@sfgate.com'),
('390968839','556753','Brian','Juridica','76929255','09/02/1993','bmacpadene2n@blinklist.com'),
('351714256','726140','Ramsay','Juridica','72034469','11/18/1998','rpeterffy2o@ted.com'),
('431847356','129355','Luis','Fisica','79120519','07/08/2004','laspinall2p@blog.com'),
('779435824','742485','Winna','Fisica','89156525','02/27/1991','wcroley2q@craigslist.org'),
('564376649','297423','Cordi','Fisica','61823591','10/19/1996','ckiljan2r@live.com'),
('383274969','735747','Jesus','Juridica','85802947','04/24/2002','jgilfoy2s@xing.com'),
('636984529','317367','Analise','Fisica','69631923','06/01/1994','awithull2t@quantcast.com'),
('184185432','563997','Horatio','Fisica','81976209','01/09/2005','hrosewell2u@adobe.com')


--Tabla Factura
CREATE TABLE Factura(
NumeroFactura int PRIMARY KEY,
Unidades smallint,
Precio int,
PorcentajeDescuento tinyint,
PorcentajeImpuestos tinyint,
MetodoPago varchar (50),
EstadoPago varchar (50),
IDInterno smallint,/*llave foranea*/
CedulaCliente int, /*llave foranea*/
constraint FKIDCli foreign key (CedulaCliente) references Cliente(CedulaCliente),
constraint FKIDIn foreign key (IDInterno) references Producto(IDInterno)
)
--Datos para la tabla Factura de forma automatizada
INSERT INTO Factura(NumeroFactura,Unidades,Precio,PorcentajeDescuento,PorcentajeImpuestos,MetodoPago,EstadoPago,IDInterno,CedulaCliente) VALUES 
(1000,3,10000,30,4,'Tarjeta','Pendiente',41,'695376506'),
(1001,1,8500,45,13,'Tarjeta','Cancelado',42,'171843632'),
(1002,9,14000,55,2,'Efectivo','Pendiente',43,'127435759'),
(1003,1,12500,65,12,'Efectivo','Pendiente',44,'262052732'),
(1004,8,9500,40,11,'Tarjeta','Cancelado',45,'143665607'),
(1005,7,18500,50,12,'Efectivo','Pendiente',46,'319775036'),
(1006,6,27500,70,9,'Tarjeta','Pendiente',47,'547662125'),
(1007,5,15000,35,9,'Efectivo','Cancelado',48,'161246447'),
(1008,7,7500,60,12,'Tarjeta','Cancelado',49,'289183629'),
(1009,10,23500,25,5,'Tarjeta','Pendiente',50,'273445097'),
(1010,3,32000,33,10,'Efectivo','Pendiente',51,'185641618'),
(1011,4,21500,57,11,'Efectivo','Cancelado',52,'759954779'),
(1012,4,38500,75,2,'Tarjeta','Pendiente',53,'361456178'),
(1013,3,25000,42,3,'Tarjeta','Pendiente',54,'691812685'),
(1014,6,11000,28,5,'Efectivo','Cancelado',55,'232223600'),
(1015,10,19500,68,3,'Efectivo','Cancelado',56,'761837854'),
(1016,8,46500,37,13,'Tarjeta','Pendiente',57,'573155433'),
(1017,9,30000,52,13,'Tarjeta','Pendiente',58,'396543699'),
(1018,6,35000,48,5,'Efectivo','Cancelado',59,'323021622'),
(1019,8,6000,53,9,'Tarjeta','Pendiente',60,'398221238'),
(1020,3,16500,32,10,'Efectivo','Cancelado',61,'475282772'),
(1021,5,28500,72,3,'Tarjeta','Cancelado',62,'139858221'),
(1022,7,13500,38,3,'Efectivo','Pendiente',63,'678576816'),
(1023,2,44500,63,7,'Tarjeta','Cancelado',64,'575931052'),
(1024,7,22500,27,4,'Efectivo','Pendiente',65,'568025896'),
(1025,1,42500,47,10,'Tarjeta','Pendiente',66,'452066980'),
(1026,9,40000,73,7,'Tarjeta','Cancelado',67,'361323091'),
(1027,3,20000,70,1,'Efectivo','Pendiente',68,'679472411'),
(1028,1,36500,31,9,'Efectivo','Cancelado',69,'740582670'),
(1029,3,31500,69,1,'Tarjeta','Pendiente',70,'516607283'),
(1030,7,24000,36,10,'Efectivo','Cancelado',71,'341057291'),
(1031,3,17500,62,7,'Efectivo','Pendiente',72,'550201195'),
(1032,5,48500,28,1,'Tarjeta','Pendiente',73,'390968839'),
(1033,4,34500,44,5,'Tarjeta','Cancelado',74,'351714256'),
(1034,2,33500,66,8,'Efectivo','Cancelado',75,'431847356'),
(1035,5,29500,39,9,'Efectivo','Pendiente',76,'779435824'),
(1036,9,5000,34,4,'Tarjeta','Pendiente',77,'564376649'),
(1037,2,41500,51,7,'Tarjeta','Cancelado',78,'383274969'),
(1038,3,45000,59,8,'Efectivo','Pendiente',79,'636984529'),
(1039,5,37500,74,9,'Tarjeta','Cancelado',80,'184185432')



--Tabla M:N entre Factura y producto
CREATE TABLE FactProd (
    NumeroFactura int,
    IDInterno smallint,
    PRIMARY KEY (NumeroFactura,IDInterno),
    FOREIGN KEY (NumeroFactura) REFERENCES Factura(NumeroFactura),
    FOREIGN KEY (IDInterno) REFERENCES Producto(IDInterno)
)

--Datos para la tabla FactProd  de forma automatizada
INSERT INTO FactProd(NumeroFactura,IDInterno) VALUES 
(1000,41),
(1001,42),
(1002,43),
(1003,44),
(1004,45),
(1005,46),
(1006,47),
(1007,48),
(1008,49),
(1009,50),
(1010,51),
(1011,52),
(1012,53),
(1013,54),
(1014,55),
(1015,56),
(1016,57),
(1017,58),
(1018,59),
(1019,60),
(1020,61),
(1021,62),
(1022,63),
(1023,64),
(1024,65),
(1025,66),
(1026,67),
(1027,68),
(1028,69),
(1029,70),
(1030,71),
(1031,72),
(1032,73),
(1033,74),
(1034,75),
(1035,76),
(1036,77),
(1037,78),
(1038,79),
(1039,80)


