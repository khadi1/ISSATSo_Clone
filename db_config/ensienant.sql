-- Drop table for Notes
DROP TABLE IF EXISTS Notes;

-- Drop table for Resultat
DROP TABLE IF EXISTS Resultat;

-- Drop table for AffectationCoursEnseignant
DROP TABLE IF EXISTS AffectationCoursEnseignant;

-- Drop table for Document
DROP TABLE IF EXISTS Document;

-- Drop table for Salle
DROP TABLE IF EXISTS Salle;

-- Drop table for Cours
DROP TABLE IF EXISTS Cours;

-- Drop table for Rattrapage
DROP TABLE IF EXISTS Rattrapage;

-- Drop table for Matiere
DROP TABLE IF EXISTS Matiere;

-- Drop table for Administrateur
DROP TABLE IF EXISTS Administrateur;

-- Drop table for Enseignant
DROP TABLE IF EXISTS Enseignant;

-- Drop table for Etudiant
DROP TABLE IF EXISTS Etudiant;

-- Drop table for AffectationEmploiTemps
DROP TABLE IF EXISTS AffectationEmploiTemps;

-- Drop table for AffectationGroupeFiliere
DROP TABLE IF EXISTS AffectationGroupeFiliere;

-- Drop table for Filiere
DROP TABLE IF EXISTS Filiere;

-- Drop table for Groupe
DROP TABLE IF EXISTS Groupe;

-- Drop table for Personne
DROP TABLE IF EXISTS Personne;

-- Drop table for Compte
DROP TABLE IF EXISTS Compte;


-- Create table for Groupe
CREATE TABLE Groupe (
    idGroupe INT PRIMARY KEY,
    nomGroupe VARCHAR(255)
);

-- Create table for Filiere
CREATE TABLE Filiere (
    idFiliere INT PRIMARY KEY,
    nomFiliere VARCHAR(255)
);

-- Create table for Personne
CREATE TABLE Personne (
    id INT PRIMARY KEY,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    adresse VARCHAR(255),
    email VARCHAR(255),
    telephone VARCHAR(255),
    statue VARCHAR(255)
);


-- Create table for Compte
CREATE TABLE Compte (
    idCompte INT PRIMARY KEY,
    nomUtilisateur VARCHAR(255),
    motDePasse VARCHAR(255),
    personne_id INT,
    FOREIGN KEY (personne_id) REFERENCES Personne(id)
);



-- Create table for AffectationGroupeFiliere
CREATE TABLE AffectationGroupeFiliere (
    idAffectation INT PRIMARY KEY,
    idGroupe INT,
    idFiliere INT,
    FOREIGN KEY (idGroupe) REFERENCES Groupe(idGroupe),
    FOREIGN KEY (idFiliere) REFERENCES Filiere(idFiliere)
);

-- Create table for Salle
CREATE TABLE Salle (
    idSalle INT PRIMARY KEY,
    nomSalle VARCHAR(255),
    type  VARCHAR(255)
);

-- Create table for Matiere
CREATE TABLE Matiere (
    idMatiere INT PRIMARY KEY,
    nomMatiere VARCHAR(255),
    description TEXT
    
);

-- Create table for Rattrapage
CREATE TABLE Rattrapage (
    idRattrapage INT PRIMARY KEY,
    date DATE,
    idCours INT,
    seance   VARCHAR(255),
    acceptation  INT,
    FOREIGN KEY (idCours) REFERENCES Cours(idCours)
);

-- Create table for Etudiant
CREATE TABLE Etudiant (
    id INT PRIMARY KEY,
    matricule VARCHAR(255),
    niveau VARCHAR(255),
    FOREIGN KEY (id) REFERENCES Personne(id)
);


CREATE TABLE Enseignant (
    id INT PRIMARY KEY,
    numeroEmploye VARCHAR(255),
    specialite VARCHAR(255),
    FOREIGN KEY (id) REFERENCES Personne(id)
);

-- Create table for Administrateur
CREATE TABLE Administrateur (
    id INT PRIMARY KEY,
    numeroEmploye VARCHAR(255),
    FOREIGN KEY (id) REFERENCES Personne(id)
);

