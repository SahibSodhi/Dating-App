-- Create Likes/Dislikes table
CREATE TABLE LikesDislikes (
    LikeID INT PRIMARY KEY AUTO_INCREMENT,
    LikerID INT,
    LikedUserID INT,
    LikeStatus ENUM('Like', 'Dislike'),
    Timestamp DATETIME,
    UNIQUE (LikerID, LikedUserID), -- Ensure uniqueness of like/dislike actions
    FOREIGN KEY (LikerID) REFERENCES UserProfiles(UserID),
    FOREIGN KEY (LikedUserID) REFERENCES UserProfiles(UserID)
);