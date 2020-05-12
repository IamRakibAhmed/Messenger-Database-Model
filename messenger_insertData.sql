INSERT INTO login_info(Username, Password, DeviceID, DeviceName, DeviceOS, Country, City)
VALUES ('rakib', 'asd12', 1, 'Realme', 'Android', 'Bangladesh', 'Dhaka'),
('rakib1', 'asd13', 2, 'Oppo', 'Android', 'Bangladesh', 'Dhaka'),
('rakib2', 'asd14', 3, 'Realme', 'Android', 'India', 'Delhi'),
('faisal', 'xyz123', 4, 'iPhone 11 pro', 'IOS', 'Bangladesh', 'Dhaka'),
('faisal1', 'xyz123', 3, 'Laptop', 'Windows', 'USA', 'New York');

INSERT INTO users(Username, UserID, Email_Address, Profile_image, First_Name, Last_Name, PhoneNumber, Date_of_birth, Gender, isBlocked, isActive)
VALUES ('rakib', 1, 'rakib@gmail.com', null, 'Rakib', 'Ahmed', 12345, '1997-10-28', 'Male', 0, 1),
('rakib1', 2, 'rakib1@gmail.com', null, 'Rakib', 'Ahmed', 12344, '1996-10-28', 'Male', 1, 0),
('rakib2', 3, 'rakib2@gmail.com', null, 'Ahmed', 'Ahmed', 12346, '1997-10-28', 'Male', 1, 1),
('faisal', 4, 'faisal@gmail.com', null, 'Faisal', 'Hossain', 12331, '1998-7-12', 'Male', 0, 1),
('faisal1', 5, 'faisal1@gmail.com', null, 'Faisal', 'Hossain', 12332, '1998-7-12', 'Male', 1, 0);

INSERT INTO activity_sessions(activityID, UserID, Active_startTime, Active_endTime)
VALUES (1, 1, '2011-12-18 13:17:17', '2012-1-1 4:17:17'),
(2, 1, '2012-12-18 13:17:17', '2012-1-1 4:17:17'),
(3, 1, '2015-12-18 13:17:17', '2012-1-1 4:17:17'),
(4, 1, '2019-12-18 13:17:17', '2012-1-1 4:17:17'),
(5, 2, '2014-12-18 13:17:17', '2012-1-1 4:17:17'),
(6, 4, '2011-12-18 13:17:17', '2012-1-1 4:17:17'),
(7, 2, '2012-12-18 13:17:17', '2012-1-1 4:17:17'),
(8, 1, '2017-12-18 13:17:17', '2012-1-1 4:17:17'),
(9, 4, '2012-12-18 13:17:17', '2012-1-1 4:17:17'),
(10, 4, '2014-12-18 13:17:17', '2012-1-1 4:17:17'),
(11, 3, '2011-12-18 13:17:17', '2012-1-1 4:17:17'),
(12, 4, '2016-12-18 13:17:17', '2012-1-1 4:17:17'),
(13, 2, '2018-12-18 13:17:17', '2012-1-1 4:17:17'),
(14, 5, '2013-12-18 13:17:17', '2012-1-1 4:17:17'),
(15, 5, '2017-12-18 13:17:17', '2012-1-1 4:17:17'),
(16, 4, '2017-12-18 13:17:17', '2012-1-1 4:17:17'),
(17, 1, '2017-12-18 13:17:17', '2012-1-1 4:17:17'),
(18, 1, '2013-2-18 13:17:17', '2012-1-1 4:17:17'),
(19, 2, '2016-12-18 13:17:17', '2012-1-1 4:17:17'),
(20, 1, '2013-12-18 13:17:17', '2012-1-1 4:17:17'),
(21, 1, '2019-1-18 13:17:17', '2012-1-1 4:17:17'),
(22, 4, '2020-1-18 13:17:17', '2012-1-1 4:17:17'),
(23, 4, '2020-2-18 13:17:17', '2012-1-1 4:17:17'),
(24, 3, '2018-12-18 13:17:17', '2012-1-1 4:17:17'),
(25, 1, '2020-4-18 13:17:17', '2012-1-1 4:17:17'),
(26, 1, '2020-4-20 13:17:17', '2012-1-1 4:17:17'),
(27, 1, '2020-4-20 19:17:17', '2012-1-1 4:17:17'),
(28, 1, '2011-9-18 13:17:17', '2012-1-1 4:17:17'),
(29, 4, '2016-12-18 13:17:17', '2012-1-1 4:17:17');

