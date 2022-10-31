CREATE VIEW "public".breed_count AS
SELECT c.breed, b.val
FROM dog as a
JOIN fn_breed_count() as b ON b.id = a."breedId"
JOIN "breedLookup" as c ON c.id = a."breedId"
GROUP BY c.breed, b.val, a."breedId"
ORDER BY a."breedId";
