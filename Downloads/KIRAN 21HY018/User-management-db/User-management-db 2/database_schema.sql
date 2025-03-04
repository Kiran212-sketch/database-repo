-- Database: user_management

-- Table: users
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: roles
CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

-- Table: user_roles
CREATE TABLE user_roles (
    user_id INT REFERENCES users(user_id),
    role_id INT REFERENCES roles(role_id),
    PRIMARY KEY (user_id, role_id)
);

-- Dummy Data
INSERT INTO users (name, email, password)
VALUES
('Kiran', 'kiran212@gmail.com', 'password123'),
('Admin', 'admin@gmail.com', 'admin123');

INSERT INTO roles (role_name)
VALUES
('Admin'),
('User');
