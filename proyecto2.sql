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
	name varchar(30) NOT NULL PRIMARY KEY,
	award1 varchar(20) NOT NULL,
	award2 varchar(20) NOT NULL,
	award3 varchar(20) NOT NULL,
	genre varchar(15) NOT NULL,
	
	CONSTRAINT pk_serie_id
	-- falta detallar constraint
)

CREATE TABLE temporada (
	serie_id varchar(12) PRIMARY KEY NOT NULL,
	episode_link varchar(100) NOT NULL,
	episode_name varchar(20) NOT NULL,
	season int NOT NULL,
	serie_name varchar(30) NOT NULL,
	
	CONSTRAINT fk_serie_name
	-- falta detallar constraint
	
	CONSTRAINT pk_serie_id
	-- falta detallar constraint
)

CREATE TABLE pelicula (
	movie_id varchar(12) PRIMARY KEY NOT NULL,
	director varchar(20) NOT NULL,
	category int NOT NULL, -- 0: todo publico, 1: mayores de 10, 2: mayores de 13, 3: mayores de 15, 4: mayores de 17, 5: solo adultos
	actor1 varchar(20) NOT NULL,
	actor2 varchar(20) NOT NULL,
	actor3 varchar(20) NOT NULL,
	name varchar(30) NOT NULL,
	award1 varchar(20) NOT NULL,
	award2 varchar(20) NOT NULL,
	award3 varchar(20) NOT NULL,
	genre varchar(15) NOT NULL,
	link varchar(100) NOT NULL PRIMARY KEY,

	CONSTRAINT pk_movie_id
	-- falta detallar constraint
	
)

CREATE TABLE admin (
	admin_id varchar(15) PRIMARY KEY NOT NULL,
	first_name varchar(15) NOT NULL,
	last_name varchar(15) NOT NULL,
	password varchar(15) NOT NULL,
	email varchar(30) PRIMARY KEY NOT NULL,
	birthdate date NOT NULL,
	region varchar(20) NOT NULL,
	profile1 vachar(15) NOT NULL,
	profile2 vachar(15) NOT NULL,
	
	CONSTRAINT fk_region
	-- falta detallar constraint
	
	CONSTRAINT fk_profile1
	-- falta detallar constraint
	
	CONSTRAINT fk_profile2
	-- falta detallar constraint
	
)

CREATE TABLE region (
	country varchar(30) PRIMARY KEY NOT NULL,
	zipcode int NOT NULL,
	country_code int PRIMARY KEY NOT NULL,
	
)

CREATE TABLES pago (
	user_id varchar(12) PRIMARY KEY NOT NULL,
	payday date,
	
	
	CONSTRAINT fk_user_id
	-- falta detallar constraint
)

CREATE TABLE perfil (
	activated boolean PRIMARY KEY NOT NULL,
	user_id varchar(12) PRIMARY KEY NOT NULL,
	nickname varchar(16) NOT NULL,
	is_watching boolean NOT NULL,
	
	CONSTRAINT fk_user_id
	-- falta detallar constraint
	
)