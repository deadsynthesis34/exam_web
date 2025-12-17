CREATE TABLE conducteurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    pct_salaire DECIMAL(5,2) NOT NULL
);

CREATE TABLE motos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    immatriculation VARCHAR(50) NOT NULL,
    consommation_essense DECIMAL(5,2) NOT NULL,
    pct_entretien DECIMAL(5,2) NOT NULL
);

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    conducteur_id INT,
    moto_id INT,
    horaire_deb DATETIME,
    horaire_fin DATETIME,
    distance_course DECIMAL(10,2),
    montant_course DECIMAL(10,2),
    lieu_depart VARCHAR(100),
    lieu_arrive VARCHAR(100),
    prix_essence DECIMAL(10,2),
    valide BOOLEAN DEFAULT false,
    Foreign Key (conducteur_id) REFERENCES conducteurs(id),
    Foreign Key (moto_id) REFERENCES motos(id)
);