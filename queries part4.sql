use PetPals;

SELECT S.Name AS ShelterName, COUNT(P.PetID) AS AvailablePetsCount
FROM Shelters S
LEFT JOIN Pets P ON S.ShelterID = P.ShelterID
WHERE P.AvailableForAdoption = 1 OR P.AvailableForAdoption IS NULL
GROUP BY S.Name;

SELECT p1.Name AS Pet1Name, p2.Name AS Pet2Name, p1.Breed AS Breed
FROM Pets p1
JOIN Pets p2 ON p1.ShelterID = p2.ShelterID
            AND p1.PetID < p2.PetID
            AND p1.Breed = p2.Breed;
            
SELECT Shelters.Name AS ShelterName, AdoptionEvents.EventName AS EventName
FROM Shelters
CROSS JOIN AdoptionEvents;



SELECT S.Name AS ShelterName, COUNT(*) AS AdoptedPetsCount
FROM Pets P
JOIN Shelters S ON P.ShelterID = S.ShelterID
WHERE P.AvailableForAdoption = 0
GROUP BY S.Name
ORDER BY AdoptedPetsCount DESC
LIMIT 1;