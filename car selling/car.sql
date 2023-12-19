-- Create the database
CREATE DATABASE car_selling_website;
USE car_selling_website;

-- Create the cars table
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(255) NOT NULL,
    description TEXT,
    image VARCHAR(255)
);

-- Insert sample data into the cars table
INSERT INTO cars (model, description, image) VALUES
('Car Model 1', 'Description of Car Model 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'images/car1.jpeg'),
('Car Model 2', 'Description of Car Model 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'images/images.jpeg'),
('Car Model 3', 'Description of Car Model 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'images/car3.jpg'),
('Car Model 4', 'Description of Car Model 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'images/car4.jpeg'),
('Car Model 5', 'Description of Car Model 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'images/car5.png'),
('Car Model 6', 'Description of Car Model 6. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'images/car6.jpg');
