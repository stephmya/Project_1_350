INSERT INTO charity (charity_id, charity_name, country, website, year_founded, mission) VALUES
(1, 'International Committee of the Red Cross', 'Switzerland', 'https://www.icrc.org', 1863, 'To protect victims of armed conflict and violence.'),
(2, 'United Nations High Commissioner for Refugees', 'Switzerland', 'https://www.unhcr.org', 1950, 'To safeguard the rights and well-being of refugees.'),
(3, 'World Food Programme', 'Italy', 'https://www.wfp.org', 1961, 'To end hunger and promote food security.'),
(4, 'Save the Children', 'USA', 'https://www.savethechildren.org', 1919, 'To ensure every child has the opportunity to survive and learn.'),
(5, 'Doctors Without Borders', 'France', 'https://www.msf.org', 1971, 'To provide lifesaving medical care to those in need.'),
(6, 'Direct Relief', 'USA', 'https://www.directrelief.org', 1948, 'To improve health and lives through medical assistance.'),
(7, 'Hale House Foundation', 'USA', 'https://www.halehouse.org', 1972, 'To provide support for children and families in need.'),
(8, 'Help Heal Veterans', 'USA', 'https://www.helphealvets.org', 1971, 'To provide therapeutic arts and crafts to hospitalized veterans.'),
(9, 'Cancer Fund of America', 'USA', 'https://www.cancerfund.org', 1987, 'To support cancer patients and raise awareness for cancer treatment.'),
(10, 'United Way of America', 'USA', 'https://www.unitedway.org', 1887, 'To improve lives by mobilizing the caring power of communities.'),
(11, 'Latino Coalition Foundation', 'USA', 'https://www.thelatinocoalition.org', 1999, 'To advocate for and empower Latino communities.'),
(12, 'Associated Community Services', 'USA', 'https://www.associatedcommunityservices.org', 1990, 'To provide assistance and resources for community improvement.'),
(13, 'Charity Water', 'USA', 'https://www.charitywater.org', 2006, 'To bring clean and safe drinking water to people in developing countries.'),
(14, 'Oxfam', 'UK', 'https://www.oxfam.org', 1942, 'To end the injustices that cause poverty.'),
(15, 'Habitat for Humanity', 'USA', 'https://www.habitat.org', 1976, 'To build strength, stability, and self-reliance through shelter.'),
(16, 'World Wildlife Fund', 'Switzerland', 'https://www.worldwildlife.org', 1961, 'To conserve nature and reduce the most pressing threats to biodiversity.'),
(17, 'Greenpeace', 'Netherlands', 'https://www.greenpeace.org', 1971, 'To ensure the ability of the Earth to nurture life in all its diversity.'),
(18, 'The Nature Conservancy', 'USA', 'https://www.nature.org', 1951, 'To conserve the lands and waters on which all life depends.');

INSERT INTO fraud (fraud_id, fraud_type) VALUES
(1, 'Embezzlement'),
(2, 'Misuse of Funds'),
(3, 'Kickbacks'),
(4, 'Fake Charities'),
(5, 'Phantom Donations'),
(6, 'Donation Skimming'),
(7, 'Falsified Financial Statements'),
(8, 'False Advertising'),
(9, 'Grant Misuse'),
(10, 'Grant Fraud'),
(11, 'Double-Dipping'),
(12, 'Money Laundering'),
(13, 'Unreported Revenue'),
(14, 'Tax Evasion'),
(15, 'Phantom Beneficiaries'),
(16, 'Identity Theft'),
(17, 'Conflict of Interest'),
(18, 'Inflated Expense Claims'),
(19, 'Non-Disclosure of Financial Information'),
(20, 'Donor Deception'),
(21, 'Asset Misappropriation'),
(22, 'Expense Inflation'),
(23, 'Unauthorized Fundraising'),
(24, 'Ghost Employees'),
(25, 'Insider Trading'),
(26, 'False Grant Applications'),
(27, 'Duplicate Donations'),
(28, 'Unauthorized Payment Processing'),
(29, 'Charity Sabotage'),
(30, 'False Reporting');

