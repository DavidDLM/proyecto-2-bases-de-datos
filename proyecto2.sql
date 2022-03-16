CREATE TABLE usuario (
	user_id varchar(12) PRIMARY KEY NOT NULL,
	email varchar(12) PRIMARY KEY NOT NULL,
	password bytea NOT NULL, -- necesita pasarse por un hash
	first_name varchar(16) NOT NULL,
	last_name varchar(16) NOT NULL,
	region int NOT NULL, -- seran los country codes
	plan_type int NOT NULL, -- 0:gratuito, 1:pagado, 2:avanzado, si es gratuito, solo 1 perfil, pagado 4 perfiles y avanzado 8
	birthdate date NOT NULL,
	profile1 varchar(12) NOT NULL,
	profile2 varchar(12),
	profile3 varchar(12),
	profile4 varchar(12),
	profile5 varchar(12),
	profile6 varchar(12),
	profile7 varchar(12),
	profile8 varchar(12),
	
	CONSTRAINT pk_user_id
	-- falta detallar constraint
)

CREATE TABLE serie (
	serie_id varchar(12) PRIMARY KEY NOT NULL,
	director varchar(20) NOT NULL,
	category int NOT NULL, -- 0: todo publico, 1: mayores de 10, 2: mayores de 13, 3: mayores de 15, 4: mayores de 17, 5: solo adultos
	actor1 varchar(20) NOT NULL,
	actor2 varchar(20) NOT NULL,
	actor3 varchar(20) NOT NULL,
	name varchar(30) NOT NULL,
	award1 varchar(20) NOT NULL,
	award2 varchar(20) NOT NULL,
	award3 varchar(20) NOT NULL,
)

CREATE TABLE 