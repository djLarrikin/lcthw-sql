SELECT * FROM pet;
UPDATE pet SET name = "Jonathan's Dead Pet" WHERE id IN (
	SELECT pet.id
	FROM pet, person_pet, person
	WHERE
	person.id = person_pet.person_id AND
	pet.id = person_pet.pet_id AND
	person.first_name = "Jonathan" AND
	pet.dead = 0
);
SELECT * FROM pet;