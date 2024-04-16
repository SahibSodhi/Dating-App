-- Create User Preferences table
CREATE TABLE UserPreferences (
    UserID INT PRIMARY KEY,
    PreferredMinAge INT,
    PreferredMaxAge INT,
    PreferredGenders VARCHAR(255), -- Can be a comma-separated list of genders
    DistanceRadius INT,
    NotificationSettings BOOLEAN,
    FOREIGN KEY (UserID) REFERENCES UserProfiles(UserID)
);