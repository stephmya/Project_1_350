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
