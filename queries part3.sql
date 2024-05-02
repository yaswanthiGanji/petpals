use PetPals;
SELECT DISTINCT Breed
FROM Pets
WHERE (Age BETWEEN 1 AND 3) OR (Age > 5);

SELECT P.Name AS PetName, P.Breed, P.Type, S.Name AS ShelterName
FROM Pets P
JOIN Shelters S ON P.ShelterID = S.ShelterID
WHERE P.AvailableForAdoption = 1;


Select COUNT(*) as TotalParticipants from Participants p
inner join AdoptionEvents ae on p.EventID = ae.EventID
inner join Shelters s on p.ParticipantID = s.ShelterID
where s.Location = 'Hotel bhimas';


SELECT DISTINCT Breed
FROM Pets
WHERE Age BETWEEN 1 AND 5;

SELECT *
FROM Pets
WHERE AvailableForAdoption = 0;

USE PetPals;

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255)
);

-- Create Adoption table
CREATE TABLE Adoption (
    AdoptionID INT PRIMARY KEY,
    UserID INT,
    PetID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (PetID) REFERENCES Pets(PetID)
);


INSERT INTO Users (UserID, Name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Michael Johnson'),
(4, 'Emily Johnson'),
(5, 'David Brown'),
(6, 'Emma Wilson'),
(7, 'Christopher Lee'),
(8, 'Taylor');

INSERT INTO Adoption (AdoptionID, UserID, PetID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 5, 9);

select p.Name AS PetName, u.Name AS AdopterName
from Adoption a
inner join Pets p ON a.PetID = p.PetID
inner join Users u ON a.UserID = u.UserID;




