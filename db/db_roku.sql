-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2019 at 08:57 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access`
--

DROP TABLE IF EXISTS `tbl_access`;
CREATE TABLE IF NOT EXISTS `tbl_access` (
  `access_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `access_name` varchar(20) NOT NULL,
  PRIMARY KEY (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access`
--

INSERT INTO `tbl_access` (`access_id`, `access_name`) VALUES
(1, 'Parents'),
(2, 'Parents_Kids');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio`
--

DROP TABLE IF EXISTS `tbl_audio`;
CREATE TABLE IF NOT EXISTS `tbl_audio` (
  `audio_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `audio_title` varchar(125) DEFAULT NULL,
  `audio_year` varchar(5) DEFAULT NULL,
  `audio_storyline` text,
  `audio_artist` varchar(75) DEFAULT NULL,
  `audio_cover` varchar(75) DEFAULT 'temp_cover.jpg',
  `audio_src` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`audio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `audio_title`, `audio_year`, `audio_storyline`, `audio_artist`, `audio_cover`, `audio_src`) VALUES
(1, 'The Bee Song', '1950', 'In 1944, Arthur Askey starred in a comedy called Bees In Paradise, but this song is nothing to do with it. Written by Kenneth Blain, who accompanied Askey on the piano, it is typical of the former\'s silliness, describing a day in the life of a bee. It has also been used in the 21st Century in a TV advertisement, for Rowse Honey.', 'Arthur Askey', 'the_bee_song.jpg', 'the_bee_song.mp3'),
(2, 'Tutti Frutti', '1957', 'Little Richard wrote this song in 1955 when he was working as a dishwasher at a Greyhound bus station in his hometown of Macon, Georgia. Explaining how he came up with the song, he told Rolling Stone: \"I couldn\'t talk back to my boss man. He would bring all these pots back for me to wash, and one day I said, \'I\'ve got to do something to stop this man bringing back all these pots to me to wash,\'. And so I wrote \'Tutti Frutti\' in the kitchen.', 'Little Richard ', 'tutti.jpg', 'tutti.mp3'),
(3, 'Don\'t Be Cruel', '1956', 'This was released as a single with \"Hound Dog.\" It is the only single in history to have both sides reach #1 in the US. Joel Whitburn, who writes the definitive books on the subject, told the Forgotten Hits newsletter: \"As far as the two-sided Presley hit \'Hound Dog\" / \"Don\'t Be Cruel,\' I\'ve always tabulated that single 45 as two #1 hits. \'Hound Dog\' was the first title to chart and the first one to be listed as the lead #1 song.', 'Elvis Presley', 'dont_be_cruel.jpg', 'dont_be_cruel.mp3'),
(4, 'Peggy Sue', '1958', 'Holly wrote this about Peggy Sue Gerron, who was dating Holly\'s drummer with The Crickets, Jerry Allison. Holly was not involved with Peggy Sue, but liked the name for the song. Allison and Peggy Sue eventually got married, but divorced nine years later. At first, Holly was going to call this \"Cindy Lou.\" Jerry Allison asked if the name could be changed as a favor to him.', 'Buddy Holly', 'peggy.jpg', 'peggy.mp3'),
(5, 'Great Balls of Fire', '1957', 'Otis Blackwell, a prolific songwriter who wrote many hits for Elvis Presley, wrote this song with Jack Hammer, who at one point was a member of The Platters. Blackwell died in 2002 at age 70. The song became Lewis\' signature tune, a perfect fit for his incendiary style. \"A person tells at least a little bit about himself in any song he cuts,\" Lewis said years later.', 'Jerry Lee Lewis', 'balls_of_fire.jpg', 'balls_of_fire.mp3'),
(6, 'Respect', '1967', 'Otis Redding wrote this and originally recorded it in 1965, with his version hitting #35 in the US. Redding said of the song shortly before his death in 1967: \"That\'s one of my favorite songs because it has a better groove than any of my records. It says something, too: \'What you want, baby, you got it; what you need, baby, you got it; all I\'m asking for is a little respect when I come home.\'\"', 'Aretha Franklin', 'respect.jpg', 'respect.mp3'),
(7, 'The Jackson 5', '1969', 'This was the first Jackson 5 single released by Motown Records. It launched their career and went to #1 in the US, as did their next three releases: \"ABC,\" \"The Love You Save\" and \"I\'ll Be There.\"\r\nMichael Jackson sang lead. He was 11 years old and the youngest of the group. There was one younger Jackson brother named Randy, who replaced Jermaine in the group in 1977.', 'The Jackson 5', 'i_want_you_back.jpg', 'i_want_you_back.mp3'),
(8, 'Good Vibrations', '1966', 'Brian Wilson told Rolling Stone magazine: \"My mother used to tell me about vibrations. I didn\'t really understand too much of what she meant when I was a boy. It scared me, the word \'vibrations\' - to think that invisible feelings existed. She also told me about dogs that would bark at some people, but wouldn\'t bark at others, and so it came to pass that we talked about good vibrations.\"', 'The Beach Boys', 'good_vibrations.jpg', 'good_vibrations.mp3'),
(9, 'You Can\'t Hurry Love', '1966', 'This was written by the prolific songwriting team of Holland-Dozier-Holland. It was based on a gospel song entitled \"You Can\'t Hurry God,\" which was sung by Dorothy Love Coates and the Gospel Harmonettes, a gospel group based in Birmingham, Alabama. Eddie Holland came up with the title to Brian Holland\'s melody for this song. Lamont Dozier recalled in 1000 UK #1 Hits: \"We were trying to reconstruct \'Come See About Me\' and somehow it turned into \'You Can\'t Hurry Love.\'\"', 'The Supremes', 'hurry_love.jpg', 'hurry_love.mp3'),
(10, 'Satisfaction', '1965', 'On May 6, 1965, The Rolling Stones played to about 3,000 people at Jack Russell Stadium in Clearwater, Florida while on their first US tour. According to an article in the St. Petersburg Times, about 200 young fans got in an altercation with a line of police officers at the show, and The Stones made it through just four songs as chaos ensued. That night, Keith Richards woke up in his hotel room with the guitar riff and lyric \"Can\'t get no satisfaction\" in his head.', 'The Rolling Stones', 'satisfaction.jpg', 'satisfaction.mp3'),
(11, 'Kung Fu Fighting', '1974', 'Douglas was a session singer for Pye records when he wrote this. He got the idea for the song when he saw 2 kids in London doing some Kung Fu moves. They recorded \"Kung Fu\" in 10 minutes, figuring it was just a B-side, but the record label loved it and made it the A-side. After a slow start, it began selling and Biddu became the first Asian to produce a UK #1 hit. It went on to sell 10 million copies worldwide.', 'Carl Douglas', 'kung_fu.jpg', 'kung_fu.mp3'),
(12, 'Shake Shake Shake', '1976', 'This was the third of five US #1 hits for KC & The Sunshine Band. All their hits were written by their bass player/producer Rick Finch and their lead singer/keyboard player Harry Wayne Casey (KC). Finch told us that this song was directly inspired by dance moves they witnessed in clubs. He tells Songfacts: \"The Bump was big back then, and then every once in a while you\'d see someone break loose and shake their booty like Jell-O. We figured, okay, how do you write about this?.\"', 'KC Again', 'shake.jpg', 'shake.mp3'),
(13, 'Bohemian Rhapsody', '1975', 'Freddie Mercury wrote the lyrics, and there has been a lot of speculation as to their meaning. Many of the words appear in the Qu\'ran. \"Bismillah\" is one of these and it literally means \"In the name of Allah.\" The word \"Scaramouch\" means \"A stock character that appears as a boastful coward.\" \"Beelzebub\" is one of the many names given to The Devil. Mercury\'s parents were deeply involved in Zoroastrianism, and these Arabic words do have a meaning in that religion. ', 'Queen', 'bohemian.jpg', 'bohemian.mp3'),
(14, 'Stayin\' Alive', '1977', 'This plays over the opening credits of the 1977 movie Saturday Night Fever while John Travolta struts through the streets of New York City. The movie has come to represent the Disco era, and has made this the song most associated with Disco. The Bee Gees had been singing in a high-falsetto style since their 1975 hit \"Jive Talkin\',\" which was also on the soundtrack, but they were very popular as a vocal harmony group in the late \'60s and early \'70s.', 'Bee Gees', 'stayin_alive.jpg', 'stayin_alive.mp3'),
(15, 'Hotel California', '1976', 'Written by Don Felder, Glenn Frey and Don Henley, this song is about materialism and excess. California is used as the setting, but it could relate to anywhere in America. Don Henley in the London Daily Mail November 9, 2007 said: \"Some of the wilder interpretations of that song have been amazing. It was really about the excesses of American culture and certain girls we knew. But it was also about the uneasy balance between art and commerce.\"', 'Eagles', 'hotel_california.jpg', 'hotel_california.mp3'),
(16, 'Billie Jean', '1982', 'This song is about a girl who claimed Jackson was the father of her child. Jackson based it on a woman who used to stalk him, writing him letters about a son she thought was his. Jackson rarely spoke about this woman, but he had a very hard time dealing with this unwanted attention and became more reclusive as a result. The song was his way of expressing his feelings without addressing her directly.', 'Michael Jackson', 'billie_jean.jpg', 'billie_jean.mp3'),
(17, 'Don\'t Stop Believin\'', '1981', 'Journey\'s most enduring song, this track has a unique structure, which helps it stick in your mind. Where most songs have a chorus that\'s repeated several times, \"Don\'t Stop Believin\'\" brings in its chorus (and title) only at the end - about 3:20 into the song. The structure goes: instrumental, first verse, instrumental, second verse, first pre-chorus, instrumental, third verse, second pre-chorus, instrumental, and then finally the chorus until fade-out.', 'Journey', 'dont_stop.jpg', 'dont_stop.mp3'),
(18, 'Beat It', '1982', 'Eddie Van Halen played the guitar solo. He did it as a favor for Quincy Jones and was not paid, unless you count the two six-packs of beer brought into the studio. Eddie connected to Quincy through Ted Templeman, who was Van Halen\'s producer and friends with Jones. It was good timing because Eddie\'s bandmates were out of town, so they couldn\'t give him any static for taking on another project. He figured nobody would ever know it was him on the record.', 'Michael Jackson', 'beat_it.jpg', 'beat_it.mp3'),
(19, 'Sweet Child O\' Mine', '1987', 'The lyrics came from a poem Axl Rose was working on. He wrote the song about his girlfriend, Erin Everly, who is the daughter of Don Everly of the Everly Brothers. They married in 1990 but divorced a month later. Appetite For Destruction was Guns N\' Roses first album, released in July 1987. It took a long time to catch on, and three cracks at a hit single before it did.', 'Guns N\' Roses', 'sweet_child.jpg', 'sweet_child.mp3'),
(20, 'Livin\' on a Prayer', '1986', 'The follow up to Bon Jovi\'s #1 hit \"You Give Love A Bad Name,\" this song tells the story of Tommy and Gina, two kids working to make it on their own despite constant hardships. It struck a chord with America\'s youth, especially the ones from New Jersey. The characters in the song relate to the working class fans Bon Jovi played to. \"Tommy\" works on the docks, while \"Gina\" works in a diner.', 'Bon Jovi', 'livin_on.jpg', 'livin_on.mp3'),
(21, 'Baby One More Time', '1998', 'This was Britney\'s first hit, and it propelled her to stardom. The slick sound earned plenty of radio play, but it was the image of the schoolgirl Spears, just 16 when the song was released on November 3, 1998, that made her a sensation. MTV played the video, but it was the internet that gave her the most traction, as teenage girls and guys of all ages logged into their AOL accounts and typed some variation of \"Britney Spears\" into Alta Vista to see more of the starlet.', 'Britney Spears', 'baby_one_more.jpg', 'baby_one_more.mp3'),
(22, 'Wannabe', '1996', 'This was the Spice Girls first single. It was a huge hit, as their message of \"Girl Power\" and quirky personalities went along with the catchy beat and intrigued audiences around the world. The song was written by Richard Stannard and his musical collaborator Matt Rowe with assistance from the group members, who all received writers credits. Stannard had written the song \"Steam\" for a boy band called East 17, and was invited to write some songs for the Spice Girls.', 'Spice Girls', 'wannabe.jpg', 'wannabe.mp3'),
(23, 'MMMbop', '1997', 'In a Songfacts interview with Zac Hanson, the drummer explained: \"What that song talks about is, you\'ve got to hold on to the things that really matter. MMMBop represents a frame of time or the futility of life. Things are going to be gone, whether it\'s your age and your youth, or maybe the money you have, and all that\'s going to be left are the people you\'ve nurtured and have really built to be your backbone and your support system.\"', 'Hanson', 'mmmbop.jpg', 'mmmbop.mp3'),
(24, 'Smells Like Teen Spirit', '1991', 'Kurt Cobain wrote this song for Nirvana; it came together in a jam session when he played it for the band. He said: \"I was trying to write the ultimate pop song. I was basically trying to rip off The Pixies.\" Kathleen Hanna, the lead singer of the group Bikini Kill, gave Cobain the idea for the title when she spray painted \"Kurt Smells Like Teen Spirit\" on his bedroom wall after a night of drinking and spraying graffiti around the Seattle area.', 'Nirvana', 'teen_spirit.jpg', 'teen_spirit.mp3'),
(25, 'Wonderwall', '1995', 'The general consensus is that this song is about Noel Gallagher\'s then-girlfriend Meg Mathews, who is compared with a schoolboy\'s wall to which posters of footballers and Pop stars are attached. He told Select magazine at the time: \"It\'s about my girlfriend. She was out of work, and that, a bit down on her luck, so it\'s just saying, \'Cheer up and f---in get on with it.\'\" Noel later married then divorced Meg Mathews. ', 'Oasis', 'wonderwall.jpg', 'wonderwall.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aud_genre`
--

DROP TABLE IF EXISTS `tbl_aud_genre`;
CREATE TABLE IF NOT EXISTS `tbl_aud_genre` (
  `aud_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `audio_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`aud_genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_aud_genre`
--

INSERT INTO `tbl_aud_genre` (`aud_genre_id`, `audio_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(75) NOT NULL,
  PRIMARY KEY (`cast_id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(1, 'Bobby Driscoll'),
(2, 'Kathryn Beaumont'),
(3, 'Hans Conried'),
(4, 'Albert Sharpe'),
(5, 'Janet Munro'),
(6, 'Sean Connery'),
(7, 'Dorothy McGuire'),
(8, 'Fess Parker'),
(9, 'Jeff York'),
(10, 'Robert Newton'),
(11, 'Walter Fitzgerald'),
(12, 'Ed Wynn'),
(13, 'Sterling Holloway'),
(14, 'Rod Taylor'),
(15, 'J. Pat O\'Malley'),
(16, 'Betty Lou Gerson'),
(17, 'Dean Jones'),
(18, 'Michele Lee'),
(19, 'David Tomlinson'),
(20, 'John Mills'),
(21, 'James MacArthur'),
(22, 'Hayley Mills'),
(23, 'Jane Wyman'),
(24, 'Richard Egan'),
(25, 'Julie Andrews'),
(26, 'Dick Van Dyke'),
(27, 'Gene Wilder'),
(28, 'Jack Albertson'),
(29, 'Peter Ostrum'),
(30, 'Bob Newhart'),
(31, 'Eva Gabor'),
(32, 'Geraldine Page'),
(33, 'Jim Henson'),
(34, 'Frank Oz'),
(35, 'Jerry Nelson'),
(36, 'Eddie Albert'),
(37, 'Ray Milland'),
(38, 'Donald Pleasence'),
(39, 'Phil Harris'),
(40, 'Michael J. Fox'),
(41, 'Christopher Lloyd'),
(42, 'Lea Thompson'),
(43, 'Sean Astin'),
(44, 'Josh Brolin'),
(45, 'Jeff Cohen'),
(46, 'Cary Elwes'),
(47, 'Mandy Patinkin'),
(48, 'Chris Sarandon'),
(49, 'Barret Oliver'),
(50, 'Gerald McRaney'),
(51, 'Chris Eastman'),
(52, 'Dee Wallace'),
(53, 'Henry Thomas'),
(54, 'Peter Coyote'),
(55, 'Macaulay Culkin'),
(56, 'Joe Pesci'),
(57, 'Daniel Stern'),
(58, 'Rowan Atkinson'),
(59, 'Matthew Broderick'),
(60, 'Niketa Calame-Harris'),
(61, 'Michael Jordan'),
(62, 'Wayne Knight'),
(63, 'Theresa Randle'),
(64, 'Mara Wilson'),
(65, 'Danny DeVito'),
(66, 'Rhea Perlman'),
(67, 'Tom Hanks'),
(68, 'Rebecca Williams'),
(69, 'Sally Field'),
(70, 'Farley Granger'),
(71, 'Ruth Roman'),
(72, 'Robert Walker'),
(73, 'Charlton Heston'),
(74, 'Jack Hawkins'),
(75, 'Haya Harareet'),
(76, 'William Holden'),
(77, 'Gloria Swanson'),
(78, 'Erich von Stroheim'),
(79, 'James Dean'),
(80, 'Natalie Wood'),
(81, 'Sal Mineo'),
(82, 'Marlon Brando'),
(83, 'Karl Malden'),
(84, 'Lee J. Cobb'),
(85, 'Anthony Perkins'),
(86, 'Vera Miles'),
(87, 'John Gavin'),
(88, 'Peter Sellers'),
(89, 'George C. Scott'),
(90, 'Sterling Hayden'),
(91, 'Mia Farrow'),
(92, 'John Cassavetes'),
(93, 'Ruth Gordon'),
(94, 'Keir Dullea'),
(95, 'Gary Lockwood'),
(96, 'William Sylvester'),
(97, 'Peter O\'Toole'),
(98, 'Alec Guinness'),
(99, 'Anthony Quinn'),
(100, 'Ron O\'Neal'),
(101, 'Carl Lee'),
(102, 'Sheila Frazier'),
(103, 'Marilyn Burns'),
(104, 'Allen Danziger'),
(105, 'Paul A. Partain'),
(106, 'Roy Scheider'),
(107, 'Robert Shaw'),
(108, 'Richard Dreyfuss'),
(109, 'Diahnne Abbott'),
(110, 'Frank Adu'),
(111, 'Victor Argo'),
(112, 'Ellen Burstyn'),
(113, 'Max von Sydow'),
(114, 'Sylvester Stallone'),
(115, 'Brigitte Nielsen'),
(116, 'Reni Santoni'),
(117, 'Emilio Estevez'),
(118, 'Paul Gleason'),
(119, 'Anthony Michael Hall'),
(120, 'Arnold Schwarzenegger'),
(121, 'Michael Biehn'),
(122, 'Linda Hamilton'),
(123, 'Bruce Willis'),
(124, 'Bonnie Bedelia'),
(125, 'Reginald VelJohnson'),
(126, 'Danny Glover'),
(127, 'Adolph Caesar'),
(128, 'Whoopi Goldberg'),
(129, 'Alex Vincent'),
(130, 'Jenny Agutter'),
(131, 'Gerrit Graham'),
(132, 'Leonardo DiCaprio'),
(133, 'Kate Winslet'),
(134, 'Billy Zane'),
(135, 'Tim Roth'),
(136, 'Amanda Plummer'),
(137, 'Laura Lovelace'),
(138, 'Sam Neill'),
(139, 'Laura Dern'),
(140, 'Jeff Goldblum'),
(141, 'Tim Robbins'),
(142, 'Morgan Freeman'),
(143, 'Bob Gunton');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(20) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Matthew Barrie'),
(2, 'Robert Stevenson'),
(3, 'Byron Haskin'),
(4, 'Clyde Geronimi'),
(5, 'Wolfgang Reitherman'),
(6, 'Ken Annakin'),
(7, 'David Swift'),
(8, 'Mel Stuart'),
(9, 'James Frawley'),
(10, 'John Hough'),
(11, 'Robert Zemeckis'),
(12, 'Richard Donner'),
(13, 'Rob Reiner'),
(14, 'Wolfgang Petersen'),
(15, 'Steven Spielberg'),
(16, 'Chris Columbus'),
(17, 'Roger Allers'),
(18, 'Joe Pytka'),
(19, 'Danny DeVito'),
(20, 'Simon Wincer'),
(21, 'Alfred Hitchcock'),
(22, 'William Wyler'),
(23, 'Billy Wilder'),
(24, 'Nicholas Ray'),
(25, 'Elia Kazan'),
(26, 'Stanley Kubrick'),
(27, 'Roman Polanski'),
(28, 'David Lean'),
(29, 'Gordon Parks Jr.'),
(30, 'Tobe Hooper'),
(31, 'Martin Scorsese'),
(32, 'William Friedkin'),
(33, 'John Hughes'),
(34, 'James Cameron'),
(35, 'John McTiernan'),
(36, 'John Lafia'),
(37, 'Quentin Tarantino'),
(38, 'Frank Darabont');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, '50s'),
(2, '60s'),
(3, '70s'),
(4, '80s'),
(5, '90s');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_title` varchar(125) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_year` varchar(25) NOT NULL,
  `movies_trailer` varchar(75) NOT NULL,
  `movies_cover` varchar(75) NOT NULL,
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_title`, `movies_storyline`, `movies_runtime`, `movies_year`, `movies_trailer`, `movies_cover`, `movies_release`) VALUES
(1, 'Peter Pan', 'In this Disney animated film, Wendy and her two brothers are amazed when a magical boy named Peter Pan appears into their lives and take them to a place called Neverland.', '76', '1953', 'peter_pan.mp4', 'peter_pan.jpg', 'February 5, 1953'),
(2, 'Darby O\'Gill and the Little People', 'Darby O\'Gill gets fired and has his position taken by a younger man. Then, on his way home, Darby slips through a portal to the land of the little people.', '93', '1959', 'darby.mp4', 'darby.jpg', 'June 24, 1959'),
(3, 'Old Yeller', 'While Jim is off on a cattle drive, his wife, Katie, and their sons, are left behind on their Texas ranch. When a runaway dog named Old Yeller enters their lives.', '83', '1957', 'old_yeller.mp4', 'old_yeller.jpg', 'December 25, 1957'),
(4, 'Treasure Island', 'In this Disney adaptation of a novel, young Jim finds a map to a coveted treasure of a notorious pirate and sets sail on the Caribbean Sea aboard the Hispaniola.', '96', '1950', 'treasure_island.mp4', 'treasure_island.jpg', 'June 22, 1950'),
(5, 'Alice in Wonderland', 'When Alice falls down a rabbit hole, she enters a magical world. There she encounters an odd assortment of characters and a tyrannical Queen of Hearts.', '75', '1951', 'alice.mp4', 'alice.jpg', 'July 26, 1951'),
(6, 'One Hundred and One Dalmatians', 'Cruella De Vil hires the criminal Badun brothers to steal Dalmatians Pongo and Perdita\'s 15 little puppies - so she can have a fur coat.', '79', '1961', '101.mp4', '101.jpg', 'January 25, 1961'),
(7, 'The Love Bug', 'Race car driver Jim and his mechanic, Tennessee, find themselves in possession of a white Volkswagen Beetle that seems to have a mind and spirit of its own.', '108', '1968', 'the_love_bug.mp4', 'the_love_bug.jpg', 'December 24, 1968'),
(8, 'Swiss Family Robinson', 'In this family film, the Robinson clan -- mother (Dorothy McGuire), father (John Mills) and their three sons, Fritz, Ernst and Francis -- flee the reign of Napoleon to start afresh in New Guinea. When their ship gets damaged en route, the family takes refuge on a deserted island. The Robinsons learn to live in the wild, have various adventures and build an impressive house in a tree. However, while island life is full excitement, the question of whether to return to civilization looms.', '126', '1960', 'swiss_family.mp4', 'swiss_family.jpg', 'December 10, 1960'),
(9, 'Pollyanna', 'Young orphan Pollyanna believes life\'s problems can always be surmounted by a positive attitude, but when she moves in with her aunt her beliefs are challenged.', '134', '1960', 'pollyanna.mp4', 'pollyanna.jpg', 'May 19, 1960'),
(10, 'Mary Poppins', 'When Jane (Karen Dotrice) and Michael (Matthew Garber), the children of the wealthy and uptight Banks family, are faced with the prospect of a new nanny, they are pleasantly surprised by the arrival of the magical Mary Poppins (Julie Andrews). Embarking on a series of fantastical adventures with Mary and her Cockney performer friend, Bert (Dick Van Dyke), the siblings try to pass on some of their nanny\'s sunny attitude to their preoccupied parents (David Tomlinson, Glynis Johns).', '139', '1964', 'mary_poppins.mp4', 'mary_poppins.jpg', 'August 27, 1964'),
(11, 'Willy Wonka & the Chocolate Factory', 'A boy from a poor family dreams of finding one golden tickets hidden inside chocolate bar wrappers, but will he succeed and have all his dreams come true?', '99', '1971', 'willy_wonka.mp4', 'willy_wonka.jpg', 'June 30, 1971'),
(12, 'The Rescuers', 'Bernard and Bianca, two NYC mice, are members of an international team that comes to the aid of those in need. They set out to save the young orphan Penny.', '77', '1977', 'the_rescuers.mp4', 'the_rescuers.jpg', 'June 22, 1977'),
(13, 'The Muppet Movie', 'After Kermit the Frog decides to pursue a movie career, he starts his cross-country trip from Florida to California. Along the way, he gets into a big adventure.', '95', '1979', 'muppet.mp4', 'muppet.jpg', 'May 31, 1979'),
(14, 'Escape to Witch Mountain', 'Tony and Tia Malone are two orphaned siblings with extraordinary psychic powers. Their abilities attract the attention of a cruel millionaire that kidnaps them.', '97', '1975', 'escape_to_witch.mp4', 'escape_to_witch.jpg', 'March 21, 1975'),
(15, 'The Aristocats', 'When a retired opera singer leaves her inheritance to her cat and her kittens, the butler abandons them in the countryside in order to inherit the fortune.', '78', '1970', 'the_aristocats.mp4', 'the_aristocats.jpg', 'December 11, 1970'),
(16, 'Back to the Future', 'In this 1980s sci-fi classic, small-town California teen Marty McFly is thrown back into the \'50s when an experiment by his eccentric scientist friend goes awry.', '116', '1985', 'back_to_the_future.mp4', 'back_to_the_future.jpg', 'July 3, 1985'),
(17, 'The Goonies', 'Old-fashioned yarn about a band of adventurous kids who take on the might of a property developing company which plans to destroy their home to build a country club.', '122', '1985', 'the_goonies.mp4', 'the_goonies.jpg', 'June 7, 1985'),
(18, 'The Princess Bride', 'A fairy tale adventure about a young woman and her one true love. He must find her after a long separation and battle the evils to be reunited with each other.', '98', '1987', 'the_princess_bride.mp4', 'the_princess_bride.jpg', 'September 25, 1987'),
(19, 'The Neverending Story', 'Bastian ducks into a bookstore where he finds a a book called \"The Neverending Story\". He begins to wonder if Fantasia is real and needs his help to survive.', '94', '1984', 'the_neverending_story.mp4', 'the_neverending_story.jpg', 'April 6, 1984'),
(20, 'E.T.', 'After a gentle alien becomes stranded on Earth, he is discovered and befriended by a young boy named Elliott, who decide to keep its existence a secret and protect him.', '114', '1982', 'et.mp4', 'et.jpg', 'June 10, 1982'),
(21, 'Home Alone', '8-year-old Kevin is mistakenly forgotten by his parents, so he awakens to an empty house and assumes his wish to have no family has come true.', '103', '1990', 'home_alone.mp4', 'home_alone.jpg', 'November 16, 1990'),
(22, 'The Lion King', 'This Disney animated feature follows the adventures of the young lion Simba (Zoe Leader), the heir of his father, Mufasa (Ernie Sabella). Simba\'s wicked uncle, Scar (Rowan Atkinson), plots to usurp Mufasa\'s throne by luring father and son into a stampede of wildebeests. But Simba escapes, and only Mufasa is killed. Simba returns as an adult (Jeremy Irons) to take back his homeland from Scar with the help of his friends Timon (Jonathan Taylor Thomas) and Pumbaa (Cheech Marin).', '88', '1994', 'the_lion_king.mp4', 'the_lion_king.jpg', 'June 24, 1994'),
(23, 'Space Jam', 'Swackhammer, an evil alien theme park owner, needs a new attraction at his park, so he sends his gang to Earth to kidnap Bugs Bunny and the Looney Tunes.', '88', '1996', 'space_jam.mp4', 'space_jam.jpg', 'November 15, 1996'),
(24, 'Matilda', 'This film tells the story of Matilda, a gifted girl forced to put up with a crude, distant father, and an evil principal who is a terrifyingly strict bully.', '98', '1996', 'matilda.mp4', 'matilda.jpg', 'July 28, 1996'),
(25, 'Forrest Gump', 'Slow-witted Forrest has never thought of himself as disadvantaged, inspiring people with his optimism. But one person may be difficult to save - his childhood love.', '142', '1994', 'forrest_gump.mp4', 'forrest_gump.jpg', 'June 23, 1994 '),
(26, 'Strangers on a Train', 'Tennis star Guy Haines is enraged by his wife\'s refusal to finalize their divorce. He meets a stranger and unwittingly sets in motion a deadly chain of events.', '101', '1951', 'strangers_on_a_train.mp4', 'strangers_on_a_train.jpg', 'June 30, 1951'),
(27, 'Ben-hur', 'An aristocratic Jew is forced into slavery on a galley and compelled to witness the cruel persecution of his family, he survives, harboring dreams of vengeance.', '212', '1959', 'ben_hur.mp4', 'ben_hur.jpg', 'November 18, 1959'),
(28, 'Sunset Boulevard', 'An aging silent film queen refuses to accept that her stardom has ended. She hires a young screenwriter to help set up her movie comeback.', '110', '1950', 'sunset_boulevard.mp4', 'sunset_boulevard.jpg', 'August 10, 1950'),
(29, 'Rebel Without a Cause', 'After moving to a new town, troublemaking teen Jim Stark is supposed to have a clean slate, although being the new kid in town brings its own problems.', '111', '1955', 'rebel_without_a_cause.mp4', 'rebel_without_a_cause.jpg', 'October 26, 1955'),
(30, 'On the Waterfront', 'When a man is murdered before he can testify about a local mob boss, Terry Malloy, an ex up-and-coming boxer affected by him, decides to testify himself.', '108', '1954', 'on_the_waterfront.mp4', 'on_the_waterfront.jpg', 'June 22, 1954'),
(31, 'Psycho', 'Phoenix secretary Marion Crane stops for the night at the ramshackle Bates Motel and meets the polite but highly strung proprietor Norman Bates.', '109', '1960', 'psycho.mp4', 'psycho.jpg', 'June 16, 1960'),
(32, 'Dr. Strangelove', 'U.S. Air Force General Jack Ripper goes insane, and sends his bomber wing to destroy the U.S.S.R. He thinks that the communists are conspiring against America.', '94', '1964', 'dr_strangelove.mp4', 'dr_strangelove.jpg', 'January 29, 1964'),
(33, 'Rosemary’s Baby', 'After Rosemary Woodhouse becomes pregnant she becomes increasingly isolated, and the diabolical truth is revealed only after Rosemary gives birth.', '136', '1968', 'rosemarys_baby.mp4', 'rosemarys_baby.jpg', 'June 12, 1968'),
(34, '2001: A Space Odyssey', 'An imposing black structure provides a connection between the past and the future in this enigmatic adaptation of a short story by revered author Arthur C. Clarke.', '142', '1968', '2001.mp4', '2001.jpg', 'April 2, 1968'),
(35, 'Lawrence of Arabia', 'Due to his knowledge of the native Bedouin tribes, a British Lieutenant is sent to Arabia to find Prince Faisal and serve as a liaison between the Arabs and the British.', '222', '1963', 'lawrence_of_arabia.mp4', 'lawrence_of_arabia.jpg', 'January 30, 1963'),
(36, 'Super Fly', 'Priest, a New York City drug dealer, decides that he wants to get out of his trade, devising a scheme that will allow him make a big deal and then retire.', '93', '1972', 'super_fly.mp4', 'super_fly.jpg', 'August 4, 1972'),
(37, 'The Texas Chainsaw Massacre', 'When Sally hears that her grandfather\'s grave may have been vandalized, she and her paraplegic brother, Franklin, set out with their friends to investigate.', '84', '1974', 'the_texas_chainsaw_massacre.mp4', 'the_texas_chainsaw_massacre.jpg', 'October 1, 1974	'),
(38, 'Jaws', 'When a woman is killed by a shark, the police chief wants to close the beaches, but the mayor overrules him, fearing that the loss of tourists will cripple the town.', '124', '1975', 'jaws.mp4', 'jaws.jpg', 'June 20, 1975'),
(39, 'Taxi Driver', 'Suffering from insomnia, disturbed loner Travis takes a job as a NYC cabbie, growing increasingly detached from reality as he dreams of cleaning up the filthy city.', '113', '1976', 'taxi_driver.mp4', 'taxi_driver.jpg', 'February 8, 1976'),
(40, 'The Exorcist', 'When young Regan starts acting odd her worried mother seeks medical help, only to hit a dead end. A local priest, however, thinks the girl may be seized by the devil.', '122', '1973', 'the_exorcist.mp4', 'the_exorcist.jpg', 'December 26, 1973'),
(41, 'Die City-cobra', 'Los Angeles policeman Lt. Marion \"Cobra\" Cobretti finds himself at the center of a spate of murders carried out by a secret society called New Order.', '122', '1986', 'die_city_cobra.mp4', 'die_city_cobra.jpg', 'May 23, 1986'),
(42, 'The Color Purple', 'An epic tale spanning forty years in the life of Celie, an African-American woman living in the South who survives incredible abuse and bigotry.', '153', '1985', 'the_color_purple.mp4', 'the_color_purple.jpg', 'December 16, 1985'),
(43, 'The Breakfast Club', 'Five high school students from different walks of life endure a Saturday detention. Each has a chance to tell his or her story, making the others see them differently.', '97', '1985', 'the_breakfast_club.mp4', 'the_breakfast_club.jpg', 'February 7, 1985'),
(44, 'The Terminator', 'Disguised as a human, a cyborg assassin known as a Terminator travels from 2029 to 1984 to kill Sarah Connor. Kyle Reese is sent to protect Sarah at all costs.', '107', '1984', 'the_terminator.mp4', 'the_terminator.jpg', 'October 26, 1984'),
(45, 'Die Hard', 'NYC policeman John McClane is visiting his estranged wife and two daughters on Christmas Eve, but the festivities are interrupted by a group of terrorists.', '132', '1988', 'die_hard.mp4', 'die_hard.jpg', '20 July, 1988'),
(46, 'Child\'s Play 2', 'Two years after serial killer Charles Lee Ray inserted his soul into a Chucky doll, a toy company attempts to re-create the doll, bringing Ray back in the process.', '84', '1990', 'childs_play_2.mp4', 'childs_play_2.jpg', 'November 9, 1990'),
(47, 'Titanic', 'James Cameron\'s \"Titanic\" is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line.', '195', '1997', 'titanic.mp4', 'titanic.jpg', 'November 18, 1997'),
(48, 'Pulp Fiction', 'Vincent Vega and Jules Winnfield are hitmen with a love for philosophical discussions. In this crime movie, their story is connected with those of their bosses.', '154', '1994', 'pulp_fiction.mp4', 'pulp_fiction.jpg', 'October 14, 1994'),
(49, 'Jurassic Park', 'Paleontologists Alan Grant, Ellie Sattler and mathematician Ian Malcolm are among a select group chosen to tour a theme park populated by dinosaurs created from DNA.', '127', '1993', 'jurassic_park.mp4', 'jurassic_park.jpg', 'June 9, 1993'),
(50, 'The Shawshank Redemption', 'Andy Dufresne (Tim Robbins) is sentenced to two consecutive life terms in prison for the murders of his wife and her lover and is sentenced to a tough prison. However, only Andy knows he didn\'t commit the crimes. While there, he forms a friendship with Red (Morgan Freeman), experiences brutality of prison life, adapts, helps the warden, etc., all in 19 years.', '142', '1994', 'shawshank.mp4', 'shawshank.jpg', 'September 22, 1994');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_access`
--

DROP TABLE IF EXISTS `tbl_mov_access`;
CREATE TABLE IF NOT EXISTS `tbl_mov_access` (
  `mov_access_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `access_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_access`
--

INSERT INTO `tbl_mov_access` (`mov_access_id`, `movies_id`, `access_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 2),
(27, 27, 2),
(28, 28, 2),
(29, 29, 2),
(30, 30, 2),
(31, 31, 2),
(32, 32, 2),
(33, 33, 2),
(34, 34, 2),
(35, 35, 2),
(36, 36, 2),
(37, 37, 2),
(38, 38, 2),
(39, 39, 2),
(40, 40, 2),
(41, 41, 2),
(42, 42, 2),
(43, 43, 2),
(44, 44, 2),
(45, 45, 2),
(46, 46, 2),
(47, 47, 2),
(48, 48, 2),
(49, 49, 2),
(50, 50, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 4, 1),
(11, 4, 10),
(12, 4, 11),
(13, 5, 2),
(14, 5, 12),
(15, 5, 13),
(16, 6, 14),
(17, 6, 15),
(18, 6, 16),
(19, 7, 17),
(20, 7, 18),
(21, 7, 19),
(22, 8, 20),
(23, 8, 7),
(24, 8, 21),
(25, 9, 22),
(26, 9, 23),
(27, 9, 24),
(28, 10, 25),
(29, 10, 26),
(30, 10, 19),
(31, 11, 27),
(32, 11, 28),
(33, 11, 29),
(34, 12, 30),
(35, 12, 31),
(36, 12, 32),
(37, 13, 33),
(38, 13, 34),
(39, 13, 35),
(40, 14, 36),
(41, 14, 37),
(42, 14, 38),
(43, 15, 39),
(44, 15, 31),
(45, 15, 13),
(46, 16, 40),
(47, 16, 41),
(48, 16, 42),
(49, 17, 43),
(50, 17, 44),
(51, 17, 45),
(52, 18, 46),
(53, 18, 47),
(54, 18, 48),
(55, 19, 49),
(56, 19, 50),
(57, 19, 51),
(58, 20, 52),
(59, 20, 53),
(60, 20, 54),
(61, 21, 55),
(62, 21, 56),
(63, 21, 57),
(64, 22, 58),
(65, 22, 59),
(66, 22, 60),
(67, 23, 61),
(68, 23, 62),
(69, 23, 63),
(70, 24, 64),
(71, 24, 65),
(72, 24, 66),
(73, 25, 67),
(74, 25, 68),
(75, 25, 69),
(76, 26, 70),
(77, 26, 71),
(78, 26, 72),
(79, 27, 73),
(80, 27, 74),
(81, 27, 75),
(82, 28, 76),
(83, 28, 77),
(84, 28, 78),
(85, 29, 79),
(86, 29, 80),
(87, 29, 81),
(88, 30, 82),
(89, 30, 83),
(90, 30, 84),
(91, 31, 85),
(92, 31, 86),
(93, 31, 87),
(94, 32, 88),
(95, 32, 89),
(96, 32, 90),
(97, 33, 91),
(98, 33, 92),
(99, 33, 93),
(100, 34, 94),
(101, 34, 95),
(102, 34, 96),
(103, 35, 97),
(104, 35, 98),
(105, 35, 99),
(106, 36, 100),
(107, 36, 101),
(108, 36, 102),
(109, 37, 103),
(110, 37, 104),
(111, 37, 105),
(112, 38, 106),
(113, 38, 107),
(114, 38, 108),
(115, 39, 109),
(116, 39, 110),
(117, 39, 111),
(118, 40, 112),
(119, 40, 113),
(120, 40, 84),
(121, 41, 114),
(122, 41, 115),
(123, 41, 116),
(124, 42, 126),
(125, 42, 127),
(126, 42, 128),
(127, 43, 117),
(128, 43, 118),
(129, 43, 119),
(130, 44, 120),
(131, 44, 121),
(132, 44, 122),
(133, 45, 123),
(134, 45, 124),
(135, 45, 125);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 3),
(5, 5, 4),
(6, 6, 5),
(7, 7, 2),
(8, 8, 6),
(9, 9, 7),
(10, 10, 2),
(11, 11, 8),
(12, 12, 5),
(13, 13, 9),
(14, 14, 10),
(15, 15, 5),
(16, 16, 11),
(17, 17, 12),
(18, 18, 13),
(19, 19, 14),
(20, 20, 15),
(21, 21, 16),
(22, 22, 17),
(23, 23, 18),
(24, 24, 19),
(25, 25, 20),
(26, 26, 21),
(27, 27, 22),
(28, 28, 23),
(29, 29, 24),
(30, 30, 25),
(31, 31, 26),
(32, 32, 26),
(33, 33, 27),
(34, 34, 27),
(35, 35, 28),
(36, 36, 29),
(37, 37, 30),
(38, 38, 15),
(39, 39, 31),
(40, 40, 32),
(41, 41, 32),
(42, 42, 12),
(43, 43, 33),
(44, 44, 34),
(45, 45, 35),
(46, 46, 36),
(47, 47, 34),
(48, 48, 37),
(49, 49, 15),
(50, 50, 38);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(8) NOT NULL,
  `genre_id` mediumint(8) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 2),
(32, 32, 2),
(33, 33, 2),
(34, 34, 2),
(35, 35, 2),
(36, 36, 3),
(37, 37, 3),
(38, 38, 3),
(39, 39, 3),
(40, 40, 3),
(41, 41, 4),
(42, 42, 4),
(43, 43, 4),
(44, 44, 4),
(45, 45, 4),
(46, 46, 5),
(47, 47, 5),
(48, 48, 5),
(49, 49, 5),
(50, 50, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_rating`
--

DROP TABLE IF EXISTS `tbl_mov_rating`;
CREATE TABLE IF NOT EXISTS `tbl_mov_rating` (
  `mov_rating_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_id` mediumint(9) NOT NULL,
  `rating_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_rating`
--

INSERT INTO `tbl_mov_rating` (`mov_rating_id`, `movie_id`, `rating_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 2),
(22, 22, 2),
(23, 23, 2),
(24, 24, 2),
(25, 25, 2),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(37, 37, 1),
(38, 38, 1),
(39, 39, 1),
(40, 40, 1),
(41, 41, 1),
(42, 42, 1),
(43, 43, 1),
(44, 44, 1),
(45, 45, 1),
(46, 46, 1),
(47, 47, 1),
(48, 48, 1),
(49, 49, 1),
(50, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
CREATE TABLE IF NOT EXISTS `tbl_rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_type` varchar(10) NOT NULL,
  `rating_desc` text NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rating_id`, `rating_type`, `rating_desc`) VALUES
(1, 'Kids', 'Suited for all ages.'),
(2, 'Adults', 'Adults only, sensitive content.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_pass` varchar(25) NOT NULL,
  `user_email` varchar(125) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL,
  `user_admin` tinyint(4) NOT NULL DEFAULT '0',
  `user_access` tinyint(4) NOT NULL,
  `user_avatar` varchar(75) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_fname`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_admin`, `user_access`, `user_avatar`) VALUES
(1, 'admin', 'Admin', 'password', 'admin@gmail.com', '2019-03-13 06:24:35', '::1', 1, 2, 'parentUser.jpg'),
(2, 'adult', 'Adult', 'password', 'adult@gmail.com', '2019-03-15 07:29:29', '::1', 0, 2, 'kidUser.jpg'),
(3, 'kid', 'Kid', 'password', 'kid@gmail.com', '2019-03-15 07:29:29', '', 0, 1, 'kidUser.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
