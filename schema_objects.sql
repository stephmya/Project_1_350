-- Functions

-- Get Average Charity Rating A function to calculate the average rating for a charity.
CREATE FUNCTION get_avg_charity_rating(charity_id INT)
RETURNS DECIMAL(5,2)
AS
BEGIN
    DECLARE avg_rating DECIMAL(5,2);
    SELECT AVG(rating_score) INTO avg_rating
    FROM rating
    WHERE charity_id = charity_id;
    RETURN avg_rating;
END;


-- Get Total Donations by Donor A function to get the total amount donated by a donor.
CREATE FUNCTION get_total_donations(donor_id INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE total_amount DECIMAL(10,2);
    SELECT SUM(amount) INTO total_amount
    FROM donation
    WHERE donor_id = donor_id;
    RETURN total_amount;
END;


-- Check If Donor Has Made Recurring Donations A function to check if a donor has made any recurring donations.
CREATE FUNCTION check_recurring_donations(donor_id INT)
RETURNS BOOLEAN
AS
BEGIN
    DECLARE has_recurring BOOLEAN;
    SELECT EXISTS (SELECT 1 FROM donation WHERE donor_id = donor_id AND is_recurring = TRUE)
    INTO has_recurring;
    RETURN has_recurring;
END;


-- Procedures

-- Add a New Charity A procedure to insert a new charity into the database.
CREATE PROCEDURE add_charity(
    IN charity_name VARCHAR(100),
    IN charity_country VARCHAR(50),
    IN charity_website VARCHAR(150),
    IN charity_year_founded INT,
    IN charity_mission TEXT
)
BEGIN
    INSERT INTO charity (name, country, website, year_founded, mission)
    VALUES (charity_name, charity_country, charity_website, charity_year_founded, charity_mission);
END;

-- Update Charity Rating A procedure to update the rating of a charity.
CREATE PROCEDURE update_charity_rating(
    IN charity_id INT,
    IN new_rating INT,
    IN rating_source VARCHAR(50),
    IN rating_date DATE
)
BEGIN
    INSERT INTO rating (charity_id, rating_source, rating_score, rating_date)
    VALUES (charity_id, rating_source, new_rating, rating_date);
END;

-- Add a New Fraud Case A procedure to add a new fraud case to the fraud_case table.
CREATE PROCEDURE add_fraud_case(
    IN charity_id INT,
    IN investigation_source VARCHAR(50),
    IN case_date DATE,
    IN cont1 VARCHAR(50),  
    IN cont2 VARCHAR(50),
    IN cont3 VARCHAR(50)
)
BEGIN
    INSERT INTO fraud_case (charity_id, investigation_source, case_date, cont1, cont2, cont3)
    VALUES (charity_id, investigation_source, case_date, cont1, cont2, cont3);
END;
