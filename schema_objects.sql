-- Get Average Charity Rating A function to calculate the average rating for a charity.
CREATE FUNCTION get_avg_charity_rating(p_charity_id INT)
RETURNS DECIMAL(5,2)
AS
$$
DECLARE avg_rating DECIMAL(5,2);
BEGIN
    SELECT AVG(rating_score) INTO avg_rating
    FROM rating
    WHERE charity_id = p_charity_id;  
    RETURN avg_rating;
END;
$$ LANGUAGE plpgsql;

        -- Test the average charity rating for charity with ID 1 (change 1 to any valid charity ID)
        SELECT get_avg_charity_rating(1);


-- Get Total Donations by Donor A function to get the total amount donated by a donor.
CREATE FUNCTION get_total_donations(p_donor_id INT)
RETURNS DECIMAL(10,2)
AS
$$
DECLARE total_amount DECIMAL(10,2);
BEGIN
    SELECT SUM(amount) INTO total_amount
    FROM donation
    WHERE donor_id = p_donor_id; 
    RETURN total_amount;
END;
$$ LANGUAGE plpgsql;

        -- Test the total donations made by donor with ID 1 (change 1 to any valid donor ID)
        SELECT get_total_donations(1);

-- Add a New Charity A procedure to insert a new charity into the database.
CREATE PROCEDURE add_charity(
    IN charity_name VARCHAR(100),
    IN charity_country VARCHAR(50),
    IN charity_website VARCHAR(150),
    IN charity_year_founded INT,
    IN charity_mission TEXT
)
LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO charity (charity_name, country, website, year_founded, mission)
    VALUES (charity_name, charity_country, charity_website, charity_year_founded, charity_mission);
END;
$$;
        -- Reset the sequence for charity_id to the maximum current value + 1
        SELECT setval('charity_charity_id_seq', (SELECT MAX(charity_id) FROM charity) + 1);

        -- Test the add_charity procedure with sample values
        CALL add_charity(
            'Hope for All',                -- charity_name
            'USA',                         -- charity_country
            'http://www.hopeforall.org',    -- charity_website
            2010,                          -- charity_year_founded
            'Mission to support global health and education.'  -- charity_mission
        );



CREATE FUNCTION update_charity_rating_after_insert()
RETURNS TRIGGER AS
$$
BEGIN
    RAISE NOTICE 'New rating inserted for charity_id: %, rating_score: %', NEW.charity_id, NEW.rating_score;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to call the above function after an insert on the rating table
CREATE TRIGGER after_rating_insert
AFTER INSERT ON rating
FOR EACH ROW
EXECUTE FUNCTION update_charity_rating_after_insert();

        -- Insert a new rating for a charity
        INSERT INTO rating (charity_id, rating_source, rating_score, rating_date)
        VALUES (1, 'TestSource', 8, '2024-11-07');


        SELECT setval('rating_rating_id_seq', (SELECT MAX(rating_id) FROM rating));
