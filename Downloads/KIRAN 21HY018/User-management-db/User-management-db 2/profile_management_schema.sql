-- Database: profile_management

-- Table: profiles
CREATE TABLE profiles (
    profile_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    phone_number VARCHAR(15),
    address TEXT,
    date_of_birth DATE,
    profile_picture BYTEA,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: profile_settings
CREATE TABLE profile_settings (
    setting_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    setting_key VARCHAR(100),
    setting_value VARCHAR(255),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: two_factor_auth
CREATE TABLE two_factor_auth (
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    is_enabled BOOLEAN DEFAULT FALSE,
    secret_key VARCHAR(255),
    PRIMARY KEY (user_id)
);

-- Dummy Data
INSERT INTO profiles (user_id, phone_number, address, date_of_birth)
VALUES
(1, '1234567890', '123 Main Street, City, Country', '1990-01-01'),
(2, '0987654321', '456 Secondary Street, City, Country', '1995-05-15');

INSERT INTO profile_settings (user_id, setting_key, setting_value)
VALUES
(1, 'theme', 'dark'),
(2, 'theme', 'light');

INSERT INTO two_factor_auth (user_id, is_enabled, secret_key)
VALUES
(1, TRUE, 'SECRET_KEY_1'),
(2, FALSE, 'SECRET_KEY_2');
