# Project_1_350

Charitable Organizations Database Design

Task Overview

The goal is to design a PostgreSQL database that tracks charitable organizations globally, with a focus on potential fraudulent activities. This design will allow us to store information about organizations, donations, staff, and fundraising events. The database should also support the identification of suspicious activities within these organizations.

Key Requirements

Database Design: The database should track key information about charitable organizations, such as name, registration number, country, donations, staff members, and fundraising events.
Fraud Detection: A key focus is identifying fraudulent behavior or suspicious activities within the charity organizations. This can be achieved by flagging certain patterns in donation behavior, financial transactions, or employee records.
Data Sources: Use a combination of real-world charity data (where available) and simulated/fake data for testing purposes. Real data can be gathered from publicly available charity databases, such as the IRS (for US-based organizations) or charity watchdog websites.
Functions and Procedures: The database should include stored procedures or functions to automate common tasks such as flagging potential fraud or generating reports based on certain criteria.
Global and US Context: The design must be flexible to support both US-based charities and international organizations, accounting for country-specific regulations and reporting.

### Database Functions and Procedures:

1. Get Average Charity Rating:

```bash
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
```

```bash
-- Test the average charity rating for charity with ID 1 (change 1 to any valid charity ID)
SELECT get_avg_charity_rating(1);
```

2. Get Total Donations by Donor

```bash
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
```

```bash
-- Test the total donations made by donor with ID 1 (change 1 to any valid donor ID)
SELECT get_total_donations(1);
```

3. Add a New Charity

```bash
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
```

```bash
-- Reset the sequence for charity_id to the maximum current value + 1
SELECT setval('charity_charity_id_seq', (SELECT MAX(charity_id) FROM charity) + 1);
```

```bash
-- Test the add_charity procedure with sample values
CALL add_charity(
    'Hope for All',                -- charity_name
    'USA',                         -- charity_country
    'http://www.hopeforall.org',    -- charity_website
    2010,                          -- charity_year_founded
    'Mission to support global health and education.'  -- charity_mission
);

```

4. Update Charity Rating After Insert

```bash
CREATE FUNCTION update_charity_rating_after_insert()
RETURNS TRIGGER AS
$$
BEGIN
    RAISE NOTICE 'New rating inserted for charity_id: %, rating_score: %', NEW.charity_id, NEW.rating_score;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
```

```bash
-- Trigger to call the above function after an insert on the rating table
CREATE TRIGGER after_rating_insert
AFTER INSERT ON rating
FOR EACH ROW
EXECUTE FUNCTION update_charity_rating_after_insert();
```

```bash
-- Insert a new rating for a charity
INSERT INTO rating (charity_id, rating_source, rating_score, rating_date)
VALUES (1, 'TestSource', 8, '2024-11-07');
```

```bash
-- Reset the sequence for rating_id to the maximum current value + 1
SELECT setval('rating_rating_id_seq', (SELECT MAX(rating_id) FROM rating));
```
