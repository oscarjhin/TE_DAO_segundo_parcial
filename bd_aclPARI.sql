CREATE TABLE usuarios(
id int(11) NOT NULL AUTO_INCREMENT,
usuario varchar(20),
correo varchar(100),
clave varchar(255),
PRIMARY KEY (id)
);

CREATE TABLE roles(
id int(11) NOT NULL AUTO_INCREMENT,
descripcion varchar(100),
PRIMARY KEY (id)
);

CREATE TABLE permisos(
id int(11) NOT NULL AUTO_INCREMENT,
id_usuario int(11) ,
id_rol int(11),
PRIMARY KEY (id),
KEY (id_usuario),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
KEY (id_rol),
FOREIGN KEY (id_rol) REFERENCES roles(id)
);