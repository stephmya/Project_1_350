INSERT INTO charity (charity_id, name, country, website, year_founded, mission) VALUES
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
(12, 'Associated Community Services', 'USA', 'https://www.associatedcommunityservices.org', 1990, 'To provide assistance and resources for community improvement.');

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
(24, 12, 'Charity Navigator', 2, '2023-01-11');

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
(20, 20, 100, 'PayPal', 'JPY', '2022-11-29', TRUE);

INSERT INTO fraud_case (case_id, charity_id, investigation_source, cont1, cont2, cont3, case_date) VALUES
(1, 1, 'npr', NULL, NULL, NULL, '2016-06-16'),
(2, 2, 'The New Humanitarian', 'Misuse of Funds', NULL, NULL, '2022-12-07'),
(3, 3, 'swissinfo', 'Misuse of Funds', 'Phantom Beneficiaries', NULL, '2024-08-20'),
(4, 4, 'BBC', 'Charity Sabotage', NULL, NULL, '2024-10-08'),
(5, 5, 'Doctors Without Borders', 'Phantom Beneficiaries', NULL, NULL, '2017-04-01'),
(6, 6, 'Direct Relief', NULL, NULL, NULL, '2023-01-20');
