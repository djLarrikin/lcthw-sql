UPDATE person SET first_name = "Hilarious Guy"
	WHERE first_name = "Jonathan";

UPDATE pet SET name = "Fancy Pants"
	WHERE id=0;

SELECT * FROM person;
SELECT * FROM pet;

UPDATE person SET first_name = "Jonathan"
	WHERE id = 0;

UPDATE pet SET name = "DECEASED"
	WHERE dead = 0;

SELECT * FROM person;
SELECT * FROM pet;