-- Create table for Cours
CREATE TABLE Cours (
    idCours INT PRIMARY KEY,
    idFiliere INT,
    idMatiere INT,
    semestre VARCHAR(255),
    FOREIGN KEY (idFiliere) REFERENCES Filiere(idFiliere),
    FOREIGN KEY (idMatiere) REFERENCES Matiere(idMatiere)
);

-- Create table for Document
CREATE TABLE Document (
    idDocument INT PRIMARY KEY,
    titre VARCHAR(255),
    contenu TEXT,
    idCours INT,
    path VARCHAR(255), 
    date_de_creation DATETIME , 
    FOREIGN KEY (idCours) REFERENCES Cours(idCours)
);

-- Create table for Notes
CREATE TABLE Notes (
    idCours INT PRIMARY KEY,
    note_document_path VARCHAR(255),
    FOREIGN KEY (idCours) REFERENCES Cours(idCours)
);

CREATE TABLE AffectationCoursEnseignant (
    idAffectation INT PRIMARY KEY,
    idCours INT,
    idEnseignant VARCHAR(255)
);

-- Create table for AffectationEmploiTemps
CREATE TABLE AffectationEmploiTemps (
    idAffectation INT PRIMARY KEY,
    idGroupeFiliere INT,
    idAffectationCoursEnseignant INT,
    idSalle INT,
    jour DATE,
    seance VARCHAR(255),
    regime VARCHAR(255),
    FOREIGN KEY (idGroupeFiliere) REFERENCES AffectationGroupeFiliere(idAffectation),
    FOREIGN KEY (idSalle) REFERENCES Salle(idSalle),
    FOREIGN KEY (idAffectationCoursEnseignant) REFERENCES AffectationCoursEnseignant(idAffectation)
);

-- Create table for Resultat
CREATE TABLE Resultat (
    idResultat INT PRIMARY KEY,
    idEtudiant VARCHAR(255),
    moyenne FLOAT,
    mention VARCHAR(255)
   
);





-- Insertion des données dans la table Groupe
INSERT INTO Groupe (idGroupe, nomGroupe) VALUES
(101, 'G1');
INSERT INTO Groupe (idGroupe, nomGroupe) VALUES
(102, 'G2');
INSERT INTO Groupe (idGroupe, nomGroupe) VALUES
(103, 'G3');
INSERT INTO Groupe (idGroupe, nomGroupe) VALUES
(104, 'G4');

-- Insertion des données dans la table Filiere
INSERT INTO Filiere (idFiliere, nomFiliere) VALUES
(201, 'ING');
INSERT INTO Filiere (idFiliere, nomFiliere) VALUES
(202, 'Prepa');
INSERT INTO Filiere (idFiliere, nomFiliere) VALUES
(203, 'LSI');
INSERT INTO Filiere (idFiliere, nomFiliere) VALUES
(204, 'LISI');
INSERT INTO Filiere (idFiliere, nomFiliere) VALUES
(205, 'LEEA');
INSERT INTO Filiere (idFiliere, nomFiliere) VALUES
(206, 'MP');
INSERT INTO Filiere (idFiliere, nomFiliere) VALUES
(207, 'MR');

-- Insertion des données dans la table Compte
INSERT INTO Compte (idCompte, nomUtilisateur, motDePasse, personne_id) VALUES
(301, 'user1', 'password1', 401);
INSERT INTO Compte (idCompte, nomUtilisateur, motDePasse, personne_id) VALUES
(302, 'user2', 'password2', 402);
INSERT INTO Compte (idCompte, nomUtilisateur, motDePasse, personne_id) VALUES
(303, 'user3', 'password3', 403);
INSERT INTO Compte (idCompte, nomUtilisateur, motDePasse, personne_id) VALUES
(304, 'user4', 'password4', 404);

