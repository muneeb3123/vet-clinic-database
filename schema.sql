/* Database schema to keep the structure of entire database. */


CREATE TABLE animals (
    id INT GENERATED BY DEFAULT AS IDENTITY,
    name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL(5, 2),
    species VARCHAR(50),
    PRIMARY KEY(id)
);
--  Modify animals table
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INT,
    ADD CONSTRAINT species_id_fk FOREIGN KEY (species_id) REFERENCES species (id) ON DELETE CASCADE;
ALTER TABLE animals ADD COLUMN owner_id INT,
    ADD CONSTRAINT owner_id_fk FOREIGN KEY (owner_id) REFERENCES owners (id) ON DELETE CASCADE;

CREATE TABLE owners (
    id INT GENERATED BY DEFAULT AS IDENTITY,
    full_name VARCHAR(50),
    age INT,
    PRIMARY KEY(id)
);

CREATE TABLE species (
    id INT GENERATED BY DEFAULT AS IDENTITY,
    name VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE vets (
    id INT GENERATED BY DEFAULT AS IDENTITY,
    name VARCHAR(50),
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY(id)
);

-- MANY TO MANY RELATION BETWEEN vets AND species TABLE
CREATE TABLE specializations (
    vet_id INT,
    species_id INT,
    FOREIGN KEY (vet_id) REFERENCES vets (id) ON DELETE CASCADE,
    FOREIGN KEY (species_id) REFERENCES species (id) ON DELETE CASCADE,
    PRIMARY KEY (vet_id,species_id)
);

-- MANY TO MANY RELATION BETWEEN vets AND animals TABLE
CREATE TABLE visits (
    vet_id INT,
    animal_id INT,
    visit_date DATE,
    FOREIGN KEY (vet_id) REFERENCES vets (id) ON DELETE CASCADE,
    FOREIGN KEY (animal_id) REFERENCES animals (id) ON DELETE CASCADE,
    PRIMARY KEY (vet_id, visit_date)
);
CREATE TABLE vet_summary TO STORE TOTAL VISITS OF EVERY VET
CREATE TABLE vet_summary (
  vet_id int REFERENCES vets(id), 
  total_visits int
);





