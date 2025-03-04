-- Create the profile management schema

-- Table for storing user profiles
CREATE TABLE profile (
    profile_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address TEXT
);

-- Add any additional tables related to profile management (e.g., user settings, logs)
-- Example of another table: user_settings
CREATE TABLE user_settings (
    settings_id SERIAL PRIMARY KEY,
    profile_id INT REFERENCES profile(profile_id) ON DELETE CASCADE,
    setting_name VARCHAR(100),
    setting_value VARCHAR(255)
);

-- Example of another table: profile_picture
CREATE TABLE profile_picture (
    picture_id SERIAL PRIMARY KEY,
    profile_id INT REFERENCES profile(profile_id) ON DELETE CASCADE,
    picture_url TEXT
);

-- Feel free to modify this schema by adding more tables or columns as per your requirements.
