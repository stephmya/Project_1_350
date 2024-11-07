# Project_1_350

### Charitable Organizations Database Design

## Project Overview

The objective of this project is to design a comprehensive PostgreSQL database to track charitable organizations globally, with a emphasis on identifying potential fraudulent activities. The database will store detailed information about organizations and their donations, and will include schema objects such as functions and procedures. This database will also include some data on the fraudulent activities that may be associated with these organizations.

## Key Requirements

- Database Design: The database should track key information about charitable organizations, such as name, registration number, country, donations, staff members, and fundraising events.
- Fraud Detection: A key focus is identifying fraudulent behavior or suspicious activities within the charity organizations. This can be found via suspicious records.
- Data Sources: Use a combination of real-world charity data and simulated/fake data for testing purposes
- Functions and Procedures: The database should include stored procedures or functions to automate common tasks such as flagging potential fraud or generating reports based on certain criteria.

### Project Timeline
- **October 7, 2024**: Repository set up for Project 1 CS350.  

- **October 10, 2024**: Held virtual meeting to initialize Kanpilot Kanban tool and talk game plan.

- **October 14, 2024**: Tables created, and charities researched.  

- **October 16, 2024**: Defined schema objects (functions, procedures) for managing donations and fraud investigations.  

- **October 21, 2024**: Developed stored procedures for charity ratings insertion and update; tested functionality.  

- **October 23, 2024**: Created and tested functions for total donations calculation and latest charity rating retrieval.  

- **October 28, 2024**: Implemented and tested triggers for logging fraud cases and updating charity ratings.  

- **November 4, 2024**: Insertion scripts completed for initial data in all tables.  

- **November 6, 2024**: Schema optimization review and documentation finalized.  

---

## Database Functions and Procedures:

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
-- Reset the sequence for rating_id to the maximum current value + 1
SELECT setval('rating_rating_id_seq', (SELECT MAX(rating_id) FROM rating));
```

```bash
-- Insert a new rating for a charity
INSERT INTO rating (charity_id, rating_source, rating_score, rating_date)
VALUES (1, 'TestSource', 8, '2024-11-07');
```
