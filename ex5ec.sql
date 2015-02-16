SELECT * FROM person;
SELECT name, age FROM pet;
SELECT name, age FROM pet WHERE dead = 0;
SELECT * FROM person WHERE first_name != "Zed";

SELECT * FROM pet WHERE age > 10;
SELECT * FROM person WHERE age < 26;
SELECT * FROM person WHERE age > 26;
SELECT * FROM pet WHERE (name != "Fluffy" AND (age > 0 OR age < 100));