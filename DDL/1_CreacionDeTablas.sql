CREATE TABLE Documento (
    ID int IDENTITY PRIMARY KEY,
    titulo varchar(250) NULL,
    tipo char (1),
    version_actual char (8),
	vencimiento datetime null
);
CREATE TABLE Relacion(
	ID int IDENTITY PRIMARY KEY,
	id_documento_origen int FOREIGN KEY REFERENCES Documento (ID),
	id_documento_destino int FOREIGN KEY REFERENCES Documento (ID),
	tipo_relacion char (1)
);
CREATE TABLE Version(
	ID int IDENTITY PRIMARY KEY,
	id_documento int FOREIGN KEY REFERENCES Documento (ID),
	version_ char (8),
	fecha_creacion datetime NULL,
	fecha_publicacion datetime NULL,
	borrador bit,
	link_documento varchar (255) NULL,
	referente int FOREIGN KEY REFERENCES Documento (ID),
	revisor int NULL FOREIGN KEY REFERENCES Documento (ID),
	aprobador int NULL FOREIGN KEY REFERENCES Documento (ID)
);
CREATE TABLE Participante(
	ID int IDENTITY PRIMARY KEY,
	id_usuario_ldap bigint,
	nombre varchar (255) NULL
);
