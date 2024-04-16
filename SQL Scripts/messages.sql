-- Create Messages table
CREATE TABLE Messages (
    MessageID INT PRIMARY KEY AUTO_INCREMENT,
    SenderID INT,
    ReceiverID INT,
    MessageContent TEXT,
    Timestamp DATETIME,
    ReadStatus BOOLEAN,
    Attachments VARCHAR(255),
    FOREIGN KEY (SenderID) REFERENCES UserProfiles(UserID),
    FOREIGN KEY (ReceiverID) REFERENCES UserProfiles(UserID)
);