INSERT INTO rating (rating_id, charity_id, rating_source, rating_score, rating_date) VALUES
(1, 1, 'Charity Navigator', 4, '2023-01-15'),
(2, 1, 'GuideStar', 4, '2023-02-10'),
(3, 1, 'BBB Wise Giving Alliance', 4, '2023-03-05'),
(4, 2, 'Charity Navigator', 4, '2023-01-20'),
(5, 2, 'GuideStar', 4, '2023-02-15'),
(6, 2, 'BBB Wise Giving Alliance', 3, '2023-03-10'),
(7, 3, 'Charity Navigator', 4, '2023-01-25'),
(8, 3, 'GuideStar', 4, '2023-02-20'),
(9, 3, 'BBB Wise Giving Alliance', 4, '2023-03-15'),
(10, 4, 'Charity Navigator', 3, '2023-01-30'),
(11, 4, 'GuideStar', 3, '2023-02-25'),
(12, 4, 'BBB Wise Giving Alliance', 3, '2023-03-20'),
(13, 5, 'Charity Navigator', 4, '2023-01-28'),
(14, 5, 'GuideStar', 4, '2023-02-22'),
(15, 5, 'BBB Wise Giving Alliance', 4, '2023-03-25'),
(16, 6, 'Charity Navigator', 4, '2023-01-18'),
(17, 6, 'GuideStar', 4, '2023-02-18'),
(18, 6, 'BBB Wise Giving Alliance', 4, '2023-03-30'),
(19, 7, 'Charity Navigator', 3, '2023-01-12'),
(20, 8, 'Charity Navigator', 2, '2023-01-10'),
(21, 9, 'Charity Navigator', 1, '2023-01-05'),
(22, 10, 'Charity Navigator', 3, '2023-01-14'),
(23, 11, 'Charity Navigator', 3, '2023-01-17'),
(24, 12, 'Charity Navigator', 2, '2023-01-11'),
(25, 13, 'Charity Navigator', 4, '2023-05-12'),
(26, 14, 'GuideStar', 3, '2023-06-23'),
(27, 15, 'BBB Wise Giving Alliance', 4, '2023-07-14'),
(28, 16, 'Charity Navigator', 3, '2023-08-05'),
(29, 17, 'GuideStar', 4, '2023-09-16'),
(30, 18, 'BBB Wise Giving Alliance', 4, '2023-10-27');

INSERT INTO donor (donor_id, name, email, phone, address) VALUES
(1, 'John Doe', 'johndoe@example.com', '555-1234', '123 Elm Street, Springfield, IL'),
(2, 'Jane Smith', 'janesmith@example.com', '555-5678', '456 Oak Avenue, Lincoln, NE'),
(3, 'Michael Johnson', 'michael.j@example.com', '555-8765', '789 Pine Road, Madison, WI'),
(4, 'Emily Davis', 'emily.davis@example.com', '555-4321', '321 Maple Drive, Salem, OR'),
(5, 'Robert Brown', NULL, '555-2345', '654 Cedar Lane, Boulder, CO'),
(6, 'Susan Wilson', 'susan.w@example.com', NULL, '987 Birch Street, Austin, TX'),
(7, 'James Taylor', 'james.taylor@example.com', '555-6789', '321 Spruce Street, Raleigh, NC'),
(8, 'Patricia Anderson', NULL, NULL, '789 Cypress Avenue, Orlando, FL'),
(9, 'Thomas Martinez', 'thomas.m@example.com', '555-3456', '123 Ash Street, Portland, ME'),
(10, 'Linda Thompson', 'linda.t@example.com', '555-4567', '456 Willow Boulevard, Phoenix, AZ'),
(11, 'Barbara Clark', 'barbara.clark@example.com', '555-1111', '159 Sycamore Street, Nashville, TN'),
(12, 'Christopher Lewis', 'chris.lewis@example.com', '555-2222', '753 Redwood Road, Seattle, WA'),
(13, 'Nancy Walker', 'nancy.walker@example.com', '555-3333', '852 Poplar Lane, Austin, TX'),
(14, 'Matthew Hall', NULL, '555-4444', '951 Fir Avenue, Denver, CO'),
(15, 'Jessica Allen', 'jessica.allen@example.com', NULL, '159 Magnolia Street, Atlanta, GA'),
(16, 'Mark Young', 'mark.young@example.com', '555-5555', '753 Elm Street, Miami, FL'),
(17, 'Sandra Hernandez', NULL, '555-6666', '357 Oak Lane, Santa Fe, NM'),
(18, 'Steven King', 'steven.king@example.com', NULL, '258 Chestnut Avenue, Tucson, AZ'),
(19, 'Laura Scott', 'laura.scott@example.com', '555-7777', '456 Birch Lane, Anchorage, AK'),
(20, 'Daniel Green', 'daniel.green@example.com', '555-8888', '369 Walnut Street, Salt Lake City, UT'),
(21, 'Sarah White', NULL, '555-9999', '741 Cedar Avenue, Kansas City, MO'),
(22, 'Paul Harris', 'paul.harris@example.com', '555-0000', '963 Alder Road, Chicago, IL'),
(23, 'Karen Martin', 'karen.martin@example.com', NULL, '357 Aspen Drive, Las Vegas, NV'),
(24, 'Joshua Lee', 'joshua.lee@example.com', '555-1010', '852 Hickory Street, Boston, MA'),
(25, 'Betty Thompson', NULL, '555-2020', '951 Linden Lane, Charlotte, NC'),
(26, 'David Rodriguez', 'david.rodriguez@example.com', '555-3030', '159 Maple Avenue, Baltimore, MD'),
(27, 'Cynthia Perez', 'cynthia.perez@example.com', '555-4040', '753 Beech Drive, San Diego, CA'),
(28, 'George Roberts', 'george.roberts@example.com', NULL, '456 Pine Street, Philadelphia, PA'),
(29, 'Helen James', 'helen.james@example.com', '555-5050', '357 Cedar Street, Cincinnati, OH'),
(30, 'Frank Watson', NULL, '555-6060', '159 Spruce Avenue, Columbus, OH');

