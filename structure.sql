CREATE DATABASE IF NOT EXISTS `films` ;
CREATE USER IF NOT EXISTS 'films'@'localhost' IDENTIFIED BY 'films';
GRANT ALL PRIVILEGES ON `films`.* TO 'films'@'localhost';

CREATE TABLE film (
    id_film INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(100) NOT NULL,
    annee INT NOT NULL,
    duree INT NOT NULL,
    id_genre INT NOT NULL,
    id_auteur INT NOT NULL,
    id_studio INT NOT NULL,
    FOREIGN KEY (id_genre) REFERENCES genre(id_genre),
    FOREIGN KEY (id_auteur) REFERENCES auteur(id_auteur),
    FOREIGN KEY (id_studio) REFERENCES studio(id_studio)
);

CREATE TABLE auteur (
    id_auteur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL
);

CREATE TABLE film_acteur (
    id_film INT,
    id_acteur INT,
    PRIMARY KEY (id_film, id_acteur),
    FOREIGN KEY (id_film) REFERENCES film(id_film),
    FOREIGN KEY (id_acteur) REFERENCES acteur(id_acteur)
);
