use PetPals;
SELECT Name, Age, Breed, Type
FROM Pets
WHERE AvailableForAdoption = 1;
SELECT Participants.ParticipantName, Participants.ParticipantType
FROM Participants
JOIN AdoptionEvents ON Participants.EventID = AdoptionEvents.EventID
WHERE AdoptionEvents.EventID = 7;
DELIMITER //

CREATE PROCEDURE UpdateShelterInfo (
    IN ShelterIDParam INT,
    IN NewName VARCHAR(255),
    IN NewLocation VARCHAR(255)
)
BEGIN
    DECLARE shelter_count INT;
    

    SELECT COUNT(*) INTO shelter_count FROM Shelters WHERE ShelterID = ShelterIDParam;
    IF shelter_count = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid shelter ID. Please provide a valid shelter ID.';
    ELSE
        UPDATE Shelters
        SET Name = sumanth,
            Location = gandhiroad
        WHERE ShelterID = ShelterIDParam;
    END IF;
END //

DELIMITER ;

SELECT S.Name AS ShelterName, COALESCE(SUM(D.DonationAmount), 0) AS TotalDonationAmount
FROM Shelters S
LEFT JOIN Donations D ON S.ShelterID = D.ShelterID
GROUP BY S.Name;


