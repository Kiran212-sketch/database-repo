-- User Management DB Scripting
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Dummy Data
INSERT INTO users (name, email, password)
VALUES
('Kiran', 'kiran212@gmail.com', 'password123'),
('Admin', 'admin@gmail.com', 'admin123');
