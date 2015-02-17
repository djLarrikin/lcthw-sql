ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number INTEGER;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
/*ALTER TABLE pet ADD COLUMN parent INTEGER;*/
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;


UPDATE person SET dead = "0" WHERE first_name = "Jonathan" AND last_name = "Morton";
UPDATE person SET phone_number = 08055555555 WHERE first_name = "Jonathan" AND last_name = "Morton";
UPDATE person SET salary = 99999999 WHERE first_name = "Jonathan" AND last_name = "Morton";
UPDATE person SET dob = "1988-09-21" WHERE first_name = "Jonathan" AND last_name = "Morton";
SELECT * FROM person;
UPDATE pet SET dob = "1015-02-16" WHERE name = "Fluffy";
UPDATE pet SET dob = "2014-02-16" WHERE name = "Gigantor";
SELECT * FROM pet;
UPDATE person_pet SET purchased_on = "2015-01-16" WHERE id = 0;
UPDATE person_pet SET purchased_on = "2015-01-16" WHERE id = 1;

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
	VALUES (1, "Doug", "Funnie", 20, 0, 08055555555, 10000, "1996-02-16");
INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
	VALUES (2, "Goku", "Son", 20, 0, 08055555555, 10000, "1996-02-16");
INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
	VALUES (3, "Gohan", "Son", 20, 0, 08055555555, 10000, "1996-02-16");
INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
	VALUES (4, "Walter", "White", 50, 0, 08055555555, 10000, "1965-02-16");
SELECT * FROM person;

INSERT INTO pet(id, name, breed, age, dead, dob, parent)
	VALUES (2, "Fluffy Jr.", "Unicorn", 500, 1, "1515-02-16", 0);
INSERT INTO pet(id, name, breed, age, dead, dob, parent)
	VALUES (3, "Fluffy III", "Unicorn", 200, 1, "1815-02-16", 0);
INSERT INTO pet(id, name, breed, age, dead, dob)
	VALUES (4, "Nimbus", "Cloud", 500, 0, "1515-02-16");
INSERT INTO pet(id, name, breed, age, dead, dob, parent)
	VALUES (5, "Nimbus Jr.", "Unicorn", 500, 0, "1515-02-16", 4);
INSERT INTO pet(id, name, breed, age, dead, dob)
	VALUES (6, "Meth", "Drug", 1, 1, "2014-02-16");
SELECT * from pet;

INSERT INTO person_pet(person_id, pet_id, purchased_on)
	VALUES (0, 2, "2014-02-16");
INSERT INTO person_pet(person_id, pet_id, purchased_on)
	VALUES (0, 3, "2004-02-16");
INSERT INTO person_pet(person_id, pet_id, purchased_on)
	VALUES (2, 4, "2013-02-16");
INSERT INTO person_pet(person_id, pet_id, purchased_on)
	VALUES (3, 5, "2002-02-16");
INSERT INTO person_pet(person_id, pet_id, purchased_on)
	VALUES (4, 6, "2000-02-16");

SELECT pet.name, person.first_name, person_pet.purchased_on 
	FROM pet, person, person_pet
	WHERE 
	person_pet.purchased_on >= datetime("2004-01-01") AND
	person.id = person_pet.person_id AND
	pet.id = person_pet.pet_id;

SELECT * FROM pet WHERE parent = 0;
