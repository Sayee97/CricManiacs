-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2017 at 02:58 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogFINAL`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogger_info`
--

CREATE TABLE `blogger_info` (
  `blogger_id` int(11) NOT NULL,
  `blogger_firstname` varchar(20) NOT NULL,
  `blogger_username` varchar(255) NOT NULL,
  `blogger_password` varchar(255) NOT NULL,
  `blogger_creation_date` date NOT NULL,
  `blogger_is_active` tinyint(1) NOT NULL,
  `blogger_updated_Date` date DEFAULT NULL,
  `blogger_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogger_info`
--

INSERT INTO `blogger_info` (`blogger_id`, `blogger_firstname`, `blogger_username`, `blogger_password`, `blogger_creation_date`, `blogger_is_active`, `blogger_updated_Date`, `blogger_end_date`) VALUES

(6, 'Sayee', 'Sayee', '1234', '2017-08-07', 1, NULL, NULL),
(7, 'Sameep', 'Sameep', 'pomi', '2017-08-12', 1, NULL, NULL),
(8, 'Aditya', 'Aditya', 'adi', '2017-08-23', 1, NULL, NULL),
(9, 'Santosh', 'Santosh', 'san', '2017-08-27', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_detail`
--

CREATE TABLE `blog_detail` (
  `blog_Detail_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `blog_detail_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_detail`
--

INSERT INTO `blog_detail` (`blog_Detail_id`, `blog_id`, `blog_detail_image`) VALUES
(22, 34, 'images/msd.jpg'),

(29, 39, 'images/smith.jpg'),
(25, 35, 'images/virat11.jpg'),
(26, 36, 'images/abd.jpg'),
(27, 37, 'images/aus.jpg'),
(28, 38, 'images/sachin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog_master`
--

CREATE TABLE `blog_master` (
  `blog_id` int(11) NOT NULL,
  `blogger_id` int(11) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_desc` varchar(10000) NOT NULL,
  `blog_category` varchar(100) NOT NULL,
  `blog_author` varchar(50) NOT NULL,
  `blog_is_active` tinyint(1) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_master`
--


INSERT INTO `blog_master` (`blog_id`, `blogger_id`, `blog_title`, `blog_desc`, `blog_category`, `blog_author`, `blog_is_active`, `creation_date`, `updated_date`) VALUES
(34, 9, 'MSD Born Leader', '  Mahendra Singh Dhonis arrival in Indian cricket and his subsequent rise has been a story of unprecedented success, punctuated by the occasional blip. Of all the players of the present generation, it is Dhoni who symbolizes the new India well. Aggressive without being brash, successful without being arrogant, and seemingly possessing a Midas touch, Dhoni is the perfect blend of a role-model and pin-up star. 

Dhoni announced himself on the international stage with an array of almost agricultural shots and a bat that he wielded like an axe. In his fifth match, he smashed 148 off a Pakistan attack that didnt know what had hit them. Six months later, he went one better, to score a brutal 183 not out against Sri Lanka in an innings that made Virender Sehwag look snail-like. That innings also saw him break Adam Gilchrists record for the highest score by a wicketkeeper in a One Day International. 

Dhonis arrival ended Indias long search for a wicket-keeper who could also bat, and he now has the most number of dismissals in ODIs and Tests by an Indian keeper. 

His growing stature and cool-headedness led to his appointment as Indias captain for the inaugural T20 WC, where Dhonis calm leadership steered India to victory. He then became the ODI captain after Rahul Dravid relinquished the post, and eventually, ascended to the full-time Test captaincy once Anil Kumble retired. 

Leadership saw him change his batting style, as he made a shift from being explosive to being more reliable. With an ODI average that has crossed 50, and a strike-rate that remains in the high 80s, the shift has worked for Dhoni. 

As a leader, his hallmarks have been his ability to not duck behind excuses and his ability to maintain his cool under situations of extreme pressure. Dhonis biggest triumph was winning the World Cup in 2011, which India won after 28 years owing to his exemplary batting display in the final and calm and methodical leadership', 'India', 'Santosh', 1, '2017-08-24', '2017-09-02'),
(35, 6, 'Virat', 'Virat Kohli is an Indian international cricketer, counted amongst the top sportsmen in India. Considered to be among the best batsmen in the present era, he also doubles up as an occasional right-arm medium pace bowler. He is known for his dependable and powerful batting style and has single-handedly won several matches for India. Virat became fascinated with cricket quite early on in his life and took to the bat when he was just three. His parents recognized his potential and had him enrolled at the West Delhi Cricket Academy when he was nine years old. He developed into a very talented player over the ensuing years and represented his city Delhi at various age-group levels and domestic cricket. His first major success came in 2008 when he captained India Under-19s to victory at the 2008 Under-19 World Cup. Soon he was selected to play for the Indian team and established himself as a valuable middle order player. After having gained a reputation as an “ODI specialist”, he proved his mettle in test cricket as well. Currently, he is the captain of the Indian team in Test cricket and vice-captain in limited overs formats.', 'India', 'Sayee', 1, '2017-08-24', '2017-08-24'),
(39, 7, 'Smith', 'Steve Smith once again proved why he is the No.1 Test batsman in the ICC Rankings ahead of India skipper Virat Kohli. On a pitch that raised eyebrows from the very first day of the opening Test between India and Australia in Pune, Smith produced a batting master class in the second innings, albeit with a touch of fortune, to smash his 18th Test century, 10th as captain and his first century in India. The Australian skippers stunning century helped the visitors post a 441-run target for India on Day 3.
 
Smith averages 73.37 after 21 Tests as captain of the Australian cricket team. He now only behind Don Bradman to have the second best batting average of any captain who has led their team at least 10 times', 'Australia', 'Sameep', 1, '2017-08-22', '2017-08-22'),
(36, 9, 'AB De Villiers ', 'A batsman of breathtaking chutzpah and enterprise. A cricketer with overflowing talent and the temperament to back it up. A fielder able to leap tall buildings and still come up with the catch - and who will happily move behind the stumps into the wicketkeepers spot if needed. A fine rugby player, golfer, and tennis player. AB de Villiers has emerged as one of South Africas greats.

De Villiers is a 360-degree batsman who can hit any ball, anywhere, against any bowler. Indeed, his range of inventive shots has grown as his career has unfolded. He has been ranked among the top Test and ODI batsmen in the world and has established a cult-like following in T20 cricket, where his performances in the IPL have earned him a legion of Indian fans.

De Villiers made his Test debut against England in 2004 (in the same match as Dale Steyn), when he was picked after just 16 first-class matches. He opened the batting in that match. He was later moved into the middle order and asked to keep wicket. That would become the story of his career. De Villiers has batted everywhere from No.1 to No.8 and performed well in most of those positions.', 'South Africa', 'Santosh', 1, '2016-07-27', '2016-07-27'),

(37, 6, 'Aussies 5th time champs', 'In the eleven ICC Cricket World Cups held so far, five different teams have won the tournament. Australia is the most successful World Cup team having won the tournament five times, and were runner up another two times.\r\n\r\n', 'Australia', 'Sayee', 1, '2017-08-26', '2017-08-26');
/*(38, 8, 'Sachin The God', 'Sachin Tendulkar was born April 24, 1973, in Bombay, India. Introduced to cricket at age 11, Tendulkar was just 16 when he became India&#039;s youngest Test cricketer. In 2005, he became the first cricketer to score 35 centuries (100 runs in a single inning) in Test play. In 2008, he reached another major milestone by surpassing Brian Lara&#039;s mark of 11,953 Test runs. Tendulkar took home the World Cup with his team in 2011, and wrapped up his record-breaking career in 2013.\r\n\r\nLargely considered cricket&#039;s greatest batsman, Sachin Tendulkar was born April 24, 1973, in Bombay, India, to a middle-class family, the youngest of four children. His father was a writer and a professor, while his mother worked for a life insurance company.\r\n\r\nNamed after his family&#039;s favorite music director, Sachin Dev Burman, Tendulkar wasn&#039;t a particularly gifted student, but he&#039;d always shown himself to be a standout athlete. He was 11 years old when he was given his first cricket bat, and his talent in the sport was immediately apparent. At the age of 14, he scored 326 out of a world-record stand of 664 in a school match. As his accomplishments grew, he became a sort of cult figure among Bombay schoolboys.\r\n\r\n', 'India', 'Aditya', 1, '2016-09-09', NULL);*/

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_name` varchar(255) NOT NULL,
  `creation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`document_name`, `creation_date`) VALUES
('Identity card.pdf', '2017-03-14'),
('bonafide.pdf', '2017-03-14'),
('Vatsal-Sodha_resume.pdf', '2017-03-14'),
('transcript.pdf', '2017-03-14'),
('cover-letter.doc', '2017-03-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogger_info`
--
ALTER TABLE `blogger_info`
  ADD PRIMARY KEY (`blogger_id`);

--
-- Indexes for table `blog_detail`
--
ALTER TABLE `blog_detail`
  ADD PRIMARY KEY (`blog_Detail_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `blog_master`
--
ALTER TABLE `blog_master`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `blogger_id` (`blogger_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogger_info`
--
ALTER TABLE `blogger_info`
  MODIFY `blogger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `blog_detail`
--
ALTER TABLE `blog_detail`
  MODIFY `blog_Detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `blog_master`
--
ALTER TABLE `blog_master`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_detail`
--
ALTER TABLE `blog_detail`
  ADD CONSTRAINT `blog_detail_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog_master` (`blog_id`);

--
-- Constraints for table `blog_master`
--
ALTER TABLE `blog_master`
  ADD CONSTRAINT `blog_master_ibfk_1` FOREIGN KEY (`blogger_id`) REFERENCES `blogger_info` (`blogger_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
