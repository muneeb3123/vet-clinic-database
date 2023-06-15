/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon' , 'Pikachu');
SELECT name,escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;
UPDATE animals SET species = 'unspecified';
ROLLBACK;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
DELETE FROM animals;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT sp1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO sp1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
SELECT COUNT(*) AS TOTAL_ANIMALS FROM animals;
SELECT COUNT(*) AS Never_Escaped FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) AS Average_weight FROM animals;
SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) AS Average_escape_attempts FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

UPDATE animals SET species_id = CASE 
WHEN name LIKE '%mon'THEN (SELECT id FROM species WHERE name = 'Digimon')
ELSE (SELECT id FROM species WHERE name = 'Pokemon')
END;

UPDATE animals
SET owner_id = 
  CASE 
    WHEN name = 'Agumon' THEN (SELECT id FROM owners WHERE full_name = 'Sam Smith')
    WHEN name IN ('Gabumon', 'Pikachu') THEN (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell')
    WHEN name IN ('Devimon', 'Plantmon') THEN (SELECT id FROM owners WHERE full_name = 'Bob')
    WHEN name IN ('Charmander', 'Squirtle', 'Blossom') THEN (SELECT id FROM owners WHERE full_name = 'Melody Pond')
    WHEN name IN ('Angemon', 'Boarmon') THEN (SELECT id FROM owners WHERE full_name = 'Dean Winchester')
  END;