INSERT INTO donation (donation_id, donor_id, amount, payment_method, currency, donation_date, is_recurring) VALUES
(1, 1, 100, 'Credit Card', 'USD', '2023-06-15', TRUE),
(2, 2, 50, 'PayPal', 'CAD', '2022-12-05', FALSE),
(3, 3, 75, 'Bank Transfer', 'GBP', '2021-11-20', TRUE),
(4, 4, 200, 'Credit Card', 'AUD', '2023-07-01', FALSE),
(5, 5, 120, 'PayPal', 'USD', '2022-03-08', TRUE),
(6, 6, 90, 'Credit Card', 'MXN', '2022-09-15', TRUE),
(7, 7, 130, 'Bank Transfer', 'EUR', '2021-10-10', FALSE),
(8, 8, 70, 'Credit Card', 'KRW', '2023-01-25', FALSE),
(9, 9, 60, 'PayPal', 'USD', '2021-12-12', TRUE),
(10, 10, 110, 'Credit Card', 'COP', '2023-04-22', TRUE),
(11, 11, 80, 'Bank Transfer', 'CAD', '2021-05-18', FALSE),
(12, 12, 150, 'Credit Card', 'GBP', '2023-02-10', TRUE),
(13, 13, 65, 'PayPal', 'AUD', '2021-09-07', TRUE),
(14, 14, 95, 'Credit Card', 'USD', '2023-03-30', FALSE),
(15, 15, 125, 'Bank Transfer', 'INR', '2022-08-05', TRUE),
(16, 16, 85, 'Credit Card', 'EUR', '2023-07-20', FALSE),
(17, 17, 55, 'PayPal', 'ZAR', '2021-10-14', TRUE),
(18, 18, 140, 'Credit Card', 'USD', '2023-05-02', TRUE),
(19, 19, 60, 'Bank Transfer', 'EUR', '2023-06-18', FALSE),
(20, 20, 100, 'PayPal', 'JPY', '2022-11-29', TRUE),
(21, 11, 150, 'Credit Card', 'USD', '2023-05-25', FALSE),
(22, 12, 200, 'PayPal', 'GBP', '2023-06-30', TRUE),
(23, 13, 75, 'Bank Transfer', 'EUR', '2023-07-22', FALSE),
(24, 14, 100, 'Credit Card', 'USD', '2023-08-19', TRUE),
(25, 15, 180, 'Credit Card', 'CAD', '2023-09-10', TRUE),
(26, 16, 90, 'PayPal', 'AUD', '2023-10-05', FALSE);

INSERT INTO fraud_case (case_id, charity_id, investigation_source, cont1, cont2, cont3, case_date) VALUES
(1, 1, 'npr', NULL, NULL, NULL, '2016-06-16'),
(2, 2, 'The New Humanitarian', 'Misuse of Funds', NULL, NULL, '2022-12-07'),
(3, 3, 'swissinfo', 'Misuse of Funds', 'Phantom Beneficiaries', NULL, '2024-08-20'),
(4, 4, 'BBC', 'Charity Sabotage', NULL, NULL, '2024-10-08'),
(5, 5, 'Doctors Without Borders', 'Phantom Beneficiaries', NULL, NULL, '2017-04-01'),
(6, 6, 'Direct Relief', NULL, NULL, NULL, '2023-01-20'),
(7, 13, 'Reuters', 'False Advertising', NULL, NULL, '2023-04-25'),
(8, 14, 'CNN', 'Grant Misuse', 'Unauthorized Fundraising', NULL, '2022-11-15'),
(9, 15, 'Al Jazeera', 'Donation Skimming', 'Fake Charities', NULL, '2024-02-18'),
(10, 16, 'BBC News', 'Non-Disclosure of Financial Information', NULL, NULL, '2021-09-30'),
(11, 17, 'The Guardian', 'Expense Inflation', 'Unauthorized Personal Expenses', NULL, '2023-03-07'),
(12, 18, 'New York Times', 'Money Laundering', 'Tax Evasion', NULL, '2022-05-10');

