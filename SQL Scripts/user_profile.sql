-- Create User Profiles table
CREATE TABLE UserProfiles (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    DateOfBirth DATE NOT NULL,
    Latitude DECIMAL(10, 8),
    Longitude DECIMAL(11, 8),
    Bio TEXT,
    ProfilePictureURL VARCHAR(255)
);