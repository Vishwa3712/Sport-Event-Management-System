
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE `entry` (
  `id` int(20) NOT NULL,
  `event` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `class` varchar(10) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `entry`
--

INSERT INTO `entry` (`id`, `event`, `type`, `username`, `email`, `class`, `contact`) VALUES
(1, 'hocky', 'indoor', 'vaibhav gaikwad', 'abc@gmail.com', 'd15', '8149316305'),
(2, 'cricket', 'indoor', 'vaibhav gaikwad', 'abc@gmail.com', 'd15', '1212121212'),
(3, 'cricket', 'indoor', 'kalpesh deepak juvekar', 'kalpesh.juvekar@ves.ac.in', 'd14', '8149316305'),
(4, 'cricket', 'indoor', 'aniket nighot', 'aniket@gmail.com', 'd13', '7854125478'),
(5, 'hocky', 'indoor', 'kalpesh deepak juvekar', 'kalpesh.juvekar@ves.ac.in', 'd13', '8149316305'),
(6, 'hocky', 'indoor', 'aniket nighot', 'aniket@gmail.com', 'd11', '4141414141'),
(7, 'tennis', 'outdoor', 'jai hinduja', 'jai@gmail.com', 'd13', '1212122121'),
(8, 'cricket', 'outdoor', 'jai hinduja', 'jai@gmail.com', 'd13', '1212122121'),
(9, 'football', 'outdoor', 'jai hinduja', 'jai@gmail.com', 'd13', '1212122121');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(10) NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `event`
--

INSERT INTO `event` (`id`, `event_name`, `type`, `description`, `start_date`, `end_date`, `time`, `status`) VALUES
(1, 'cricket', 'indoor', 'this is  cricket game', '2022-04-07', '2022-04-06', '00:02:00', 'ended'),
(3, 'hocky', 'indoor', 'this is a hocky game', '2022-05-10', '2022-05-11', '00:00:11', 'ongoing'),
(18, 'tennis', 'outoor', 'this is multiplayer game', '2022-05-15', '2022-05-16', '05:00:00', 'ongoing'),
(19, 'football', 'outoor', 'this is football game', '2022-05-20', '2022-05-21', '12:12:00', 'ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` int(10) NOT NULL,
  `class` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result1`
--

CREATE TABLE `result1` (
  `id` int(20) NOT NULL,
  `eventname` varchar(30) NOT NULL,
  `win1` varchar(30) NOT NULL,
  `w1class` varchar(10) NOT NULL,
  `win2` varchar(30) NOT NULL,
  `w2class` varchar(10) NOT NULL,
  `win3` varchar(30) NOT NULL,
  `w3class` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `result1`
--

INSERT INTO `result1` (`id`, `eventname`, `win1`, `w1class`, `win2`, `w2class`, `win3`, `w3class`) VALUES
(3, 'football', 'vaibhav gaikwad', 'd15', 'jai hinduja', 'd13', 'aniket', 'd14'),
(4, 'cricket', 'vaibhav gaikwad', 'd15', 'jai hinduja', 'd13', 'kalpesh deepak juvekar', 'd13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `result1`
--
ALTER TABLE `result1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entry`
--
ALTER TABLE `entry`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `result1`
--
ALTER TABLE `result1`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
