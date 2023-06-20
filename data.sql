/* Populate database with sample data. */

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Agumon', '2020-02-03', 10.23, true, 0);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Gabumon', '2018-11-15', 8, true, 2);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Pikachu', '2021-01-07',15.04, false, 1);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Devimon', '2017-05-12',11,true,5);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Charmender', '2020-02-08',-11,false,0);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Plantmon', '2021-11-15',-5.7,true,2);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Squirtle', '1993-04-02',-12.13,false,3);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Angemon', '2005-06-12',-45,true,1);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Boarmon', '2005-06-07',20.4,true,7);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Blossom', '1998-10-13',17,true,3);

INSERT INTO animals(name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Ditto', '2022-05-14',22,true,4);

INSERT INTO owners(full_name,age) VALUES ('Sam Smith',34),('Jennifer Orwell',19),('Bob',45),('Melody Pond',77),('Dean Winchester',14),('Jodie Whittaker',38);
INSERT INTO species(name) VALUES ('Pokemon'),('Digimon');

-- Insert the following data for vets
INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '2000-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '2008-06-08');

-- INSERT INTO SPECIALIZATION TABLE
INSERT INTO specializations (vet_id, species_id)
VALUES (
    (SELECT id FROM vets WHERE name = 'William Tatcher'),
    (SELECT id FROM species WHERE name = 'Pokemon')
);
INSERT INTO specializations (vet_id, species_id)
VALUES (
    (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
    (SELECT id FROM species WHERE name IN ('Pokemon'))
);

INSERT INTO specializations (vet_id, species_id)
VALUES (
    (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
    (SELECT id FROM species WHERE name IN ('Digimon'))
);
INSERT INTO specializations (vet_id, species_id)
VALUES (
    (SELECT id FROM vets WHERE name = 'Jack Harkness'),
    (SELECT id FROM species WHERE name = 'Digimon')
);
-- INSERT INTO visits TABLE
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'William Tatcher'),
    (SELECT id FROM animals WHERE name = 'Agumon'),
    '2020-05-24'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
    (SELECT id FROM animals WHERE name = 'Agumon'),
    '2020-07-22'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Jack Harkness'),
    (SELECT id FROM animals WHERE name = 'Gabumon'),
    '2021-02-02'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Pikachu'),
    '2020-01-05'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Pikachu'),
    '2020-03-08'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Pikachu'),
    '2020-05-14'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
    (SELECT id FROM animals WHERE name = 'Devimon'),
    '2021-05-04'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Jack Harkness'),
    (SELECT id FROM animals WHERE name = 'Charmander'),
    '2021-02-24'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Plantmon'),
    '2019-12-21'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'William Tatcher'),
    (SELECT id FROM animals WHERE name = 'Plantmon'),
    '2020-08-10'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Plantmon'),
    '2021-04-07'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
    (SELECT id FROM animals WHERE name = 'Squirtle'),
    '2019-09-29'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Jack Harkness'),
    (SELECT id FROM animals WHERE name = 'Angemon'),
    '2020-10-03'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Jack Harkness'),
    (SELECT id FROM animals WHERE name = 'Angemon'),
    '2020-11-04'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Boarmon'),
    '2019-01-24'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Boarmon'),
    '2019-05-15'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Boarmon'),
    '2020-02-27'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Boarmon'),
    '2020-08-03'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
    (SELECT id FROM animals WHERE name = 'Blossom'),
    '2020-05-24'
);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'William Tatcher'),
    (SELECT id FROM animals WHERE name = 'Blossom'),
    '2021-01-11'
);


-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animal_id, vet_id, visit_date) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;



-- This will add 2.500.000 owners with full_name = 'Owner <X>' and email = 'owner_<X>@email.com' (~2min approx.)
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';




