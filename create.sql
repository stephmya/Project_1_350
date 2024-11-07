CREATE TABLE charity (
    charity_id SERIAL PRIMARY KEY,  
    charity_name VARCHAR(100) NOT NULL,
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
    rating_id SERIAL PRIMARY KEY, 
    charity_id INT,
    rating_source VARCHAR(50) NOT NULL,
    rating_score INT NOT NULL,
    rating_date DATE NOT NULL,
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
);

CREATE TABLE donor (
    donor_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE donation (
    donation_id INT PRIMARY KEY,
    donor_id INT,
    charity_id INT, 
    amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(20) NOT NULL,
    currency CHAR(3) NOT NULL,
    donation_date DATE NOT NULL,
    is_recurring BOOLEAN NOT NULL,
    FOREIGN KEY (donor_id) REFERENCES donor(donor_id),
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
);

CREATE TABLE fraud_case (
    case_id SERIAL PRIMARY KEY, 
    charity_id INT,
    investigation_source VARCHAR(50),
    cont1 VARCHAR(50),
    cont2 VARCHAR(50),
    cont3 VARCHAR(50),
    case_date DATE,
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
);

CREATE TABLE fraud_case_fraud_type (
    case_id INT,
    fraud_id INT,
    PRIMARY KEY (case_id, fraud_id),
    FOREIGN KEY (case_id) REFERENCES fraud_case(case_id),
    FOREIGN KEY (fraud_id) REFERENCES fraud(fraud_id)
);