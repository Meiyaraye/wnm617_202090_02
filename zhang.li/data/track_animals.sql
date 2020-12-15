-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2020 at 02:53 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lzdesign_wnm608`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_animals`
--

CREATE TABLE `track_animals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `breed` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `track_animals`
--

INSERT INTO `track_animals` (`id`, `user_id`, `name`, `color`, `breed`, `location`, `description`, `img`, `date_create`) VALUES
(2, 6, 'Locazone ', 'Black', 'Bulldog', 'Gloucester, Puerto Rico', 'Esse est commodo magna quis nisi consequat excepteur laborum do. Culpa consectetur culpa do commodo labore nulla eiusmod incididunt. Reprehenderit id nisi commodo eu occaecat anim ea.', 'https://via.placeholder.com/400/700/fff/?text=Locazone ', '2020-01-02 03:23:16'),
(3, 8, 'Bovis ', 'Black', 'Dalmation', 'Dawn, Oklahoma', 'Eu Lorem adipisicing occaecat amet proident nostrud. Ut mollit veniam commodo nostrud ad. Excepteur reprehenderit exercitation dolor dolor deserunt ipsum duis.', 'https://via.placeholder.com/400/865/fff/?text=Bovis ', '2020-05-11 12:03:54'),
(4, 10, 'Megall ', 'Golden and white', 'Bulldog', 'Bridgetown, Guam', 'Nulla consequat cupidatat ex consectetur. Minim eiusmod mollit tempor non sint. Nulla eu officia aliquip eiusmod consectetur dolor.', 'https://via.placeholder.com/400/758/fff/?text=Megall ', '2020-08-02 11:04:05'),
(5, 9, 'Collaire ', 'White', 'Russell-Terrier', 'Brazos, South Carolina', 'Consequat labore laboris nisi fugiat ut amet aliqua labore et. Nulla ullamco incididunt nostrud irure ut adipisicing exercitation ex reprehenderit minim laboris ex est. Cupidatat fugiat reprehenderit ex pariatur.', 'https://via.placeholder.com/400/759/fff/?text=Collaire ', '2020-02-22 07:40:00'),
(6, 2, 'Isotronic 111', 'Golden111', 'Russell-Terrier11', 'Coloma, Tennessee', 'Occaecat nulla est reprehenderit commodo ea. Eu pariatur exercitation dolor nostrud veniam consectetur commodo ipsum. Incididunt laborum voluptate reprehenderit qui irure aliquip et tempor in.', 'https://via.placeholder.com/400/740/fff/?text=Isotronic ', '2020-05-05 02:31:40'),
(7, 9, 'Steeltab ', 'Golden and white', 'Dalmation', 'Freeburn, Colorado', 'Veniam magna non nostrud et tempor. Velit est nisi non cupidatat occaecat in ullamco ea fugiat. Ea duis enim reprehenderit nostrud elit reprehenderit sint ut aute Lorem cillum dolor irure.', 'https://via.placeholder.com/400/795/fff/?text=Steeltab ', '2020-09-07 04:35:34'),
(9, 1, 'Zentime 111', 'Golden', 'Russell-Terrier', 'Dana, Maryland', 'Veniam veniam id ut est aliquip. Dolore laborum do anim cupidatat exercitation mollit ex velit officia culpa. Dolor nostrud qui esse commodo.', 'https://via.placeholder.com/400/789/fff/?text=Zentime ', '2020-02-23 03:55:59'),
(10, 6, 'Brainclip ', 'Golden', 'Russell-Terrier', 'Rosedale, South Dakota', 'Laborum occaecat qui occaecat occaecat laborum Lorem laboris anim. Labore dolor magna tempor deserunt eiusmod consectetur esse non. Qui proident nisi consectetur cillum.', 'https://via.placeholder.com/400/939/fff/?text=Brainclip ', '2020-10-21 06:37:00'),
(11, 9, 'Vertide ', 'Golden', 'Bulldog', 'Fairhaven, Rhode Island', 'Qui nostrud nulla sit nisi nulla ad do amet ut deserunt pariatur. Eu labore exercitation laboris adipisicing nostrud amet do nostrud consequat cupidatat. Deserunt fugiat in eiusmod minim cupidatat pariatur duis excepteur aute fugiat amet reprehenderit eiusmod.', 'https://via.placeholder.com/400/832/fff/?text=Vertide ', '2020-08-30 01:08:49'),
(14, 3, 'Geekko ', 'Golden and white', 'Cavalier-King-Charles-Spaniel', 'Matheny, Illinois', 'Elit aliqua et officia quis magna elit cupidatat aliqua officia. Do elit qui esse enim. Fugiat consequat consequat eu ad aliqua incididunt duis deserunt anim dolore labore.', 'https://via.placeholder.com/400/953/fff/?text=Geekko ', '2020-07-09 07:02:57'),
(15, 8, 'Grainspot ', 'Golden and white', 'Bulldog', 'Jenkinsville, Hawaii', 'Occaecat aute ea commodo duis consectetur fugiat est ad cupidatat nisi commodo ea minim. Aliqua Lorem irure nostrud consectetur. Officia eiusmod sint consequat proident sint qui eu ut cillum Lorem incididunt sint.', 'https://via.placeholder.com/400/985/fff/?text=Grainspot ', '2020-03-13 01:54:17'),
(16, 10, 'Tetratrex ', 'White', 'Dalmation', 'Sperryville, North Dakota', 'Ad et officia duis et exercitation. Pariatur laboris ad pariatur laborum dolore exercitation eiusmod est fugiat nisi ut. Pariatur cillum occaecat aliqua aliquip aute ad sunt fugiat culpa pariatur ipsum magna.', 'https://via.placeholder.com/400/879/fff/?text=Tetratrex ', '2020-01-03 03:39:54'),
(17, 5, 'Idetica ', 'Black', 'Bulldog', 'Winston, New Mexico', 'Ex ad id et nisi. Occaecat ea ad nostrud ullamco dolor cupidatat adipisicing cupidatat. Id veniam et non Lorem in mollit fugiat exercitation sunt adipisicing officia nisi mollit excepteur.', 'https://via.placeholder.com/400/826/fff/?text=Idetica ', '2020-02-21 11:24:48'),
(18, 8, 'Assistia ', 'Black', 'Dalmation', 'Edinburg, Wyoming', 'Pariatur anim quis mollit mollit ut enim est anim. Culpa voluptate velit veniam duis duis ut consequat dolor sint. Consequat excepteur mollit ea qui enim.', 'https://via.placeholder.com/400/987/fff/?text=Assistia ', '2020-01-16 03:44:00'),
(19, 5, 'Satiance ', 'Golden', 'Cane corso', 'Munjor, Florida', 'Quis consequat labore ullamco non consectetur nisi ipsum occaecat id adipisicing commodo consequat occaecat nisi. Consectetur eiusmod veniam eu qui sunt laboris nostrud dolore ut ut voluptate. Lorem consequat ullamco consequat tempor labore mollit voluptate qui eiusmod quis nostrud.', 'https://via.placeholder.com/400/940/fff/?text=Satiance ', '2020-06-16 02:36:32'),
(20, 8, 'Genmy ', 'Black', 'Bulldog', 'Ballico, Marshall Islands', 'Ut ex cupidatat sunt incididunt cupidatat sunt laboris exercitation mollit. Labore dolor cupidatat excepteur fugiat mollit reprehenderit ipsum incididunt amet. Cillum eiusmod culpa Lorem cillum labore nostrud sit minim excepteur ipsum mollit dolor anim.', 'https://via.placeholder.com/400/759/fff/?text=Genmy ', '2020-02-20 09:56:02'),
(21, 1, 'Xinware ', 'White', 'Bichon frise', 'Greenbackville, Northern Mariana Islands', 'Veniam dolor incididunt eu eiusmod reprehenderit ex elit. Fugiat eu excepteur dolore non sint nostrud sint nostrud exercitation adipisicing qui proident. Lorem nisi officia cupidatat amet Lorem reprehenderit ipsum consectetur duis in occaecat.', 'https://via.placeholder.com/400/735/fff/?text=Xinware ', '2020-07-29 05:15:00'),
(22, 3, 'Endipin ', 'Golden', 'Cavalier-King-Charles-Spaniel', 'Strong, Connecticut', 'Tempor ut officia ea adipisicing irure aliquip mollit deserunt mollit est duis sunt. Magna enim voluptate Lorem id proident. Occaecat elit anim ea qui qui fugiat dolore mollit officia veniam.', 'https://via.placeholder.com/400/890/fff/?text=Endipin ', '2020-04-05 11:07:55'),
(23, 4, 'Bitendrex ', 'Golden and white', 'Cavalier-King-Charles-Spaniel', 'Monument, New York', 'Incididunt mollit adipisicing sit dolor cupidatat culpa fugiat fugiat aliquip laborum ad minim. Laboris qui occaecat officia ex do. In ex enim nostrud reprehenderit duis in eu nisi enim incididunt ipsum proident.', 'https://via.placeholder.com/400/831/fff/?text=Bitendrex ', '2020-10-30 10:11:47'),
(26, 2, 'Zillacon ', 'Black', 'Cane corso', 'Fairview, American Samoa', 'Sit sunt laboris cupidatat labore consequat fugiat sunt ullamco occaecat mollit duis occaecat. Sunt magna veniam exercitation id commodo. Excepteur mollit dolor labore sit enim est laboris sit.', 'https://via.placeholder.com/400/808/fff/?text=Zillacon ', '2020-09-14 09:41:38'),
(27, 2, 'Evidends ', 'White', 'Bulldog', 'Helen, Minnesota', 'Mollit tempor nulla aute in eu minim ex consectetur consectetur pariatur ea laboris non. Veniam eiusmod culpa reprehenderit eu ad ad amet id reprehenderit Lorem commodo quis. Nostrud amet esse anim exercitation eiusmod do dolore ad ad quis ipsum voluptate sint.', 'https://via.placeholder.com/400/977/fff/?text=Evidends ', '2020-07-13 04:06:12'),
(28, 1, 'Freakin ', 'Golden and white', 'Bulldog', 'Kylertown, Wisconsin', 'Sunt commodo deserunt cillum exercitation fugiat in eu excepteur anim nisi dolor dolor minim Lorem. In culpa sunt veniam ipsum enim. Proident sint elit Lorem velit labore ullamco magna proident veniam ullamco dolore adipisicing non labore.', 'https://via.placeholder.com/400/841/fff/?text=Freakin ', '2020-04-03 07:17:22'),
(29, 2, 'Equicom ', 'Golden and white', 'Cavalier-King-Charles-Spaniel', '', 'Laboris Lorem cupidatat eiusmod exercitation laborum ullamco do non sunt elit non aliquip reprehenderit irure. In nostrud quis minim fugiat aliquip consectetur aliqua officia. Officia do anim velit consequat ipsum.', 'uploads/1607975524.2811_Bichon-frise.jpg', '2020-06-27 10:13:49'),
(30, 3, 'Indexia ', 'Golden and white', 'Dalmation', 'Glasgow, Maine', 'Do occaecat laboris sint occaecat excepteur non aliqua deserunt duis enim magna. Cupidatat sint fugiat pariatur in culpa. Ad pariatur duis ex veniam amet deserunt fugiat fugiat deserunt duis qui non.', 'https://via.placeholder.com/400/921/fff/?text=Indexia ', '2020-04-05 12:46:38'),
(31, 10, 'Dogspa ', 'White', 'Cavalier-King-Charles-Spaniel', 'Brownsville, New Jersey', 'Consequat deserunt sit aliquip ullamco eu. Commodo deserunt esse aliquip anim cillum aliquip eiusmod mollit nulla commodo consequat quis proident. Aliquip mollit deserunt aute commodo pariatur eiusmod velit nostrud do dolor.', 'https://via.placeholder.com/400/799/fff/?text=Dogspa ', '2020-03-31 05:47:21'),
(32, 5, 'Ovation ', 'Black', 'Bichon frise', 'Sanborn, Nevada', 'Magna Lorem anim velit enim incididunt incididunt duis ex cupidatat aliqua. Enim dolore proident pariatur pariatur reprehenderit culpa id. Ullamco officia dolore ea est officia commodo sunt elit.', 'https://via.placeholder.com/400/929/fff/?text=Ovation ', '2020-11-02 08:37:54'),
(33, 8, 'Unia ', 'Golden and white', 'Shiba Inu', 'Caledonia, Alabama', 'Officia velit sint aliquip ipsum veniam. In enim sunt est consequat amet proident mollit consequat laborum deserunt ex. Enim aute cupidatat ut do tempor duis in.', 'https://via.placeholder.com/400/904/fff/?text=Unia ', '2020-09-05 01:56:08'),
(34, 9, 'Zanymax ', 'White', 'Cavalier-King-Charles-Spaniel', 'Nadine, Missouri', 'Veniam proident nisi magna enim aliqua. Amet laboris sit exercitation magna ipsum incididunt in culpa. In laboris cillum reprehenderit duis culpa est voluptate ut est.', 'https://via.placeholder.com/400/819/fff/?text=Zanymax ', '2020-02-14 12:36:57'),
(35, 3, 'Quotezart ', 'Golden', 'Dalmation', 'Wheatfields, Louisiana', 'Minim incididunt ullamco sunt aliqua. Magna laborum excepteur labore ex ut laboris reprehenderit amet proident reprehenderit est. Est proident nisi proident nisi do laborum ad sit eu aliqua eu anim duis.', 'https://via.placeholder.com/400/849/fff/?text=Quotezart ', '2020-09-03 07:53:45'),
(36, 6, 'Eventage ', 'Golden', 'Russell-Terrier', 'Wells, Vermont', 'Culpa minim esse eu incididunt sit ipsum exercitation non nostrud qui. Aliquip deserunt exercitation eu velit culpa enim quis anim pariatur. Velit magna esse incididunt qui dolore dolore mollit et.', 'https://via.placeholder.com/400/974/fff/?text=Eventage ', '2020-06-26 10:59:28'),
(37, 1, 'Manglo ', 'Golden', 'Bulldog', 'Northridge, Virginia', 'Deserunt in reprehenderit consequat aute pariatur consectetur dolore. Aliquip pariatur enim non nostrud amet elit cupidatat. Sint sint adipisicing aliquip reprehenderit commodo nulla aute occaecat non dolor reprehenderit minim.', 'https://via.placeholder.com/400/997/fff/?text=Manglo ', '2020-04-20 01:24:24'),
(38, 8, 'Acusage ', 'Black', 'Bulldog', 'Tuskahoma, Idaho', 'Duis exercitation officia anim non Lorem cupidatat sint elit eu irure. Laboris cupidatat esse qui anim et sunt nisi minim laboris. In voluptate sint mollit mollit ullamco velit nulla.', 'https://via.placeholder.com/400/874/fff/?text=Acusage ', '2020-06-03 10:46:53'),
(39, 9, 'Zizzle ', 'White', 'Shiba Inu', 'Reno, North Carolina', 'Enim nulla fugiat qui non laboris in et sint ullamco ex. Ut eiusmod ullamco ea excepteur. Mollit fugiat labore laborum sunt ad deserunt proident.', 'https://via.placeholder.com/400/797/fff/?text=Zizzle ', '2020-10-06 01:14:43'),
(40, 10, 'Orbin ', 'White', 'Cavalier-King-Charles-Spaniel', 'Shepardsville, Virgin Islands', 'Consequat ea dolor cupidatat id non ea sint. Aliquip nisi voluptate et mollit. Veniam aliqua fugiat esse aliquip.', 'https://via.placeholder.com/400/813/fff/?text=Orbin ', '2020-07-25 05:36:29'),
(41, 10, 'Isonus ', 'Black', 'Dalmation', 'Churchill, Montana', 'Sint adipisicing aliqua amet pariatur veniam aute occaecat eu. Nisi laboris quis aliquip et ipsum eu velit excepteur et id cillum velit. Aute officia excepteur culpa deserunt et id labore ipsum.', 'https://via.placeholder.com/400/971/fff/?text=Isonus ', '2020-09-16 01:07:49'),
(42, 4, 'Xixan ', 'Golden and white', 'Cane corso', 'Hatteras, Alaska', 'Nisi elit labore commodo velit est consequat exercitation est sint dolor deserunt quis officia deserunt. Velit labore dolor eiusmod culpa quis reprehenderit tempor sunt elit amet culpa Lorem aliquip. Proident quis ex proident eiusmod voluptate.', 'https://via.placeholder.com/400/973/fff/?text=Xixan ', '2020-10-08 05:05:42'),
(43, 9, 'Dadabase ', 'Black', 'Cane corso', 'Chase, Nebraska', 'Irure amet laboris occaecat laboris ipsum ipsum qui anim fugiat eiusmod. Deserunt sunt ullamco pariatur sit ad dolor laboris mollit. Adipisicing enim sit ipsum ipsum consequat enim ex enim enim exercitation.', 'https://via.placeholder.com/400/737/fff/?text=Dadabase ', '2020-07-24 07:14:17'),
(44, 4, 'Sonique ', 'Black', 'Cavalier-King-Charles-Spaniel', 'Wedgewood, Federated States Of Micronesia', 'Labore do do fugiat officia Lorem in laboris in adipisicing deserunt excepteur deserunt aute. Ex occaecat non mollit voluptate ut ullamco officia nisi cupidatat magna consequat duis tempor sit. Aliqua sunt anim anim nostrud laborum consectetur eiusmod et sunt incididunt consectetur minim officia.', 'https://via.placeholder.com/400/888/fff/?text=Sonique ', '2020-01-19 01:20:57'),
(45, 1, 'Egypto ', 'Golden', 'Russell-Terrier', 'Springdale, Oregon', 'Adipisicing culpa sunt id id id reprehenderit sunt sit dolor amet fugiat ad veniam labore. Excepteur sunt consectetur duis ipsum voluptate nisi. Ea consequat Lorem est enim culpa nostrud laborum deserunt cupidatat veniam.', 'https://via.placeholder.com/400/873/fff/?text=Egypto ', '2020-06-08 01:49:24'),
(46, 4, 'Gynko ', 'Golden and white', 'Russell-Terrier', 'Blackgum, Mississippi', 'Id do labore elit veniam proident id fugiat dolor mollit sunt eu dolore consequat quis. Sunt incididunt est non sunt et proident ea consequat. Adipisicing incididunt laborum laborum ullamco minim qui incididunt elit occaecat id excepteur enim cupidatat.', 'uploads/1607546671.4518_artem-chebokha-1313.jpg', '2020-01-15 04:23:51'),
(48, 9, 'Quilm ', 'Golden', 'Shiba Inu', 'Sunwest, Texas', 'Id velit consequat quis minim reprehenderit. Sit velit in deserunt ex minim eiusmod adipisicing quis do aute. Do est veniam ad aliqua id sunt elit ullamco quis sint elit elit excepteur.', 'https://via.placeholder.com/400/732/fff/?text=Quilm ', '2020-04-14 02:54:46'),
(50, 4, 'Andershun ', 'Golden', 'Cane corso', 'Tolu, Massachusetts', 'Velit adipisicing reprehenderit veniam tempor dolor magna sint amet. Lorem consectetur aliquip id deserunt eiusmod in ut quis labore ea. Ad qui anim ex sint pariatur.', 'https://via.placeholder.com/400/997/fff/?text=Andershun ', '2020-06-12 05:11:42'),
(51, 3, 'dsf', 'fdsf', 'sdf', '', 'sdf', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-03 05:16:34'),
(52, 3, 'dsf', 'fdsf', 'sdf', '', 'sdf', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-03 05:16:45'),
(53, 3, 'dsf', 'fdsf', 'sdf', '', 'sdf', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-03 05:16:46'),
(54, 3, 'dsf', 'fdsf', 'sdf', '', 'sdf', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-03 05:18:16'),
(55, 11, 'fdsafdsg', 'dfggdfdfshgfgf', 'gfdhgfd', 'fdagfdshgfh', 'dfgfdshsfd', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-03 12:56:59'),
(57, 13, 'erwe', 'tger', 'tert', 'ert', 'tgre', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-03 14:14:54'),
(58, 14, 'asdfsf', 'fsd', 'fsdffsd', 'sdf', 'sdfsfs', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-04 05:34:34'),
(59, 15, '1111', 'Ed', '3', '222', 'Gg', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-04 06:23:25'),
(60, 15, 'Rrf', '', 'Hhh', 'Hhh', 'Hh', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-04 06:23:43'),
(61, 12, 'try', 'hgf', 'fghf', 'fy', 'hgf', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-05 05:32:56'),
(65, 16, 'fghf', 'hgfg', 'hgfh', 'fghf', 'ghf', 'https://via.placeholder.com/400/?text=ANIMAL', '2020-12-06 07:03:01'),
(66, 17, 'Little Hero', 'Black', 'Bulldog', 'Golden Gate Park', 'He is a little bulldog with black color. ', 'uploads/1607547516.875_1.jpeg', '2020-12-08 16:29:10'),
(67, 17, 'Lily', 'Golden', 'Shiba Inu', '', 'Smart dog.', 'uploads/1607611949.5695_1.jpg', '2020-12-08 16:33:47'),
(68, 17, 'King', 'Black and White', 'Dalmation', 'SF City Hall', 'Big and smart.', 'uploads/1607547701.1033_Dalmation-Dog.jpg', '2020-12-08 16:36:09'),
(76, 17, 'Queen', 'White', 'Bicho', 'Southgate Park', 'Cute and small dog', 'uploads/1607611505.2801_Bichon-frise.jpg', '2020-12-10 07:44:47'),
(77, 17, 'Princess', 'Golden and White', 'Cavalier', '', 'Cute and Small', 'uploads/1607611898.1525_Cavalier-King-Charles-Spaniel.jpg', '2020-12-10 07:50:27'),
(78, 6, 'dfgd', 'dfgd', 'fdg', '', 'dfg', 'uploads/1607675198.5329_cane-corso.jpg', '2020-12-11 01:26:24'),
(79, 17, 'Core', 'Black', 'Cane', '', 'Strong', 'uploads/1608027849.7386_cane-corso.jpg', '2020-12-15 03:23:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_animals`
--
ALTER TABLE `track_animals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_animals`
--
ALTER TABLE `track_animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
