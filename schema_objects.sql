-- Procedures

-- Add Donation Procedure (This procedure would allow users to add a new donation to the donation table, including validations for required fields.)
CREATE PROCEDURE AddDonation(
    IN donorId INT,
    IN amount DECIMAL(10, 2),
    IN paymentMethod VARCHAR(50),
    IN currency VARCHAR(3),
    IN donationDate DATE,
    IN isRecurring BOOLEAN
)
BEGIN
    INSERT INTO donation (donor_id, amount, payment_method, currency, donation_date, is_recurring)
    VALUES (donorId, amount, paymentMethod, currency, donationDate, isRecurring);
END;

-- Update Charity Rating Procedure (This procedure could update the rating for a specific charity based on input parameters.)
CREATE PROCEDURE UpdateCharityRating(
    IN charityId INT,
    IN ratingSource VARCHAR(100),
    IN ratingScore INT
)
BEGIN
    INSERT INTO rating (charity_id, rating_source, rating_score, rating_date)
    VALUES (charityId, ratingSource, ratingScore, CURRENT_DATE);
END;



-- Functions

-- Calculate Total Donations for a Donor (This function could return the total donations made by a specific donor.)
CREATE FUNCTION GetTotalDonations(donorId INT)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(amount) INTO total
    FROM donation
    WHERE donor_id = donorId;
    RETURN IFNULL(total, 0);
END;

-- Get Charity Rating Function (This function could return the latest rating score for a specific charity.)
CREATE FUNCTION GetCharityRating(charityId INT)
RETURNS INT
BEGIN
    DECLARE latestRating INT;
    SELECT rating_score INTO latestRating
    FROM rating
    WHERE charity_id = charityId
    ORDER BY rating_date DESC
    LIMIT 1;
    RETURN IFNULL(latestRating, 0);
END;



-- Triggers

-- Trigger for Fraud Case Insertion (This trigger could log an entry into a separate table whenever a new fraud case is added.)
CREATE TRIGGER LogFraudCase
AFTER INSERT ON case
FOR EACH ROW
BEGIN
    INSERT INTO fraud_case_log (case_id, created_at)
    VALUES (NEW.case_id, CURRENT_TIMESTAMP);
END;

-- Trigger for Automatic Rating Update (This trigger could automatically update a charity's rating based on the average of its ratings whenever a new rating is added.)
CREATE TRIGGER UpdateCharityAverageRating
AFTER INSERT ON rating
FOR EACH ROW
BEGIN
    DECLARE averageRating DECIMAL(3, 2);
    SELECT AVG(rating_score) INTO averageRating
    FROM rating
    WHERE charity_id = NEW.charity_id;
    
    UPDATE charity
    SET average_rating = averageRating
    WHERE charity_id = NEW.charity_id;
END;



-- Views

-- View for Donation Summary (A view that aggregates donations per charity, showing total donations received by each charity.)
CREATE VIEW DonationSummary AS
SELECT c.charity_id, c.name AS charity_name, SUM(d.amount) AS total_donations
FROM charity c
JOIN donation d ON c.charity_id = d.donor_id
GROUP BY c.charity_id;