-- Insertion des données dans la table Personne
INSERT INTO Personne (id, nom, prenom, adresse, email, telephone, statue) VALUES
(401, 'Ben Ali', 'Mohamed', 'Tunis', 'mohamed@example.com', '12345678',"Etudiant");
INSERT INTO Personne (id, nom, prenom, adresse, email, telephone , statue) VALUES
(402, 'Bouzidi', 'Fatma', 'Sfax', 'fatma@example.com', '23456789' , "Etudiant");
INSERT INTO Personne (id, nom, prenom, adresse, email, telephone , statue) VALUES
(403, 'Chakroun', 'Ahmed', 'Sousse', 'ahmed@example.com', '34567890' , "Etudiant");
INSERT INTO Personne (id, nom, prenom, adresse, email, telephone , statue) VALUES
(404, 'Dhahbi', 'Nadia', 'Bizerte', 'nadia@example.com', '45678901',"ensignant");
INSERT INTO Personne (id, nom, prenom, adresse, email, telephone , statue) VALUES
(405, 'Jaoua', 'Khadija', 'Bizerte', 'nadia@example.com', '45678901', "ensignant");
INSERT INTO Personne (id, nom, prenom, adresse, email, telephone , statue) VALUES
(406, 'Aziz', 'Ouni', 'Bizerte', 'nadia@example.com', '45678901', "ensignant");
INSERT INTO Personne (id, nom, prenom, adresse, email, telephone , statue) VALUES
(407, 'Emna', 'Ridene', 'Bizerte', 'nadia@example.com', '45678901', "admin");
INSERT INTO Personne (id, nom, prenom, adresse, email, telephone , statue) VALUES
(414, 'Lamiya', 'Ben salah', 'Bizerte', 'nadia@example.com', '45678901', "ensignant");
INSERT INTO Personne (id, nom, prenom, adresse, email, telephone , statue) VALUES
(415, 'Dhahbi', 'Nadia', 'Bizerte', 'nadia@example.com', '45678901',"Etudiant");

-- Insertion des données dans la table Salle
INSERT INTO Salle (idSalle, nomSalle, type) VALUES
(501, 'Salle A1', 'C');
INSERT INTO Salle (idSalle, nomSalle, type) VALUES
(502, 'Salle A2', 'C');
INSERT INTO Salle (idSalle, nomSalle, type) VALUES
(503, 'Salle A3', 'C');
INSERT INTO Salle (idSalle, nomSalle, type) VALUES
(504, 'Salle G1', 'C');
INSERT INTO Salle (idSalle, nomSalle, type) VALUES
(505, 'Salle G2', 'C');
INSERT INTO Salle (idSalle, nomSalle, type) VALUES
(506, 'Salle G3', 'TP');
INSERT INTO Salle (idSalle, nomSalle, type) VALUES
(507, 'Salle G4', 'TP');
INSERT INTO Salle (idSalle, nomSalle, type) VALUES
(508, 'Salle G5', 'TP');
INSERT INTO Salle (idSalle, nomSalle, type) VALUES
(509, 'Salle G6', 'TP');

-- Insertion des données dans la table Matiere
INSERT INTO Matiere (idMatiere, nomMatiere, description) VALUES
(601, 'Algorithmique', 'Description de la matière Algorithmique');
INSERT INTO Matiere (idMatiere, nomMatiere, description) VALUES
(602, 'Base de données avancées', 'Description de la matière Base de données avancées');
INSERT INTO Matiere (idMatiere, nomMatiere, description) VALUES
(603, 'Administration des réseaux', 'Description de la matière Administration des réseaux');

-- Insertion des données dans la table Rattrapage
INSERT INTO Rattrapage (idRattrapage, date, idCours) VALUES
(701, '2024-03-01', 801);
INSERT INTO Rattrapage (idRattrapage, date, idCours) VALUES
(702, '2024-03-15', 802);
INSERT INTO Rattrapage (idRattrapage, date, idCours) VALUES
(703, '2024-04-10', 803);

-- Insertion des données dans la table Etudiant
INSERT INTO Etudiant (id, matricule, niveau) VALUES
(401, 'MAT2024001', 'A1');
INSERT INTO Etudiant (id, matricule, niveau) VALUES
(402, 'MAT2024002', 'A2');
INSERT INTO Etudiant (id, matricule, niveau) VALUES
(403, 'MAT2024003', 'A3');
INSERT INTO Etudiant (id, matricule, niveau) VALUES
(415, 'MAT2024004', 'A1');

