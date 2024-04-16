-- Create Matches table
CREATE TABLE Matches (
    MatchID INT PRIMARY KEY AUTO_INCREMENT,
    UserID1 INT,
    UserID2 INT,
    MatchStatus ENUM('Pending', 'Accepted', 'Declined'),
    MatchDateTime DATETIME,
    FOREIGN KEY (UserID1) REFERENCES UserProfiles(UserID),
    FOREIGN KEY (UserID2) REFERENCES UserProfiles(UserID)
);