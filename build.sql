CREATE TABLE charity (
    charity_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL,
    country VARCHAR(30) NOT NULL,
    website VARCHAR(255),
    year_founded INT NOT NULL,
    mission VARCHAR(100) NOT NULL
);

CREATE TABLE fraud (
    fraud_id SERIAL PRIMARY KEY NOT NULL,
    charity_id INT NOT NULL,
    fraud_date DATE NOT NULL,
    fraud_description VARCHAR(255) NOT NULL,
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
)

CREATE TABLE ratings (
    rating_id SERIAL PRIMARY KEY NOT NULL,
    charity_id INT NOT NULL,
    rating_date DATE NOT NULL,
    rating_source  VARCHAR(255) NOT NULL,
    rating_score INT NOT NULL,
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
)

CREATE TABLE donations (
    donation_id SERIAL PRIMARY KEY NOT NULL,
    charity_id INT NOT NULL,
    donor_id INT NOT NULL,
    donation_date DATE NOT NULL,
    donation_amount INT NOT NULL,
    donation_source VARCHAR(255) NOT NULL,
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
)

CREATE TABLE investigations (
    case_id SERIAL PRIMARY KEY NOT NULL,
    charity_id INT NOT NULL,
    investigation_date DATE NOT NULL,
    investigation_description VARCHAR(255) NOT NULL,
    investigation_soure VARCHAR(255) NOT NULL,
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
)

CREATE TABLE expenses (
    expense_id SERIAL PRIMARY KEY NOT NULL,
    charity_id INT NOT NULL,
    expense_date DATE NOT NULL,
    expense_amount INT NOT NULL,
    expense_description VARCHAR(255) NOT NULL,
    FOREIGN KEY (charity_id) REFERENCES charity(charity_id)
)
