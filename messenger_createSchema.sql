CREATE TABLE Login_Info (
	Username varchar(255) NOT NULL,
	Password BINARY(60) NOT NULL,
	DeviceID INT NOT NULL,
	DeviceName varchar(20) NOT NULL,
	DeviceOS varchar(10) NOT NULL,
	Country varchar(20) NOT NULL,
	City varchar(20) NOT NULL,
	PRIMARY KEY (Username)
);

CREATE TABLE Users (
	Username varchar(255) NOT NULL UNIQUE,
	UserID INT NOT NULL AUTO_INCREMENT,
	Email_Address varchar(255) NOT NULL UNIQUE,
	Profile_image varchar(255),
	First_Name varchar(20) NOT NULL,
	Last_Name varchar(20) NOT NULL,
	PhoneNumber INT NOT NULL UNIQUE,
	Date_of_birth DATE NOT NULL,
	Gender varchar(10) NOT NULL,
	isBlocked BOOLEAN NOT NULL,
	isActive BOOLEAN NOT NULL,
	PRIMARY KEY (UserID)
);

CREATE TABLE Activity_Sessions (
	activityID INT NOT NULL AUTO_INCREMENT,
	UserID INT NOT NULL,
	Active_startTime DATETIME NOT NULL,
	Active_endTime DATETIME NOT NULL,
	PRIMARY KEY (activityID)
);

CREATE TABLE Friends (
	UserID INT NOT NULL,
	friendID INT NOT NULL AUTO_INCREMENT,
	friendship_date DATE NOT NULL,
	PRIMARY KEY (friendID)
);

CREATE TABLE Block_List (
	blockID INT NOT NULL AUTO_INCREMENT,
	Username varchar(255) NOT NULL,
	participantsID INT NOT NULL,
	block_date DATETIME NOT NULL,
	PRIMARY KEY (blockID)
);

CREATE TABLE messages (
	messageID INT NOT NULL AUTO_INCREMENT,
	friendID INT NOT NULL,
	conversationID INT NOT NULL,
	message varchar(255) NOT NULL,
	media varchar(255),
	last_seen DATETIME NOT NULL,
	isDelivered BOOLEAN NOT NULL,
	sending_time DATETIME NOT NULL,
	Recieving_time DATETIME NOT NULL,
	PRIMARY KEY (messageID)
);

CREATE TABLE deleted_messages (
	ID INT NOT NULL AUTO_INCREMENT,
	messageID INT NOT NULL UNIQUE,
	username varchar(255) NOT NULL,
	delete_time DATETIME NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE Conversations (
	coversationID INT NOT NULL AUTO_INCREMENT,
	UserID INT NOT NULL,
	tittle varchar(40) NOT NULL,
	create_time DATETIME NOT NULL,
	update_time DATETIME,
	PRIMARY KEY (coversationID)
);

CREATE TABLE Participants (
	participantsID INT NOT NULL AUTO_INCREMENT,
	conversationID INT NOT NULL,
	UserID INT NOT NULL,
	PRIMARY KEY (participantsID)
);

CREATE TABLE deleted_conversations (
	conversationID INT NOT NULL,
	Username varchar(255) NOT NULL,
	ID INT NOT NULL AUTO_INCREMENT,
	delete_time DATETIME NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE call_history (
	call_ID INT NOT NULL AUTO_INCREMENT,
	participantsID INT NOT NULL,
	UserID INT NOT NULL,
	friendID INT NOT NULL,
	call_type varchar(10) NOT NULL,
	start_time DATETIME NOT NULL,
	end_time DATETIME NOT NULL,
	PRIMARY KEY (call_ID)
);

ALTER TABLE Users ADD CONSTRAINT Users_fk0 FOREIGN KEY (Username) REFERENCES Login_Info(Username);

ALTER TABLE Activity_Sessions ADD CONSTRAINT Activity_Sessions_fk0 FOREIGN KEY (UserID) REFERENCES Users(UserID);

ALTER TABLE Friends ADD CONSTRAINT Friends_fk0 FOREIGN KEY (UserID) REFERENCES Users(UserID);

ALTER TABLE Block_List ADD CONSTRAINT Block_List_fk0 FOREIGN KEY (Username) REFERENCES Login_Info(Username);

ALTER TABLE Block_List ADD CONSTRAINT Block_List_fk1 FOREIGN KEY (participantsID) REFERENCES Participants(participantsID);

ALTER TABLE messages ADD CONSTRAINT messages_fk0 FOREIGN KEY (friendID) REFERENCES Friends(friendID);

ALTER TABLE messages ADD CONSTRAINT messages_fk1 FOREIGN KEY (conversationID) REFERENCES Conversations(coversationID);

ALTER TABLE deleted_messages ADD CONSTRAINT deleted_messages_fk0 FOREIGN KEY (messageID) REFERENCES messages(messageID);

ALTER TABLE deleted_messages ADD CONSTRAINT deleted_messages_fk1 FOREIGN KEY (username) REFERENCES Users(Username);

ALTER TABLE Conversations ADD CONSTRAINT Conversations_fk0 FOREIGN KEY (UserID) REFERENCES Users(UserID);

ALTER TABLE Participants ADD CONSTRAINT Participants_fk0 FOREIGN KEY (conversationID) REFERENCES Conversations(coversationID);

ALTER TABLE Participants ADD CONSTRAINT Participants_fk1 FOREIGN KEY (UserID) REFERENCES Users(UserID);

ALTER TABLE deleted_conversations ADD CONSTRAINT deleted_conversations_fk0 FOREIGN KEY (conversationID) REFERENCES Conversations(coversationID);

ALTER TABLE deleted_conversations ADD CONSTRAINT deleted_conversations_fk1 FOREIGN KEY (Username) REFERENCES Users(Username);

ALTER TABLE call_history ADD CONSTRAINT call_history_fk0 FOREIGN KEY (participantsID) REFERENCES Participants(participantsID);

ALTER TABLE call_history ADD CONSTRAINT call_history_fk1 FOREIGN KEY (UserID) REFERENCES Users(UserID);

ALTER TABLE call_history ADD CONSTRAINT call_history_fk2 FOREIGN KEY (friendID) REFERENCES Friends(friendID);

