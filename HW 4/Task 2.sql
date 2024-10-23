INSERT INTO petPet (petname, owner, species, gender, birth, death)
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL)
;

INSERT INTO petEvent (petname, eventname, eventtype, remark)
VALUES ('Fluffy', CURDATE(), 'litter', '5 kittens, 2 male, 3 female')
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics')
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

UPDATE petEvent
SET petname = 'Claws'
WHERE eventdate = '1997-08-03' AND eventtype = 'vet' AND remark = 'broken rib';

DELETE FROM petEvent
WHERE petname = 'Buffy';