INSERT INTO conversations(coversationID, UserID, tittle, create_time, update_time)
VALUES (1, 1, 'one to one', '2020-1-15 13:13:17', null),
(2, 2, 'one to one', '2020-1-15 14:13:17', null),
(3, 1, 'group', '2020-5-25 17:11:27', '2020-5-25 17:17:11'),
(4, 4, 'group', '2020-1-15 13:13:17', '2020-1-15 13:33:21'),
(5, 4, 'one to one', '2020-3-21 21:11:27', null),
(6, 1, 'one to one', '2020-4-11 23:23:11', null);

INSERT INTO participants(participantsID, conversationID, UserID)
VALUES (1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 4),
(5, 5, 4),
(6, 6, 1);

INSERT INTO block_list(blockID, Username, participantsID, block_date) 
VALUES (1, 'rakib1', 2, '2011-12-18 13:17:17'),
(2, 'rakib2', 3, '2015-10-18 21:10:21'),
(3, 'rakib1', 5, '2019-11-17 15:10:10');

INSERT INTO deleted_conversations(conversationID, Username, ID, delete_time)
VALUE(1, 'rakib', 1, '2020-2-11 13:13:17'),
(2, 'rakib1', 2, '2020-2-20 21:13:17');

INSERT INTO friends(UserID, friendID, friendship_date)
VALUES (1, 1, '2010-7-12'),
(2, 2, '2010-9-22'),
(3, 3, '2010-3-15'),
(4, 4, '2010-5-22'),
(5, 5, '2010-11-28');

INSERT INTO messages(messageID, friendID, conversationID, message, media, last_seen, isDelivered, sending_time, Recieving_time)
VALUES (1, 1, 1, 'hi, how are you?', null, '2020-4-20 13:13:17', 1, '2020-1-15 13:13:17', '2020-1-15 13:14:17'),
(2, 2, 2, 'hello, did you complete the project ?', null, '2020-3-21 23:3:27', 0, '2020-1-15 14:13:17', '2020-1-15 14:13:25'),
(3, 1, 3, 'yes, we can make a schedule', null, '2020-4-20 13:13:27', 1, '2020-5-25 17:11:27', '2020-5-25 17:12:27'),
(4, 4, 4, 'lets have a meeting', null, '2020-3-15 17:13:27', 1, '2020-1-15 13:13:17', '2020-1-15 13:14:17'),
(5, 4, 5, 'yes boss', null, '2020-4-20 13:13:27', 1, '2020-3-21 21:11:27', '2020-3-21 21:12:27'),
(6, 1, 6, 'see you soon', null, '2020-4-20 13:13:27', 0, '2020-4-11 23:23:11', '2020-4-11 23:23:11');

INSERT INTO deleted_messages(ID, messageID, username, delete_time)
VALUES (1, 3, 'rakib', '2020-5-25 17:12:27'),
(2, 4, 'faisal', '2020-1-15 13:14:17');

INSERT INTO call_history(call_ID, participantsID, UserID, friendID, call_type, start_time, end_time)
VALUES (1, 1, 1, 1, 'audio', '2019-12-27 9:14:37', '2019-12-27 9:47:31'),
(2, 2, 2, 2, 'audio', '2019-12-27 9:14:37', '2019-12-27 9:47:31'),
(3, 3, 1, 1, 'video', '2019-12-29 4:12:27', '2019-12-29 5:47:31');
