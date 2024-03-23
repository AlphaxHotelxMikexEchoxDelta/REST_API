INSERT INTO genre (nom) VALUES ('Action');
INSERT INTO genre (nom) VALUES ('Comédie');
INSERT INTO genre (nom) VALUES ('Drame');
INSERT INTO genre (nom) VALUES ('Horreur');
INSERT INTO genre (nom) VALUES ('Science-fiction');
INSERT INTO genre (nom) VALUES ('Thriller');

INSERT INTO auteur (nom, prenom) VALUES ('Tarantino', 'Quentin');
INSERT INTO auteur (nom, prenom) VALUES ('Nolan', 'Christopher');
INSERT INTO auteur (nom, prenom) VALUES ('Spielberg', 'Steven');
INSERT INTO auteur (nom, prenom) VALUES ('Scorsese', 'Martin');
INSERT INTO auteur (nom, prenom) VALUES ('Coppola', 'Francis Ford');
INSERT INTO auteur (nom, prenom) VALUES ('Kubrick', 'Stanley');

INSERT INTO acteur (nom, prenom) VALUES ('DiCaprio', 'Leonardo');
INSERT INTO acteur (nom, prenom) VALUES ('Pitt', 'Brad');
INSERT INTO acteur (nom, prenom) VALUES ('De Niro', 'Robert');
INSERT INTO acteur (nom, prenom) VALUES ('Hanks', 'Tom');
INSERT INTO acteur (nom, prenom) VALUES ('Cruise', 'Tom');

INSERT INTO studio (nom) VALUES ('Warner Bros');
INSERT INTO studio (nom) VALUES ('Universal Pictures');
INSERT INTO studio (nom) VALUES ('Paramount Pictures');
INSERT INTO studio (nom) VALUES ('20th Century Fox');
INSERT INTO studio (nom) VALUES ('Columbia Pictures');
INSERT INTO studio (nom) VALUES ('MGM');

INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Kill Bill', 2003, 111, 1, 1, 1);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Django Unchained', 2012, 165, 1, 1, 1);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Interstellar', 2014, 169, 5, 2, 2);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Le Loup de Wall Street', 2013, 180, 3, 3, 3);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('E.T.', 1982, 115, 3, 4, 4);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Jurassic Park', 1993, 127, 3, 5, 5);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Minority Report', 2002, 145, 5, 6, 6);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Pulp Fiction', 1994, 154, 6, 1, 1);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Inception', 2010, 148, 5, 2, 2);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Shutter Island', 2010, 138, 3, 3, 3);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Taxi Driver', 1976, 113, 3, 4, 4);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('Le Parrain', 1972, 175, 3, 5, 5);
INSERT INTO film (titre, annee, duree, id_genre, id_auteur, id_studio) VALUES ('2001: l''Odyssée de l''espace', 1968, 149, 5, 6, 6);

INSERT INTO film_acteur (id_film, id_acteur) VALUES (1, 3);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (1, 4);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (1, 5);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (2, 3);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (2, 4);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (3, 4);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (3, 5);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (4, 4);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (5, 4);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (6, 4);
INSERT INTO film_acteur (id_film, id_acteur) VALUES (6, 5);

