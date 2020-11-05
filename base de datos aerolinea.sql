create database aerolinea ;

use aerolinea;

create table pasajeros (
id int (11) not null auto_increment,
nombres varchar (50) not null,
apellidos varchar (50) not null,
tipo_documento varchar (2) not null,
numero_documento int (15) not null,
telefono varchar (20),
direccion varchar (50),
correo varchar (50),
primary key (id)
);

create table ciudades (
id int (11) not null auto_increment,
nombre_ciudad varchar(50) not null,
primary key (id)
);

create table vuelos (
id int (11) not null auto_increment,
numero_vuelo varchar (50) not null,
codigo_avion varchar (50) not null,
fecha_salida date not null,
id_ciudad_salida int (11) not null,
id_ciudad_destino int (11) not null,
primary key (id),
foreign key (id_ciudad_salida) references ciudades(id),
foreign key (id_ciudad_destino) references ciudades(id)
);

create table vuelos_por_pasajeros (
id_vuelo int (11) not null,
id_pasajero int (11) not null,
primary key (id_vuelo, id_pasajero),
foreign key (id_vuelo) references vuelos(id),
foreign key (id_pasajero) references pasajeros(id)
);

insert into pasajeros (nombres, apellidos, tipo_documento, numero_documento, telefono, direccion, correo) values (" david", "ramirez", "cc", 1036637050, "3014567890", "lomas", "correo@correo.com");
insert into pasajeros (nombres, apellidos, tipo_documento, numero_documento, telefono, direccion, correo) values ("hernan", "cuervo", "ce", 103663745, "3014501990", "prado", "correocorreo@correo.com");
insert into pasajeros (nombres, apellidos, tipo_documento, numero_documento, telefono, direccion, correo) values ("wilinton", "lopez", "cc", 10366350, "5983014567890", "palmar", "correoco@correo.com");

insert into ciudades (nombre_ciudad) values ("medellin");
insert into ciudades (nombre_ciudad) values ("bogota");
insert into ciudades (nombre_ciudad) values ("cali");
insert into ciudades (nombre_ciudad) values ("cartagena");
insert into ciudades (nombre_ciudad) values ("santa marta");
insert into ciudades (nombre_ciudad) values ("barranquilla");
insert into ciudades (nombre_ciudad) values ("pereira");

insert into vuelos (numero_vuelo, codigo_avion, fecha_salida, id_ciudad_salida,id_ciudad_destino) values ("n2345", "avi1234", "2020-10-12", 1, 2);
insert into vuelos (numero_vuelo, codigo_avion, fecha_salida, id_ciudad_salida,id_ciudad_destino) values ("n43567", "avi1235", "2020-10-12", 1, 3);
insert into vuelos (numero_vuelo, codigo_avion, fecha_salida, id_ciudad_salida,id_ciudad_destino) values ("n2367", "avi1234", "2020-10-12", 2, 4);
insert into vuelos (numero_vuelo, codigo_avion, fecha_salida, id_ciudad_salida,id_ciudad_destino) values ("n5678", "avi1245", "2020-10-12", 7, 2);
insert into vuelos (numero_vuelo, codigo_avion, fecha_salida, id_ciudad_salida,id_ciudad_destino) values ("n1098", "avi1245", "2020-10-12", 2, 1);

insert into vuelos_por_pasajeros (id_vuelo, id_pasajero) values (1, 1);
insert into vuelos_por_pasajeros (id_vuelo, id_pasajero) values (2, 2);
insert into vuelos_por_pasajeros (id_vuelo, id_pasajero) values (1, 3);
insert into vuelos_por_pasajeros (id_vuelo, id_pasajero) values (4, 2);
insert into vuelos_por_pasajeros (id_vuelo, id_pasajero) values (5, 1);