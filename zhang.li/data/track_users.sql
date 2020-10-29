CREATE TABLE IF NOT EXISTS `users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`gender` VARCHAR(MAX) NULL,
`location` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_users VALUES
(1,'Alexander Anderson','user1','male','Strong\, Iowa','user1@gmail.com','md5(pass)','https://via.placeholder.com/400/958/fff/?text=user1','2020-03-25 11:43:29'),
(2,'Eleanor Pickett','user2','female','Caron\, Montana','user2@gmail.com','md5(pass)','https://via.placeholder.com/400/846/fff/?text=user2','2020-04-01 09:38:42'),
(3,'Elnora Henderson','user3','female','Bridgetown\, Puerto Rico','user3@gmail.com','md5(pass)','https://via.placeholder.com/400/756/fff/?text=user3','2020-09-16 09:57:33'),
(4,'Lily Kaufman','user4','female','Cloverdale\, Massachusetts','user4@gmail.com','md5(pass)','https://via.placeholder.com/400/757/fff/?text=user4','2020-09-06 12:35:47'),
(5,'Chavez Forbes','user5','male','Mayfair\, Texas','user5@gmail.com','md5(pass)','https://via.placeholder.com/400/890/fff/?text=user5','2020-07-05 04:29:40'),
(6,'Bradley Lott','user6','male','Comptche\, Idaho','user6@gmail.com','md5(pass)','https://via.placeholder.com/400/971/fff/?text=user6','2020-06-22 08:34:30'),
(7,'Craig Graham','user7','male','Maplewood\, District Of Columbia','user7@gmail.com','md5(pass)','https://via.placeholder.com/400/711/fff/?text=user7','2020-01-26 07:29:23'),
(8,'Beck Watts','user8','male','Brooktrails\, Missouri','user8@gmail.com','md5(pass)','https://via.placeholder.com/400/915/fff/?text=user8','2020-09-12 05:38:48'),
(9,'Copeland Skinner','user9','male','Belleview\, Palau','user9@gmail.com','md5(pass)','https://via.placeholder.com/400/849/fff/?text=user9','2020-08-09 02:32:23'),
(10,'Compton Salas','user10','male','Dixonville\, New Mexico','user10@gmail.com','md5(pass)','https://via.placeholder.com/400/778/fff/?text=user10','2020-04-21 05:49:11');