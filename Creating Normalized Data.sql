-- DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
title VARCHAR(100),
genre_id INT,
release_year SMALLINT,
director_id INT,
studio_id INT);

-- DROP TABLE IF EXISTS genre;

CREATE TABLE genre (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
genre VARCHAR(25));

-- DROP TABLE IF EXISTS director;

CREATE TABLE director 
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
dir_name VARCHAR(40));

-- DROP TABLE IF EXISTS studio;

CREATE TABLE studio (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
studio_name VARCHAR(30),
city VARCHAR(20));

-- DROP TABLE IF EXISTS critic_rating;

CREATE TABLE critic_rating(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
title_id INT,
critics_rating DECIMAL(2,1));

ALTER TABLE titles
ADD CONSTRAINT genre_id_fk
FOREIGN KEY (genre_id)
REFERENCES genre (id),

ADD CONSTRAINT director_id_fk
FOREIGN KEY (director_id)
REFERENCES director (id),

ADD CONSTRAINT studio_id_fk
FOREIGN KEY (studio_id)
REFERENCES studio (id);

ALTER TABLE critic_rating
ADD CONSTRAINT title_id_fk
FOREIGN KEY (title_id)
REFERENCES titles (id);