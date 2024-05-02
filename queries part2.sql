use PetPals;
SELECT Name, Age, Breed, Type
FROM Pets
WHERE OwnerID IS NULL;
SELECT DATE_FORMAT(DonationDate, '%Y-%m') AS MonthYear, COALESCE(SUM(DonationAmount), 0) AS TotalDonationAmount
FROM Donations
WHERE YEAR(DonationDate) = 2024 AND MONTH(DonationDate) = 4
GROUP BY MONTHYear;

SELECT DISTINCT Breed
FROM Pets
WHERE (Age BETWEEN 1 AND 3) OR (Age > 5);
