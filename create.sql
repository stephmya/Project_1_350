CREATE TABLE charity (
    charity_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50) NOT NULL,
    website VARCHAR(150),
    year_founded INT,
    mission TEXT
);

CREATE TABLE fraud (
    fraud_id INT PRIMARY KEY,
    fraud_type VARCHAR(50) NOT NULL
);

CREATE TABLE rating (
    rating_id INT PRIMARY KEY,
    charity_id INT,
    rating_source VARCHAR(50) NOT NULL,
    rating_score INT NOT NULL,
    rating_date DATE NOT NULL,
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
);

CREATE TABLE donation (
    donation_id INT PRIMARY KEY,
    donor_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(20) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    donation_date DATE NOT NULL,
    is_recurring BOOLEAN NOT NULL
    -- FOREIGN KEY (donor_id) REFERENCES donor(donor_id) -- Not really sure if this is needed.
);

CREATE TABLE fraud_case (
    case_id INT PRIMARY KEY,
    charity_id INT,
    fraud_id VARCHAR(50),  -- Handles multiple fraud IDs (e.g., "2,30")
    investigation_source VARCHAR(50),
    cont1 VARCHAR(50),     -- Placeholder for additional context
    cont2 VARCHAR(50),     -- Placeholder for additional context
    cont3 VARCHAR(50),     -- Placeholder for additional context
    case_date DATE,
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
);
