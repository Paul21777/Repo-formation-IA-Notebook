CREATE TABLE individu(
   code VARCHAR(50),
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   PRIMARY KEY(code)
);

CREATE TABLE professeur(
   code VARCHAR(50),
   competence VARCHAR(50) NOT NULL,
   PRIMARY KEY(code),
   FOREIGN KEY(code) REFERENCES individu(code)
);

CREATE TABLE etudiant(
   code VARCHAR(50),
   diplome VARCHAR(30) NOT NULL,
   PRIMARY KEY(code),
   FOREIGN KEY(code) REFERENCES individu(code)
);

CREATE TABLE salle(
   nom VARCHAR(50),
   PRIMARY KEY(nom)
);

CREATE TABLE matiere(
   nom VARCHAR(50),
   PRIMARY KEY(nom)
);

CREATE TABLE adresse(
   numero VARCHAR(50),
   rue INT,
   ville VARCHAR(50),
   code_postal VARCHAR(5),
   code VARCHAR(50) NOT NULL,
   PRIMARY KEY(numero, rue, ville, code_postal),
   FOREIGN KEY(code) REFERENCES etudiant(code)
);

CREATE TABLE cours(
   nom_1 VARCHAR(50),
   heure_de_début TIME,
   heure_de_fin TIME,
   code VARCHAR(50) NOT NULL,
   code_1 VARCHAR(50) NOT NULL,
   nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(nom_1, heure_de_début, heure_de_fin),
   FOREIGN KEY(nom_1) REFERENCES salle(nom),
   FOREIGN KEY(code) REFERENCES professeur(code),
   FOREIGN KEY(code_1) REFERENCES etudiant(code),
   FOREIGN KEY(nom) REFERENCES matiere(nom)
);