-- Insertion des données dans la table Enseignant
INSERT INTO Enseignant (id, numeroEmploye, specialite) VALUES
(404, 'ENS2024001', 'Informatique');
INSERT INTO Enseignant (id, numeroEmploye, specialite) VALUES
(405, 'ENS2024002', 'Réseaux');
INSERT INTO Enseignant (id, numeroEmploye, specialite) VALUES
(406, 'ENS2024003', 'Sécurité');
INSERT INTO Enseignant (id, numeroEmploye, specialite) VALUES
(414, 'ENS2024004', 'Informatique');

-- Insertion des données dans la table Administrateur
INSERT INTO Administrateur (id, numeroEmploye) VALUES
(407, 'ADM2024001');

-- Insertion des données dans la table Cours
INSERT INTO Cours (idCours, idFiliere, idMatiere, semestre) VALUES
(801, 201, 601, 'Sem1');
INSERT INTO Cours (idCours, idFiliere, idMatiere, semestre) VALUES
(802, 202, 602, 'Sem2');
INSERT INTO Cours (idCours, idFiliere, idMatiere, semestre) VALUES
(803, 201, 603, 'Sem1');

-- Insertion des données dans la table Document
INSERT INTO Document (idDocument, titre, contenu, idCours) VALUES
(901, 'Support Cours 1', 'Contenu du support de cours 1', 801);
INSERT INTO Document (idDocument, titre, contenu, idCours) VALUES
(902, 'Support Cours 2', 'Contenu du support de cours 2', 802);
INSERT INTO Document (idDocument, titre, contenu, idCours) VALUES
(903, 'Support Cours 3', 'Contenu du support de cours 3', 803);

-- Insertion des données dans la table Notes
INSERT INTO Notes (idCours, note_document_path) VALUES
(801, '/path/note1.pdf');
INSERT INTO Notes (idCours, note_document_path) VALUES
(802, '/path/note2.pdf');
INSERT INTO Notes (idCours, note_document_path) VALUES
(803, '/path/note3.pdf');

-- Insertion des données dans la table AffectationCoursEnseignant
INSERT INTO AffectationCoursEnseignant (idAffectation, idCours, idEnseignant) VALUES
(1001, 801, 'ENS2024001');
INSERT INTO AffectationCoursEnseignant (idAffectation, idCours, idEnseignant) VALUES
(1002, 802, 'ENS2024002');
INSERT INTO AffectationCoursEnseignant (idAffectation, idCours, idEnseignant) VALUES
(1003, 803, 'ENS2024003');

-- Insertion des données dans la table AffectationEmploiTemps
INSERT INTO AffectationEmploiTemps (idAffectation, idGroupeFiliere, idAffectationCoursEnseignant, idSalle, jour, seance, regime) VALUES
(1201, 101, 1001, 501, '2024-03-01', 'S1', 'H');
INSERT INTO AffectationEmploiTemps (idAffectation, idGroupeFiliere, idAffectationCoursEnseignant, idSalle, jour, seance, regime) VALUES
(1202, 102, 1002, 502, '2024-03-15', 'S2', 'QA');
INSERT INTO AffectationEmploiTemps (idAffectation, idGroupeFiliere, idAffectationCoursEnseignant, idSalle, jour, seance, regime) VALUES
(1203, 103, 1003, 503, '2024-04-10', 'S3', 'QB');

-- Insertion des données dans la table Resultat
INSERT INTO Resultat (idResultat, idEtudiant, moyenne, mention) VALUES
(1301, 'MAT2024001', 15.5, 'Bien');
INSERT INTO Resultat (idResultat, idEtudiant, moyenne, mention) VALUES
(1302, 'MAT2024002', 12.8, 'Assez bien');
INSERT INTO Resultat (idResultat, idEtudiant, moyenne, mention) VALUES
(1303, 'MAT2024003', 18.3, 'Très bien');
INSERT INTO Resultat (idResultat, idEtudiant, moyenne, mention) VALUES
(1304, 'MAT2024004', 16.7, 'Bien');
