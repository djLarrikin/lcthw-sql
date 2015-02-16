INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Frank", "Smith", 100);

INSERT OR REPLACE INTO person (id, first_name, last_name, age)
	VALUES (0, "Frank", "Smith", 100);

SELECT * FROM person;

REPLACE INTO person (id, first_name, last_name, age)
	VALUES (0, "Jonathan", "Morton", 26);

SELECT * FROM person;

REPLACE INTO pet (id, name, breed, age, dead)
	VALUES (0, "Polly", "Parrot", 2, 1)