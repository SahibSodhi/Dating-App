# Dating App Database Schema Design
Database schema design for a dating application is presented below. 
The app aims to connect users based on their preferences, interests, location, and other relevant criteria.
The database design is built to efficiently store user profiles, match data, messaging history, and
application settings.

## Entity - Relationship Diagram (ERD)
<p align="center">
  <img src="images/ER_Diagram.png">
  <br/>
</p>

Here's the ERD for the dating app based on the described schema:

### Entities:

1. UserProfiles
2. UserPreferences
3. Matches
4. Messages
5. Likes
6. Reports (Optional)

### Relationships:

**UserProfiles**: Central entity with attributes like user ID, username, email, etc.

**UserPreferences**: One-to-One relationship with Users, stores preferences like age range, gender preference, etc. (Foreign Key: UserID references UserProfiles(UserID))

**Matches**: Many-to-Many relationship between Users, stores information about matched users (user IDs, status, timestamp). (Foreign Keys: UserID1 and UserID2 both reference UserProfiles(UserID))

**Messages**: Many-to-Many relationship between Users, stores message content, sender/receiver IDs, timestamps, and read status. (Foreign Keys: SenderID and ReceiverID both reference UserProfiles(UserID))

**Likes**: One-to-Many relationship with Users, stores like/dislike information (user ID, liked user ID, status, timestamp). (Foreign Keys: LikerID and LikedUserID both reference UserProfiles(UserID))

**Reports (Optional)**: One-to-Many or Many-to-Many relationships with Users and Messages (depending on implementation), stores reporting details. (Foreign Keys: ReporterID references UserProfiles(UserID), ReportedMessageID references Messages(MessageID) - optional)

### Cardinalities:

**UserProfiles**: Many (can have many relationships)

**UserPreferences**: One (one set of preferences per user)

**Matches**: Many (a user can have many matches)

**Messages**: Many (a user can send and receive many messages)

**Likes**: Many (a user can like/dislike many profiles)

**Reports (Optional)**: Many (a user can submit many reports, a message/user can be reported by many users)

### Attributes:

Each entity will have its specific attributes as defined in the database schema.

* NOTE: [For documentation and rationale behind the design, refer this link](https://github.com/SahibSodhi/Dating-App/blob/main/Documentation.txt)

