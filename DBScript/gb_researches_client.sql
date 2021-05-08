-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 07:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gb_researches_client`
--

-- --------------------------------------------------------

--
-- Table structure for table `researches`
--

CREATE TABLE `researches` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `catergory` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `file` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `researches`
--

INSERT INTO `researches` (`id`, `title`, `author`, `catergory`, `year`, `status`, `file`) VALUES
(14, 'client research', 'nimshan', 'Physics', 2021, 0, 0x255044462d312e330d0a25e2e3cfd30d0a0d0a312030206f626a0d0a3c3c0d0a2f54797065202f436174616c6f670d0a2f4f75746c696e65732032203020520d0a2f50616765732033203020520d0a3e3e0d0a656e646f626a0d0a0d0a322030206f626a0d0a3c3c0d0a2f54797065202f4f75746c696e65730d0a2f436f756e7420300d0a3e3e0d0a656e646f626a0d0a0d0a332030206f626a0d0a3c3c0d0a2f54797065202f50616765730d0a2f436f756e7420320d0a2f4b696473205b203420302052203620302052205d200d0a3e3e0d0a656e646f626a0d0a0d0a342030206f626a0d0a3c3c0d0a2f54797065202f506167650d0a2f506172656e742033203020520d0a2f5265736f7572636573203c3c0d0a2f466f6e74203c3c0d0a2f4631203920302052200d0a3e3e0d0a2f50726f635365742038203020520d0a3e3e0d0a2f4d65646961426f78205b302030203631322e30303030203739322e303030305d0d0a2f436f6e74656e74732035203020520d0a3e3e0d0a656e646f626a0d0a0d0a352030206f626a0d0a3c3c202f4c656e6774682031303734203e3e0d0a73747265616d0d0a32204a0d0a42540d0a30203020302072670d0a2f463120303032372054660d0a35372e33373530203732322e323830302054640d0a2820412053696d706c65205044462046696c65202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203638382e363038302054640d0a282054686973206973206120736d616c6c2064656d6f6e7374726174696f6e202e7064662066696c65202d202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203636342e373034302054640d0a28206a75737420666f722075736520696e20746865205669727475616c204d656368616e696373207475746f7269616c732e204d6f726520746578742e20416e64206d6f7265202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203635322e373532302054640d0a2820746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203632382e383438302054640d0a2820416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f7265202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203631362e383936302054640d0a2820746578742e20416e64206d6f726520746578742e20426f72696e672c207a7a7a7a7a2e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203630342e393434302054640d0a28206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203539322e393932302054640d0a2820416e64206d6f726520746578742e20416e64206d6f726520746578742e202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203536392e303838302054640d0a2820416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f7265202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203535372e313336302054640d0a2820746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e204576656e206d6f72652e20436f6e74696e756564206f6e20706167652032202e2e2e2920546a0d0a45540d0a656e6473747265616d0d0a656e646f626a0d0a0d0a362030206f626a0d0a3c3c0d0a2f54797065202f506167650d0a2f506172656e742033203020520d0a2f5265736f7572636573203c3c0d0a2f466f6e74203c3c0d0a2f4631203920302052200d0a3e3e0d0a2f50726f635365742038203020520d0a3e3e0d0a2f4d65646961426f78205b302030203631322e30303030203739322e303030305d0d0a2f436f6e74656e74732037203020520d0a3e3e0d0a656e646f626a0d0a0d0a372030206f626a0d0a3c3c202f4c656e67746820363736203e3e0d0a73747265616d0d0a32204a0d0a42540d0a30203020302072670d0a2f463120303032372054660d0a35372e33373530203732322e323830302054640d0a282053696d706c65205044462046696c652032202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203638382e363038302054640d0a28202e2e2e636f6e74696e7565642066726f6d207061676520312e20596574206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203637362e363536302054640d0a2820416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f7265202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203636342e373034302054640d0a2820746578742e204f682c20686f7720626f72696e6720747970696e6720746869732073747566662e20427574206e6f7420617320626f72696e67206173207761746368696e67202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203635322e373532302054640d0a28207061696e74206472792e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f726520746578742e202920546a0d0a45540d0a42540d0a2f463120303031302054660d0a36392e32353030203634302e383030302054640d0a2820426f72696e672e20204d6f72652c2061206c6974746c65206d6f726520746578742e2054686520656e642c20616e64206a7573742061732077656c6c2e202920546a0d0a45540d0a656e6473747265616d0d0a656e646f626a0d0a0d0a382030206f626a0d0a5b2f504446202f546578745d0d0a656e646f626a0d0a0d0a392030206f626a0d0a3c3c0d0a2f54797065202f466f6e740d0a2f53756274797065202f54797065310d0a2f4e616d65202f46310d0a2f42617365466f6e74202f48656c7665746963610d0a2f456e636f64696e67202f57696e416e7369456e636f64696e670d0a3e3e0d0a656e646f626a0d0a0d0a31302030206f626a0d0a3c3c0d0a2f43726561746f72202852617665205c28687474703a2f2f7777772e6e6576726f6e612e636f6d2f726176655c29290d0a2f50726f647563657220284e6576726f6e612044657369676e73290d0a2f4372656174696f6e446174652028443a3230303630333031303732383236290d0a3e3e0d0a656e646f626a0d0a0d0a787265660d0a302031310d0a3030303030303030303020363535333520660d0a30303030303030303139203030303030206e0d0a30303030303030303933203030303030206e0d0a30303030303030313437203030303030206e0d0a30303030303030323232203030303030206e0d0a30303030303030333930203030303030206e0d0a30303030303031353232203030303030206e0d0a30303030303031363930203030303030206e0d0a30303030303032343233203030303030206e0d0a30303030303032343536203030303030206e0d0a30303030303032353734203030303030206e0d0a0d0a747261696c65720d0a3c3c0d0a2f53697a652031310d0a2f526f6f742031203020520d0a2f496e666f203130203020520d0a3e3e0d0a0d0a7374617274787265660d0a323731340d0a2525454f460d0a6d6f726520746578742e20416e64206d6f726520746578742e20416e64206d6f7265202920546a0d0a45540d);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `researches`
--
ALTER TABLE `researches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `researches`
--
ALTER TABLE `researches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;