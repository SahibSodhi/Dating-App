-- Create Reporting/Moderation table
CREATE TABLE Reports (
    ReportID INT PRIMARY KEY AUTO_INCREMENT,
    ReporterID INT,
    ReportedUserID INT,
    ReportedMessageID INT,
    ReportReason TEXT,
    ModerationAction ENUM('Pending', 'Warning', 'Suspension'),
    Timestamp DATETIME,
    FOREIGN KEY (ReporterID) REFERENCES UserProfiles(UserID),
    FOREIGN KEY (ReportedUserID) REFERENCES UserProfiles(UserID),
    FOREIGN KEY (ReportedMessageID) REFERENCES Messages(MessageID)
);