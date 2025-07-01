-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 10:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `culture_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `asset_tag` varchar(100) NOT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `serial_number` varchar(100) NOT NULL,
  `location` varchar(150) DEFAULT NULL,
  `assigned_to` varchar(150) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Active',
  `category` varchar(100) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `monitor_model` varchar(100) DEFAULT NULL,
  `monitor_serial` varchar(100) DEFAULT NULL,
  `mouse_model` varchar(100) DEFAULT NULL,
  `mouse_serial` varchar(100) DEFAULT NULL,
  `keyboard_model` varchar(100) DEFAULT NULL,
  `keyboard_serial` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `asset_tag`, `manufacturer`, `model`, `serial_number`, `location`, `assigned_to`, `status`, `category`, `date_created`, `monitor_model`, `monitor_serial`, `mouse_model`, `mouse_serial`, `keyboard_model`, `keyboard_serial`) VALUES
(1, 'Enim est recusandae', 'Exercitation id temp', 'Amet voluptas aliqu', '578', 'Deserunt itaque libe', 'Temporibus dignissim', 'Retired', 'Computers', '2025-04-16 02:37:45', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Facilis non ut accus', 'Hic ullam sed volupt', 'Consequatur Aliquam', '586', 'Ipsum asperiores vol', 'Velit aut voluptas v', 'Disposed', 'Computers', '2025-04-16 02:49:39', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Sint velit fugiat s', 'Unde qui minus labor', 'Quam iure dolor ipsu', '83', 'Quas fuga Nostrud m', 'Cillum rem consectet', 'Retired', 'Switches', '2025-04-16 02:55:00', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Magnam perferendis l', 'Ut fugiat nostrud e', 'Dolores mollitia exc', '708', 'Doloremque sapiente ', 'Aliquip ex dolores u', 'In Repair', 'Printer', '2025-04-16 02:55:22', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Aut aliqua Pariatur', 'Ad qui enim in accus', 'Aperiam nulla simili', '265', 'Tempora suscipit dol', 'Laborum Accusamus i', 'Ad ut aliquam dolori', 'Computers', '2025-04-16 02:55:45', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Perspiciatis labori', 'Dolor ullam eos est', 'Voluptatem similique', '803', 'Quae assumenda eaque', 'Magni reprehenderit', 'Disposed', 'Printer', '2025-04-16 03:00:08', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Fugit omnis expedit', 'Adipisci consequatur', 'Sit porro veniam q', '191', 'Nemo minim id facere', 'Numquam proident al', 'Retired', 'Printer', '2025-04-16 03:00:34', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Aut ullamco dolorem ', 'Quaerat dignissimos ', 'Vel sed quis nobis d', '404', 'Incididunt veritatis', 'Minus quia laborum a', 'Retired', 'Switch', '2025-04-16 03:00:50', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Ratione tenetur amet', 'Incidunt numquam se', 'Ut odio dicta irure ', '454', 'Ipsum cumque quod do', 'Deleniti sint lorem ', 'Retired', 'Computers', '2025-04-16 03:01:17', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Qui temporibus atque', 'Est nisi dolor qui ', 'Illum voluptas earu', '728', 'Sunt impedit aut q', 'Voluptate consectetu', 'Active', 'Printer', '2025-04-16 03:01:46', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Omnis consequatur S', 'Nobis pariatur Quid', 'Voluptatibus aliqua', '248', 'Quae laboriosam ita', 'Sit dignissimos eius', 'In Repair', 'Printer', '2025-04-16 03:10:16', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'At est numquam dolor', 'Rerum incidunt obca', 'Vero error ea delect', '706', 'Fugiat laudantium p', 'Adipisicing dignissi', 'Retired', 'Switch', '2025-04-16 03:10:31', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Quia esse aut archi', 'Dolore aut nostrum i', 'Excepteur excepturi ', '73', 'Hic minim ut consequ', 'Laboriosam vero sit', 'Disposed', 'Computers', '2025-04-16 03:12:26', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Ex velit ea nobis ne', 'Aut nisi facere ut a', 'Non perferendis vero', '30', 'Fuga Dolor in quos ', 'Minus fuga In fugit', 'Active', 'Printer', '2025-04-16 03:12:46', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Veritatis consequunt', 'Est tempor minima in', 'Illum tenetur ullam', '645', 'Aut hic neque sunt ', 'Sed et sunt sequi n', 'In Repair', 'Computers', '2025-04-16 03:16:36', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Cillum recusandae N', 'Harum reprehenderit ', 'Blanditiis nisi occa', '633', 'Et sit sed itaque e', 'Asperiores architect', 'Active', 'Printers', '2025-04-16 03:17:08', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Veritatis illo adipi', 'Aperiam nemo dolor d', 'Voluptatem Aute ea ', '527', 'Qui non quis volupta', 'Eu repellendus Vero', 'Disposed', 'Switches', '2025-04-16 03:17:25', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Ex corrupti qui qui', 'Qui laborum optio v', 'Labore nostrum assum', '249', 'Vitae voluptates et ', 'Fugiat enim hic cor', 'Retired', 'Computers', '2025-04-16 03:31:42', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Nam amet minus elig', 'Do repellendus Qui ', 'Rem aute suscipit om', '416', 'Dolore similique inc', 'Maiores optio autem', 'Disposed', 'Switches', '2025-04-16 03:33:11', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Adipisicing et dolor', 'Provident rem ea pa', 'Placeat quisquam co', '605', 'Omnis dolorem facili', 'Accusantium adipisic', 'Quo vel soluta quasi', 'Computers', '2025-04-16 15:55:55', 'Quam minim aut est o', '442', 'Similique et sint de', '647', 'Necessitatibus nobis', '858'),
(22, 'Voluptate quis digni', 'Sed vitae incidunt ', 'Ex consequatur Magn', '980', 'Voluptatem sit inve', 'Sint et in excepteur', 'Retired', 'Computers', '2025-04-16 15:56:15', 'Nostrum ea soluta al', '102', 'Enim odio non asperi', '239', 'Modi nemo est harum ', '913'),
(23, 'Id consectetur sit q', 'Assumenda quia qui l', 'Ipsa et aute maiore', '818', 'Aut ab aut veniam e', 'Voluptatem quis sint', 'In Repair', 'Printers', '2025-04-16 16:01:45', 'Ea quia sit molestia', '747', 'Soluta perspiciatis', '595', 'Provident omnis nih', '651'),
(24, 'Non eu eiusmod nobis', 'Consequat Explicabo', 'Quis omnis dolor nem', '114', 'Officiis sed exceptu', 'Aut est iure debitis', 'In Repair', 'Switches', '2025-04-16 16:16:48', 'Neque sit quis et v', '780', 'Explicabo Beatae se', '209', 'Sunt cumque volupta', '881'),
(25, 'Irure est ad veniam', 'Sint non nisi dolore', 'Sed qui aliqua Non ', '211', 'Dolorem consectetur ', 'Tempora facilis reru', 'In Repair', 'Computers', '2025-04-16 16:35:53', 'Fugit ullam incidun', '663', 'Est inventore alias ', '893', 'Officia deserunt in ', '556'),
(26, 'Quia vero blanditiis', 'Ut sint recusandae', 'Anim voluptatem min', '461', 'Ut omnis laudantium', 'Exercitation ex qui ', 'Disposed', 'Computers', '2025-04-16 16:37:25', 'Sit ipsum doloremqu', '881', 'Ea ducimus aut aut ', '558', 'Nostrud culpa volup', '870'),
(27, 'A cupidatat proident', 'Nostrud et fugiat n', 'Beatae unde dolore t', '737', 'Laudantium assumend', 'Voluptatem aliquip ', 'Active', 'Computers', '2025-04-16 16:51:45', 'Error error quod qui', '433', 'Quam quia minus cill', '918', 'Veniam ullam odio c', '404'),
(28, 'Aliquam quod minima ', 'Velit deserunt maior', 'Ea quis quam sint ma', '882', 'Voluptatum laudantiu', 'Porro veniam ut dol', 'In Repair', 'Computers', '2025-05-09 18:09:14', 'Nobis ea doloremque ', '594', 'Quo rem quos debitis', '891', 'Aut nisi est volupta', '392'),
(29, 'Facilis quod nihil v', 'Dolores sint ea veni', 'Asperiores fugiat d', '782', 'Enim deserunt nulla ', 'Sequi non et amet a', 'Active', 'Computers', '2025-05-09 21:21:24', 'Fugiat molestias pe', '105', 'Quo fugit vero et i', '428', 'Doloribus officia ut', '338'),
(30, 'Cillum amet asperna', 'Dolorem anim anim qu', 'Consequatur Sit vo', '613', 'Vel eveniet minim s', 'Quis rerum quibusdam', 'Disposed', 'Printers', '2025-05-09 21:40:04', 'Eaque et amet susci', '660', 'Quisquam aute est la', '476', 'Deserunt et laborum', '517'),
(31, 'Deserunt rerum volup', 'Iusto dolor sed sed ', 'Deserunt reprehender', '897', 'Ut sit amet et per', 'In dicta possimus o', 'In Repair', 'Computers', '2025-06-11 18:19:56', 'Sapiente ullam moles', '283', 'Soluta numquam minim', '75', 'Magnam voluptas repr', '725'),
(32, 'Laboris ab duis elig', 'Quia distinctio Con', 'Beatae qui voluptate', '951', 'Ea enim esse nihil ', 'Molestiae hic aliqui', 'Active', 'Computers', '2025-06-12 20:19:02', 'Id laboris velit vi', '523', 'Aliquid eaque sint b', '854', 'Deleniti odio anim d', '658'),
(33, 'Nostrud aute ullamco', 'Ut omnis sunt molest', 'Sed nisi maiores del', '420', 'Cillum veniam offic', 'Nemo vero quasi minu', 'Retired', 'Computers', '2025-06-12 20:19:19', 'Possimus eligendi e', '335', 'Minima in similique ', '519', 'Aliquid aspernatur d', '553');

-- --------------------------------------------------------

--
-- Table structure for table `asset_categories`
--

CREATE TABLE `asset_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset_categories`
--

INSERT INTO `asset_categories` (`id`, `name`, `created_at`) VALUES
(1, 'Computers', '2025-04-15 23:17:56'),
(2, 'Printers', '2025-04-15 23:17:56'),
(3, 'Switches', '2025-04-15 23:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(57, 'Arts, Literature & Geography'),
(59, 'Community Development'),
(55, 'Cultural Heritage'),
(65, 'Education & Youth'),
(60, 'Education, Educational Reference & Youth'),
(61, 'Environmental & Sustainability'),
(53, 'Events & Programs'),
(58, 'Local History'),
(56, 'Manuals'),
(54, 'News & Bulletins'),
(66, 'Phamplets and Advertisements'),
(52, 'Policies & Governance'),
(62, 'Public Health & Wellness'),
(67, 'Quia sint qui omnis'),
(64, 'Religion and Sprituality'),
(63, 'Reports & Proceedings');

-- --------------------------------------------------------

--
-- Table structure for table `bookpreset`
--

CREATE TABLE `bookpreset` (
  `id` int(11) NOT NULL,
  `book_id` varchar(50) NOT NULL,
  `book_title` varchar(200) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_genre` varchar(100) NOT NULL,
  `publisher` varchar(150) NOT NULL,
  `location` varchar(100) NOT NULL,
  `year_published` varchar(10) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `status` varchar(50) NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookpreset`
--

INSERT INTO `bookpreset` (`id`, `book_id`, `book_title`, `book_author`, `book_genre`, `publisher`, `location`, `year_published`, `isbn`, `quantity`, `status`) VALUES
(3037, 'CL25001/1', 'Service Charter', 'GOK', 'Policies & Governance', '', '319', '', 'N/A', 1, 'Available'),
(3038, 'CL25001/2', 'Service Charter', 'GOK', 'Policies & Governance', '', '319', '', 'N/A', 1, 'Available'),
(3039, 'CL25001/3', 'Service Charter', 'GOK', 'Policies & Governance', '', '319', '', 'N/A', 1, 'Available'),
(3040, 'CL25001/4', 'Service Charter', 'GOK', 'Policies & Governance', '', '319', '', 'N/A', 1, 'Available'),
(3041, 'CL25002/1', 'Kenya Music and Cultural Festival 97th Edition', '', 'Events & Programs', '', '319', '2024', 'N/A', 1, 'Available'),
(3042, 'CL25002/2', 'Kenya Music and Cultural Festival 97th Edition', '', 'Events & Programs', '', '319', '2024', 'N/A', 1, 'Available'),
(3043, 'CL25002/3', 'Kenya Music and Cultural Festival 97th Edition', '', 'Events & Programs', '', '319', '2024', 'N/A', 1, 'Available'),
(3044, 'CL25002/4', 'Kenya Music and Cultural Festival 97th Edition', '', 'Events & Programs', '', '319', '2024', 'N/A', 1, 'Available'),
(3045, 'CL25002/5', 'Kenya Music and Cultural Festival 97th Edition', '', 'Events & Programs', '', '319', '2024', 'N/A', 1, 'Available'),
(3046, 'CL25002/6', 'Kenya Music and Cultural Festival 97th Edition', '', 'Events & Programs', '', '319', '2024', 'N/A', 1, 'Available'),
(3047, 'CL25002/7', 'Kenya Music and Cultural Festival 97th Edition', '', 'Events & Programs', '', '319', '2024', 'N/A', 1, 'Available'),
(3048, 'CL25003/1', 'Kenya Music and Cultural Festival 93rd Edition', '', 'Events & Programs', '', '319', '2019', 'N/A', 1, 'Available'),
(3049, 'CL25004/1', 'Inland Directory 2016/2017', '', 'Policies & Governance', '', '319', '2016', 'N/A', 1, 'Available'),
(3050, 'CL25005/1', 'Utamaduni Mkoani', '', 'News & Bulletins', '', '319', '2011', 'N/A', 1, 'Available'),
(3051, 'CL25005/2', 'Utamaduni Mkoani', '', 'News & Bulletins', '', '319', '2011', 'N/A', 1, 'Available'),
(3052, 'CL25006/1', 'Muslim Women in Mombasa, 1890-1975', 'Margaret Strobel', 'Cultural Heritage', 'Yale University Press', '319', '1979', 'N/A', 1, 'Available'),
(3053, 'CL25007/1', 'Data Projector', 'Sony Cororation', 'Manuals', 'EAC', '319', '2016', 'N/A', 1, 'Available'),
(3054, 'CL25008/1', 'Singing Freedom; Kenyan Poetry of Home and Exile', 'Gikuyu Journal', 'Arts, Literature & Geography', 'Keshamil Enterprises', '319', '2004', '978-9914-40-706-8', 1, 'Available'),
(3055, 'CL25009/1', 'Jambo Kenya; An Exhibition of Contemporary Kenyan Art in Cortona- Italy', '', 'Events & Programs', '', '319', '', 'N/A', 1, 'Available'),
(3056, 'CL25010/1', 'China\'s Traditional Kunqu opera', 'Zheng Lei', 'Local History', '', '305', '2005', 'N/A', 1, 'Available'),
(3057, 'CL25011/1', 'The \"Big Four\"', 'Ministry of Sports and Heritage', 'Community Development', '', '305', '2018', 'N/A', 1, 'Available'),
(3058, 'CL25012/1', 'Basic Texts of the 2003 Convention of the Intangible Cultural Heritage', 'UNESCO', 'Policies & Governance', 'UNESCO', '305', '2011', 'N/A', 1, 'Available'),
(3059, 'CL25013/1', 'Strategic Plan 2008-2012', 'Office of the President, Ministry of State Department for National Heritage and Culture', 'Policies & Governance', 'Government Printer', '305', '2008', 'N/A', 1, 'Available'),
(3060, 'CL25014/1', 'Chinese ABC', 'Beijing International Chinese College', 'Education, Educational Reference & Youth', 'BICC', '305', '', 'N/A', 1, 'Available'),
(3061, 'CL25015/1', 'Third Medium Term Plan 2018-2022', 'Gok', 'Policies & Governance', '', '303', '2018', 'N/A', 1, 'Available'),
(3062, 'CL25016/1', 'National Museums of Kenya Strategic plan 2020-2022', 'Gok', 'Policies & Governance', '', '303', '2020', 'N/A', 1, 'Available'),
(3063, 'CL25017/1', 'Conference of African Ministers of Culture', '', 'Policies & Governance', 'Government printer', '303', '2005', 'N/A', 1, 'Available'),
(3064, 'CL25018/1', 'The environnemental News; Indigenous Peoples Perspective', 'Indigenous Information Network', 'Environmental & Sustainability', 'Pann Printemps and Publishers', '303', '2007', '1605-2102-3/1', 1, 'Available'),
(3065, 'CL25018/2', 'The environnemental News; Indigenous Peoples Perspective', 'Indigenous Information Network', 'Environmental & Sustainability', 'Pann Printemps and Publishers', '303', '2007', '1605-2102-3/2', 1, 'Available'),
(3066, 'CL25019/1', 'Kutoka Neno Hadi Vitendo', 'Jill Carino', 'Environmental & Sustainability', 'Mradi wa Mfumo wa mabadiliko wa Watu Asili', '303', '2006', 'N/A', 1, 'Available'),
(3067, 'CL25019/2', 'Kutoka Neno Hadi Vitendo', 'Jill Carino', 'Environmental & Sustainability', 'Mradi wa Mfumo wa mabadiliko wa Watu Asili', '303', '2006', 'N/A', 1, 'Available'),
(3068, 'CL25019/3', 'Kutoka Neno Hadi Vitendo', 'Jill Carino', 'Environmental & Sustainability', 'Mradi wa Mfumo wa mabadiliko wa Watu Asili', '303', '2006', 'N/A', 1, 'Available'),
(3069, 'CL25020/1', 'Intellectual property and Genetic Resources,Traditional Knowledge and Traditional Cultural Expressions', 'World intellectual property organization', 'Policies & Governance', '', '303', '2012', 'N/A', 1, 'Available'),
(3070, 'CL25021/1', 'Ministry of Sports and Heritage handbook \"The Big Four\"', '', 'Policies & Governance', '', '303', '2018', 'N/A', 1, 'Available'),
(3071, 'CL25022/1', 'Bitter-Sweet 1', 'Dr. Sekundu Morgan', 'Public Health & Wellness', 'Morsel Publishers International', '303', '2005', '978-9966-9917-8-2', 1, 'Available'),
(3072, 'CL25023/1', 'Service charter for the Office of the Vice President and Ministry of state for National Heritage and Culture', '', 'Policies & Governance', 'Government printer', '303', '2008', 'N/A', 1, 'Available'),
(3073, 'CL25024/1', 'Kenya Music and Cultural Festival', '', 'Cultural Heritage', 'Government printer', '303', '2016', 'N/A', 1, 'Available'),
(3074, 'CL25025/1', 'Our Heroes our Heritage we Celebrate', 'ministry of sports,culture and the Arts', 'Cultural Heritage', 'Government printer', '303', '2017', 'N/A', 1, 'Available'),
(3075, 'CL25026/1', 'Nomadisme News', 'Indigenous Network', 'Environmental & Sustainability', 'Pann Printemps and Publishers', '303', '2007', '1605-2102', 1, 'Available'),
(3076, 'CL25027/1', 'Knee-Deep in self-Destruction', 'Dr Sekundu Morgan', 'Public Health & Wellness', 'Morsel Publishers International', '303', '2016', '978-9966-1966-9-9', 1, 'Available'),
(3077, 'CL25028/1', 'Culture and Development in Africa; Building on Positive Cultural Practices', 'N/A', 'Cultural Heritage', '', '303', '2005', 'N/A', 1, 'Available'),
(3078, 'CL25029/1', 'The Big Conservation Lie', 'John Mbaria &Mordecai Ogada', 'Environmental & Sustainability', 'Lens&Pens Publishing LLC', '303', '2017', '11546463:36:00', 1, 'Available'),
(3079, 'CL25030/1', 'Diabetes', 'Dr.Sekundu Morgan', 'Public Health & Wellness', 'Morsel Publishers International', '303', '2016', '978-9966-1966-9-9', 1, 'Available'),
(3080, 'CL25031/1', 'Rasimu ya Mkataba wa Uanzishaji wa Jumuiya ya Afrika Mashariki', 'Sekretariati ya Time ya Ushirikiano wa Afrika Mashariki', 'Community Development', 'Sekretariati ya Time ya Ushirikiano wa Afrika Mashariki', '303', '', 'N/A', 1, 'Available'),
(3081, 'CL25031/1', 'Lutirichi Idiom', 'Benson Alumasa', 'Cultural Heritage', 'All Missionclear Agents', '319', '1996', 'N/A', 1, 'Available'),
(3082, 'CL25032/2', 'Lutirichi Idiom', 'Benson Alumasa', 'Cultural Heritage', 'All Missionclear Agents', '319', '1996', 'N/A', 1, 'Available'),
(3083, 'CL25032/3', 'Lutirichi Idiom', 'Benson Alumasa', 'Cultural Heritage', 'All Missionclear Agents', '319', '1996', 'N/A', 1, 'Available'),
(3084, 'CL25032/4', 'Lutirichi Idiom', 'Benson Alumasa', 'Cultural Heritage', 'All Missionclear Agents', '319', '1996', 'N/A', 1, 'Available'),
(3085, 'CL25033/1', 'Kenya Music and Cultural Festival;Syllabus 2024', '', 'Events & Programs', 'Government printer', '319', '2024', 'N/A', 1, 'Available'),
(3086, 'CL25034/1', 'KISA AN ANTHOLOGY of African Short Stories', 'Onchoka Ongoro', 'Arts, Literature & Geography', 'Literary Editors Africa', '319', '2024', '978-9914-9792-7-5', 1, 'Available'),
(3087, 'CL25035/1', 'Striving for More Robust Drivers: A historic Leap-Forward to High-Quality Development', 'Chi Filin', 'Reports & Proceedings', 'China International Press', '319', '2018', '978-7-5085-4049-8', 1, 'Available'),
(3088, 'CL25036/1', 'Under the mango tree', 'Vic Munala', 'Education, Educational Reference & Youth', '', '319', '2024', '978-9914-764-22-2', 1, 'Available'),
(3089, 'CL25037/1', 'The Great Escape', 'Andrew Maina', 'Community Development', 'Solano Publications', '319', '2020', '978 9966 955 93 7', 1, 'Available'),
(3090, 'CL25038/1', 'They Shall be Chastised', 'Muthoni Likimani', 'Arts, Literature & Geography', 'KLB', '319', '1974', '9966-44-094-1', 1, 'Available'),
(3091, 'CL25039/1', 'Bridging the Gap with Boda Boda', 'Natasha Mwarwa', 'Education, Educational Reference & Youth', 'M.E.N', '319', '2024', '978-9966-020-93-2', 1, 'Available'),
(3092, 'CL25040/1', 'Mbali na Nyumbani', 'Adam Shafi', 'Arts, Literature & Geography', 'Longhorn', '319', '2013', '978 9966 36 454 4', 1, 'Available'),
(3093, 'CL25041/1', 'Njia ya peponi', 'Huseyn Hilmi Isik', 'Arts, Literature & Geography', '', '319', '2022', 'N/A', 1, 'Available'),
(3094, 'CL25042/1', 'Masimulizi Kamilifu ya Alfu Lela U Lela', 'Msafiri Hassan Adam', 'Arts, Literature & Geography', 'Mkuki na Nyota', '319', '2015', '978-9987-753-07-9', 1, 'Available'),
(3095, 'CL25043/1', 'Kuwala', 'ACALAN Journal', 'Arts, Literature & Geography', 'ACALAN', '319', '2015', '2307-8294', 1, 'Available'),
(3096, 'CL25044/1', 'Kiswahili, Utangamano na Maendeleo Endelevu Afrika Mashariki', '', 'Cultural Heritage', 'Kakama', '319', '2018', '978-9976-5-1653-1', 1, 'Available'),
(3097, 'CL25045/1', 'Capacity Assessment of the development and Use of Kiswahili in the EAC', 'EAKC', 'Arts, Literature & Geography', 'KAKAMA', '319', '2019', '978-9976-5-1656-2', 1, 'Available'),
(3098, 'CL25046/1', 'Dunia Mashaka Makuu', 'Lamini H. Omar', 'Local History', 'Nyota', '319', '2020', '978-9966-132-57-4', 1, 'Available'),
(3099, 'CL25047/1', 'Alfu Lela U Lela kitabu cha 4', 'Msafiri Hassan Adam', 'Local History', 'Nyota', '319', '2007', '978-9987-449-29-3', 1, 'Available'),
(3100, 'CL25048/1', 'Alfu Lela U Lela )kitabu cha 6', 'Msafiri Hassan Adam', 'Local History', 'Nyota', '319', '2008', '978-9987-449-49-1', 1, 'Available'),
(3101, 'CL25049/1', 'Alfu Lela U Lela )kitabu cha 7', 'Mfasiri Hassan Adam', 'Local History', 'Nyota', '319', '2010', '978-9987-08-015-1', 1, 'Available'),
(3102, 'CL25050/1', 'Alfu Lela U Lela )kitabu cha 8', 'Mfasiri Hassan Adam', 'Local History', 'Nyota', '319', '2010', '978-9987-08-014-4', 1, 'Available'),
(3103, 'CL25051/1', 'Mateka Wa Mwisho Wakombolewe', 'Gideon Nyakiongora', 'Arts, Literature & Geography', 'Wisdom', '319', '2012', '9966-7441-3-5', 1, 'Available'),
(3104, 'CL25052/1', 'Kweli za Maisha', 'Unicef', 'Public Health & Wellness', 'Color creations', '319', '', 'N/A', 1, 'Available'),
(3105, 'CL25053/1', 'Kiswahili na Elimu Nchini Kenya', 'Kimani Njogu', 'Public Health & Wellness', 'Kolbe press', '319', '2007', '9966 9743 9 3', 1, 'Available'),
(3106, 'CL25054/1', 'Kena ni Guciarwo', 'Njuguna Wa Kimunya', 'Arts, Literature & Geography', '', '319', '2014', '9966-9824-1-4', 1, 'Available'),
(3107, 'CL25055/1', 'Miaka hamsini ya Kiswahili Nchini Kenya', 'Inyani Simala,Leonard Chacha na Miriam Osore', 'Cultural Heritage', 'Twaweza communications', '319', '2014', '978 9966 028 48 8', 1, 'Available'),
(3108, 'CL25056/1', 'Remembering the Future', 'Christopher Conte', 'Community Development', 'ibua', '319', '2023', '979-8-218-19322-5', 1, 'Available'),
(3109, 'CL25057/1', 'The Magical Bird and the Millet Farmer', 'Muthoni Likimani', 'Arts, Literature & Geography', 'Noni\'s Publicity', '319', '2008', '9966-9672-4-9', 1, 'Available'),
(3110, 'CL25058/1', 'Kithingichi My Father\'s Bull', 'Njue Kamunde', 'Arts, Literature & Geography', 'East African Educational Publishers Ltd', '319', '2005', '978-9966-25-419-1', 1, 'Available'),
(3111, 'CL25059/1', 'Swahili Poetry Anthology Volume 1; Selected Poems of Ahmed Sheikh Nabhany', 'Ahmed Sheikh Nabhany, Ibrahim Noor Shariff and Jan Feidel', 'Arts, Literature & Geography', 'Horizon Art', '319', '2020', '978-99969-4-640-0', 1, 'Available'),
(3112, 'CL25060/1', 'The peace Council KIAMA: School\'s Peace Magazine', 'Agikuyu Peace Museum', 'Manuals', 'Agikuyu Peace Museum', '319', '2000', 'N/A', 1, 'Available'),
(3113, 'CL25061/1', 'A Draft Inventory of the Intangible Cultural Heritages of The Communities of Western Province of kenya', 'GOK', 'Cultural Heritage', '', '319', '2008', 'N/A', 1, 'Available'),
(3114, 'CL25062/1', 'Food Strategies for Tomorrow', 'Susan George', 'Environmental & Sustainability', 'Hunger Project Papers', '319', '1987', '073-6416', 1, 'Available'),
(3115, 'CL25063/1', 'Recovering Traditional Foods to Heal the People; Food is Medicine', 'Winona LaDuke and Sarah Alexander', 'Public Health & Wellness', 'Honor the Earth/White Earth Land Recovert Project', '319', '', 'N/A', 1, 'Available'),
(3116, 'CL25063/2', 'Recovering Traditional Foods to Heal the People; Food is Medicine', 'Winona LaDuke and Sarah Alexander', 'Public Health & Wellness', 'Honor the Earth/White Earth Land Recovert Project', '319', '', 'N/A', 1, 'Available'),
(3117, 'CL25064/1', 'Alfu Lela U Lela au Siku Elfu Moja na MojaKitabu cha 5', '', 'Arts, Literature & Geography', 'Mkuki na Nyota', '319', '2007', '978-9987-449-48-4', 1, 'Available'),
(3118, 'CL25065/1', 'Shamba La Wanyama', 'George Orwell', 'Arts, Literature & Geography', 'Phoenix', '319', '', '9966-47-248-7', 1, 'Available'),
(3119, 'CL25066/1', 'Arise & Shine; A practical guide on how to achive your God-given dreams', 'Wenday Kamau', 'Religion and Sprituality', 'Self-Published', '319', '2021', '978-9914-40-486-9', 1, 'Available'),
(3120, 'CL25067/1', 'Mau Mau Detainee', 'Josiah Mwangi Kariuki', 'Local History', 'Transafrica Press Ltd', '319', '2009', '9966-940-251', 1, 'Available'),
(3121, 'CL25068/1', 'Successful Time Management; the challege for the Modern Manager', 'Mutea Rukwaru', 'Arts, Literature & Geography', 'EUREKA Publishers', '319', '2006', '9966-9802-5-3', 1, 'Available'),
(3122, 'CL25069/1', 'Selected Recipes on Traditional Foods in Kenya', 'Ministry of Agriculture', 'Environmental & Sustainability', 'Agricultural Information resouce centre', '319', '2005', 'N/A', 1, 'Available'),
(3123, 'CL25070/1', 'Deciding your Destiny', 'Pepe Minambo', 'Education, Educational Reference & Youth', 'Motivator Africa', '319', '2013', 'N/A', 1, 'Available'),
(3124, 'CL25071/1', 'Journeys of Peace; Heritage and Peace Building in Kenya', 'Swidish Institute', 'Cultural Heritage', 'SIDA', '319', '2014', 'N/A', 1, 'Available'),
(3125, 'CL25072/1', 'Mwananchi na Demokrasia', 'Godfrey S. Mse', 'Policies & Governance', 'Phoenix', '319', '1994', '9966-47-214-2', 1, 'Available'),
(3126, 'CL25072/2', 'Mwananchi na Demokrasia', 'Godfrey S. Mse', 'Policies & Governance', 'Phoenix', '319', '1994', '9966-47-214-2', 1, 'Available'),
(3127, 'CL25072/3', 'Mwananchi na Demokrasia', 'Godfrey S. Mse', 'Policies & Governance', 'Phoenix', '319', '1994', '9966-47-214-2', 1, 'Available'),
(3128, 'CL25072/4', 'Mwananchi na Demokrasia', 'Godfrey S. Mse', 'Policies & Governance', 'Phoenix', '319', '1994', '9966-47-214-2', 1, 'Available'),
(3129, 'CL25073/1', 'Chronology of church history', 'Will Burnham', 'Events & Programs', 'Evangel house', '319', '1975', 'N/A', 1, 'Available'),
(3130, 'CL25074/1', 'Uchagusi na Sisi', 'Oketch Owiti', 'Policies & Governance', 'LEAP-KAEA', '319', '1992', 'N/A', 1, 'Available'),
(3131, 'CL25074/2', 'Uchagusi na Sisi', 'Oketch Owiti', 'Policies & Governance', 'LEAP-KAEA', '319', '1992', 'N/A', 1, 'Available'),
(3132, 'CL25075/1', 'Thematic Issues in African Philosophy', 'James N Mburu', 'Cultural Heritage', 'Acacia Publishers', '319', '2003', '9966-917-33-0', 1, 'Available'),
(3133, 'CL25075/2', 'Thematic Issues in African Philosophy', 'James N Mburu', 'Cultural Heritage', 'Acacia Publishers', '319', '2003', '9966-917-33-0', 1, 'Available'),
(3134, 'CL25075/3', 'Thematic Issues in African Philosophy', 'James N Mburu', 'Cultural Heritage', 'Acacia Publishers', '319', '2003', '9966-917-33-0', 1, 'Available'),
(3135, 'CL25075/4', 'Thematic Issues in African Philosophy', 'James N Mburu', 'Cultural Heritage', 'Acacia Publishers', '319', '2003', '9966-917-33-0', 1, 'Available'),
(3136, 'CL25090/1', 'Lifelong Education and University Resouces', 'Unesco', 'Education, Educational Reference & Youth', 'Unesco', '319', '1978', '92-3-101397-1', 1, 'Available'),
(3137, 'CL25091/1', 'Anavolegwa Yiita Embongo', 'Musatsa na Herman', 'Local History', '', '319', '2004', 'N/A', 1, 'Available'),
(3138, 'CL25092/1', 'Musatsa Mmolomi', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3139, 'CL25093/1', 'Itsidaywa Tsiviiri Munyambevaa Ndala Livoola Ki?', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3140, 'CL25093/2', 'Itsidaywa Tsiviiri Munyambevaa Ndala Livoola Ki?', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3141, 'CL25093/3', 'Itsidaywa Tsiviiri Munyambevaa Ndala Livoola Ki?', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3142, 'CL25093/4', 'Itsidaywa Tsiviiri Munyambevaa Ndala Livoola Ki?', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3143, 'CL25093/5', 'Itsidaywa Tsiviiri Munyambevaa Ndala Livoola Ki?', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3144, 'CL25094/1', 'Mazingira', 'Babusa H. Omar', 'Environmental & Sustainability', 'Phoenix', '319', '1995', '9966-47-218-5', 1, 'Available'),
(3145, 'CL25094/2', 'Mazingira', 'Babusa H. Omar', 'Environmental & Sustainability', 'Phoenix', '319', '1995', '9966-47-218-5', 1, 'Available'),
(3146, 'CL25094/3', 'Mazingira', 'Babusa H. Omar', 'Environmental & Sustainability', 'Phoenix', '319', '1995', '9966-47-218-5', 1, 'Available'),
(3147, 'CL25095/1', 'The convention on the Elimination of All Forms of Discrimination against Women', 'Commomwealth Secretariat', 'Community Development', '', '319', '', 'N/A', 1, 'Available'),
(3148, 'CL25096/1', 'Uvwiko vwa Avandu Valogooli ne vikevo', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3149, 'CL25096/2', 'Uvwiko vwa Avandu Valogooli ne vikevo', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3150, 'CL25096/3', 'Uvwiko vwa Avandu Valogooli ne vikevo', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3151, 'CL25097/1', 'Manual on Selective Placement of the Disabled', 'International labour Office', 'Manuals', 'International Labour Office Geneva', '319', '', 'N/A', 1, 'Available'),
(3152, 'CL25098/1', 'Avalogooli', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3153, 'CL25098/2', 'Avalogooli', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3154, 'CL25099/1', 'Umukutsu Imuyanze', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3155, 'CL25099/2', 'Umukutsu Imuyanze', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3156, 'CL25099/3', 'Umukutsu Imuyanze', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3157, 'CL25099/4', 'Umukutsu Imuyanze', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3158, 'CL25099/5', 'Umukutsu Imuyanze', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3159, 'CL25100/1', 'Planning Education in relation to Rural Development', 'G.M Coverdale', 'Community Development', 'UNESCO', '319', '1974', '92-803-1062-3', 1, 'Available'),
(3160, 'CL25101/1', 'Kyambitanyia kye liuva no Mweli na Musatsa No Mukali', 'Herman Mulinya', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3161, 'CL25101/2', 'Kyambitanyia kye liuva no Mweli na Musatsa No Mukali', 'Herman Mulinya', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3162, 'CL25101/3', 'Kyambitanyia kye liuva no Mweli na Musatsa No Mukali', 'Herman Mulinya', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3163, 'CL25102/1', 'Elimu Viwandani; Mwongozo kwa Ajili ya Familia na Maisha Bora kwa Wafanyikazi Viwandani Barani Afrika', 'Adam N. Simbeye', 'Community Development', 'Phoenix', '319', '1987', 'N/A', 1, 'Available'),
(3164, 'CL25103/1', 'Uwalega Umukali Yalega Enzogu', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3165, 'CL25104/1', 'Uvwiko vwa Avandu Valagooli ne Vikevo', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3166, 'CL25104/2', 'Uvwiko vwa Avandu Valagooli ne Vikevo', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3167, 'CL25105/1', 'Mundu Mwimbi Siagera Lilungu MBA Luganu Yilu Luvoola Ki', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3168, 'CL25105/2', 'Mundu Mwimbi Siagera Lilungu MBA Luganu Yilu Luvoola Ki', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3169, 'CL25105/3', 'Mundu Mwimbi Siagera Lilungu MBA Luganu Yilu Luvoola Ki', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3170, 'CL25105/4', 'Mundu Mwimbi Siagera Lilungu MBA Luganu Yilu Luvoola Ki', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3171, 'CL25106/1', 'Women of kenya;Review and Evaluation of Progress', 'GOK', 'Community Development', '', '319', '1985', 'N/A', 1, 'Available'),
(3172, 'CL25107/1', 'The convention on the Elimination of All Forms of Discrimination against Women', 'Commomwealth Secretariat', 'Community Development', '', '319', '', 'N/A', 1, 'Available'),
(3173, 'CL25108/1', 'Uwalega Umukali Yalega Enzogu', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3174, 'CL25109/1', 'Iliuva no Musatsa Mukali no Mweli', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3175, 'CL25109/2', 'Iliuva no Musatsa Mukali no Mweli', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3176, 'CL25109/3', 'Iliuva no Musatsa Mukali no Mweli', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3177, 'CL25109/4', 'Iliuva no Musatsa Mukali no Mweli', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3178, 'CL25110', 'Danida\'s Plan of Action for Development Assistance to Women;Sector plan', 'Danida', 'Community Development', 'Ministry of Foreign Affairs', '319', '1988', '87-7265-047-8', 1, 'Available'),
(3179, 'CL25111/1', 'Amegitsu Ga Amasumba', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3180, 'CL25111/2', 'Amegitsu Ga Amasumba', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3181, 'CL25111/3', 'Amegitsu Ga Amasumba', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3182, 'CL25111/4', 'Amegitsu Ga Amasumba', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3183, 'CL25111/5', 'Amegitsu Ga Amasumba', 'Herman Asava', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3184, 'CL25112/1', 'Corporate management & Enterpreneurship Development programmes', 'Eastern and Southern African management Institute', 'Education, Educational Reference & Youth', '', '319', '1998', 'N/A', 1, 'Available'),
(3185, 'CL25113/1', 'Kuishi na Ukimwi katika Jamii', 'N/A', 'Public Health & Wellness', '', '319', '1993', 'N/A', 1, 'Available'),
(3186, 'CL25114/1', 'Gender mainstreaming; An overview', 'United nations', 'Community Development', 'Office of Special Adviser on Gender Issues and Advancement Of Women', '319', '2002', 'N/A', 1, 'Available'),
(3187, 'CL25115/1', 'Ariel; Review of Arts and Letters in Israel', 'N/A', 'Arts, Literature & Geography', '', '319', '1987', 'N/A', 1, 'Available'),
(3188, 'CL25116/1', 'Film Library Catalogue of the Division of Narcotic Drugs', 'UNited nations', 'Cultural Heritage', 'UN', '319', '1986', 'N/A', 1, 'Available'),
(3189, 'CL25117/1', 'Living Values', 'BK Jayanti Kirpq', 'Public Health & Wellness', 'Brahma', '319', '1995', 'N/A', 1, 'Available'),
(3190, 'CL25117/2', 'Living Values', 'BK Jayanti Kirpq', 'Public Health & Wellness', 'Brahma', '319', '1995', 'N/A', 1, 'Available'),
(3191, 'CL25117/3', 'Living Values', 'BK Jayanti Kirpq', 'Public Health & Wellness', 'Brahma', '319', '1995', 'N/A', 1, 'Available'),
(3192, 'CL25117/4', 'Living Values', 'BK Jayanti Kirpq', 'Public Health & Wellness', 'Brahma', '319', '1995', 'N/A', 1, 'Available'),
(3193, 'CL25117/5', 'Living Values', 'BK Jayanti Kirpq', 'Public Health & Wellness', 'Brahma', '319', '1995', 'N/A', 1, 'Available'),
(3194, 'CL25117/6', 'Living Values', 'BK Jayanti Kirpq', 'Public Health & Wellness', 'Brahma', '319', '1995', 'N/A', 1, 'Available'),
(3195, 'CL25117/7', 'Living Values', 'BK Jayanti Kirpq', 'Public Health & Wellness', 'Brahma', '319', '1995', 'N/A', 1, 'Available'),
(3196, 'CL25117/8', 'Living Values', 'BK Jayanti Kirpq', 'Public Health & Wellness', 'Brahma', '319', '1995', 'N/A', 1, 'Available'),
(3197, 'CL25117/9', 'Living Values', 'BK Jayanti Kirpq', 'Public Health & Wellness', 'Brahma', '319', '1995', 'N/A', 1, 'Available'),
(3198, 'CL25118', 'Philosophy and History', 'German Studies', 'Policies & Governance', '', '319', '1984', 'N/A', 1, 'Available'),
(3199, 'CL25119', 'Literature and the arts', 'Foreign Languages press beijing', 'Arts, Literature & Geography', 'Foreign Languages press beijing', '319', '1983', '0 8351 0989 5', 1, 'Available'),
(3200, 'CL25120', 'Ariel', 'N/A', 'Public Health & Wellness', 'Ariel', '319', '1992', 'ISSN 0004-1343', 1, 'Available'),
(3201, 'CL25121', 'Prince Claus awards', 'Reza Abedini', 'Events & Programs', 'Prince MM Claus VI Awards', '319', '2006', 'N/A', 1, 'Available'),
(3202, 'CL25122', 'China Online', 'Fu Jun', 'Public Health & Wellness', '', '319', '2001', '7 80113 956 9', 1, 'Available'),
(3203, 'CL25123', 'Guide des Loisirs', 'Brittany\'s leisure guide', 'Events & Programs', '', '319', '', 'N/A', 1, 'Available'),
(3204, 'CL25124', 'Facts About Slovenia', 'Government of Slovenia', 'Reports & Proceedings', 'The Government Relations and Media Office', '319', '2004', 'N/A', 1, 'Available'),
(3205, 'CL25125', 'What remain what lies ahead', 'Hermann Glaser', 'Community Development', '', '319', '', 'N/A', 1, 'Available'),
(3206, 'CL25126', 'Delhi and its Neighbourhood', 'N/A', 'Community Development', '', '319', '', 'N/A', 1, 'Available'),
(3207, 'CL25127', 'Papers Presented During the First Conference on the Historical Role of Iranians (Shiranzis) In the East African Coast', 'Cultural Council of the Embassy of I.R. Iran, Nairobi', 'Local History', 'Cultural Council of the Embassy of I.R. Iran, Nairobi', '319', '2001', '9966-9718-0-7', 1, 'Available'),
(3208, 'CL25128', 'Cinema in the federal Republic of Germany', 'Inter Nations Bonn', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3209, 'CL25129', 'Kenyan-German Cooperation', 'N/A', 'Community Development', '', '319', '', 'N/A', 1, 'Available'),
(3210, 'CL25130', 'Young Researchers', 'Eva and Rainer', 'Reports & Proceedings', '', '319', '1986', 'N/A', 1, 'Available'),
(3211, 'CL25131', 'Handbook on the International exchange of publications', 'Frans', 'Public Health & Wellness', 'UN', '319', '1978', '92 3 101466 8', 1, 'Available'),
(3212, 'CL25132', 'Cultural Policy in Bolivia', 'Mariano Baptista Gumucio', 'Policies & Governance', 'UNESCO', '319', '1978', '92-3-101519-2', 1, 'Available'),
(3213, 'CL25133', 'Utaratibu wa sheria katika Kenya', 'Public law institute', 'Public Health & Wellness', 'Lawrence media', '319', '', 'N/A', 1, 'Available'),
(3214, 'CL25134', 'Cultural Policy in Union of Soviet Socialist Republics', 'A. A. Zvorykin', 'Policies & Governance', 'UNESCO', '319', '1970', '92-3-100849-8', 1, 'Available'),
(3215, 'CL25135', 'East African Law Journal', 'Robert Martin', 'Policies & Governance', 'East African Literature bureau', '319', '1974', 'N/A', 1, 'Available'),
(3216, 'East African Law Journal', 'East African Journal', 'EAC', 'Reports & Proceedings', 'East African Literature bureau', '319', '1967', 'N/A', 1, 'Available'),
(3217, 'CL25137/1', 'ariel', 'Asher', 'Community Development', 'N/A', '319', '', '41343', 1, 'Available'),
(3218, 'CL25137/2', 'ariel', 'Asher', 'Community Development', 'N/A', '319', '', '41343', 1, 'Available'),
(3219, 'CL25138/1', 'Communication Policies in Columbia', 'Abelto Carrizosa Alajmo', 'Policies & Governance', 'UNESCO', '319', '1977', '92-3-101380-7', 1, 'Available'),
(3220, 'CL25138/2', 'Communication Policies in Columbia', 'Abelto Carrizosa Alajmo', 'Policies & Governance', 'UNESCO', '319', '1977', '92-3-101380-7', 1, 'Available'),
(3221, 'CL25139/1', 'Comparability of degrees and diplomas in international law', 'Rene Jean and Gregory', 'Public Health & Wellness', 'Unesco', '319', '1973', '92 3 101057 3', 1, 'Available'),
(3222, 'CL25140/1', 'East African Journal', 'EAC', 'Reports & Proceedings', 'East African Literature bureau', '319', '1965', 'N/A', 1, 'Available'),
(3223, 'CL25141/1', 'ARIEL', 'Asher', 'Public Health & Wellness', 'Youval', '319', '1995', '41343', 1, 'Available'),
(3224, 'CL25141/2', 'ARIEL', 'Asher', 'Public Health & Wellness', 'Youval', '319', '1995', '41343', 1, 'Available'),
(3225, 'CL25142/1', 'Tribal Art', 'LEMPERTZ', 'Cultural Heritage', 'LEMPERTZ', '319', '1992', 'N/A', 1, 'Available'),
(3226, 'CL25143/1', 'German Culture Today', 'Government of Germany', 'Reports & Proceedings', 'Inter Nations Bonn', '319', '1988', 'N/A', 1, 'Available'),
(3227, 'CL25143/2', 'German Culture Today', 'Government of Germany', 'Reports & Proceedings', 'Inter Nations Bonn', '319', '1988', 'N/A', 1, 'Available'),
(3228, 'CL25144/1', 'Old GOA; Archaelogical Survey of India', 'S. Rajagopalan', 'Cultural Heritage', 'Naba Murdan Private Limited', '319', '1982', 'N/A', 1, 'Available'),
(3229, 'CL25145/1', 'Kulturchronik; News and views from the Federal Republic of Germany', 'Government of Germany', 'Events & Programs', 'GOG', '319', '1994', 'N/A', 1, 'Available'),
(3230, 'CL25146/1', 'East Africa Jounal; Family Planning for Women', 'EAISCA', 'Community Development', 'East African Literature bureau', '319', '', 'N/A', 1, 'Available'),
(3231, 'CL25147/1', 'East Africa Journal', 'EAISCA', 'Reports & Proceedings', 'The Kenya Labour Press Ltd', '319', '', 'N/A', 1, 'Available'),
(3232, 'CL25148/1', 'Resumes de Vieux Manuscripts Arabes', 'M. B. Mkelle', 'Cultural Heritage', 'EACROTANAL', '319', '1983', 'N/A', 1, 'Available'),
(3233, 'CL25149/1', 'India Digest', 'A. R. Sharif', 'Cultural Heritage', 'High Commission of India', '319', '1991', 'N/A', 1, 'Available'),
(3234, 'CL25150/1', 'Cultural Policy in Romania', 'Ian Dodu', 'Policies & Governance', 'Unesco', '319', '1975', '92-3-101188-X', 1, 'Available'),
(3235, 'CL25151/1', 'Cultural Policy in Indonasia', 'Directorate-General of Culture Indonesia', 'Policies & Governance', 'Unesco', '319', '1973', '92-3-101128-6', 1, 'Available'),
(3236, 'CL25291/1', 'Let\'s Learn kenyan Sign Language Basic Words and Phrases in Kenyan Sign Language', 'KNAD', 'Education, Educational Reference & Youth', 'Kamsmart Enterprises', '319', '2011', 'N/A', 1, 'Available'),
(3237, 'CL25292/1', 'Department of Adult Education Eastern Province Annual Report', 'GOK', 'Reports & Proceedings', 'GOK', '319', '1988', 'N/A', 1, 'Available'),
(3238, 'CL25293/1', 'Govenment Financial Regulations and Procedures', 'GOK', 'Policies & Governance', 'Government printer', '319', '', 'N/A', 1, 'Available'),
(3239, 'CL25294/1', 'Public Policy Making; Improving Administrative inputs for Public Policy making in Kenya', 'Oduogi Mionwa', 'Policies & Governance', 'Institute of Social Studies the Hague Netherlands', '319', '', 'N/A', 1, 'Available'),
(3240, 'CL25295/1', 'The treaty for the establishment of the east African Community', 'EAC Secretariat', 'Policies & Governance', 'EAC Secretariat', '319', '2007', '9987-666-01-9', 1, 'Available'),
(3241, 'CL25296/1', 'Carreer and Succession management Strategy in Civil Service', 'Ministry of Public Service', 'Reports & Proceedings', 'Ministry of Public Service', '319', '2007', 'N/A', 1, 'Available'),
(3242, 'CL25297/1', 'Private Sector Corpporate Governancy Trust; Guidelines for Good Corporate Goverance in State Owned Corporations', 'ACBF/CIPE', 'Policies & Governance', 'Oakland Media Services ltd', '319', '', '9966-9969-0-15', 1, 'Available'),
(3243, 'CL25298/1', 'Low Cost Transport in Asia; A Comprehensive Report on Five Cities', 'Romeo B. Ocampo', 'Arts, Literature & Geography', 'IDRC', '319', '1982', '0-88936-313-7', 1, 'Available'),
(3244, 'CL25299/1', 'The Constitution of Kenya', 'GOK', 'Policies & Governance', 'GOK', '319', '2004', 'N/A', 1, 'Available'),
(3245, 'CL25300/1', 'The Earth\'s Core and Geomagnetism', 'J. A. Jacobs', 'Education, Educational Reference & Youth', 'Pergamon Press', '319', '1967', '63-21134', 1, 'Available'),
(3246, 'CL25301/1', 'The Blankards; A Comedy', 'Kobina Sekyi', 'Arts, Literature & Geography', 'Heinemann Eduicational Books', '319', '1974', '0-435-90136-2', 1, 'Available'),
(3247, 'CL25302/1', 'A History of the Igbo People', 'Elizabeth Isichei', 'Cultural Heritage', 'The Macmillan Press Ltd', '319', '1976', '333=18512-9', 1, 'Available'),
(3248, 'CL25303/1', 'A Guide to Women\'s Organizations and Agencies Serving Women in Kenya', 'Mazingira Institute', 'Community Development', 'Mazingira Institute', '319', '1985', 'N/A', 1, 'Available'),
(3249, 'CL25304/1', 'Jounal of eastern African Research & Development', 'Gideon Were', 'Policies & Governance', 'EALB', '319', '1993', 'N/A', 1, 'Available'),
(3250, 'CL25305/1', 'Utafiti; Jounal of the Arts and Social Sciences', 'Y. Tandon', 'Education, Educational Reference & Youth', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3251, 'CL25305/2', 'Utafiti; Jounal of the Arts and Social Sciences', 'Y. Tandon', 'Education, Educational Reference & Youth', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3252, 'CL25306/1', 'Big Five', 'Franek', 'Arts, Literature & Geography', 'Franek', '319', '', 'N/A', 1, 'Available'),
(3253, 'CL25307/1', 'Ain\'t that Good News', 'Moses Hogan', 'Religion and Sprituality', 'Brookfield press', '319', '1999', '0-73999-42075-3', 1, 'Available'),
(3254, 'CL25308/1', 'Health and Human Rights; An International Quarterly Jounal', 'Harvard School of Public Health', 'Public Health & Wellness', 'Harvard School of Public Health', '319', '1994', '170097', 1, 'Available'),
(3255, 'CL25309/1', 'Development and Employment in Kenya; A Strategy for the transformation of the Economy', 'GOK', 'Reports & Proceedings', 'GOK', '319', '1991', 'N/A', 1, 'Available'),
(3256, 'CL25310/1', 'A Marketing Public Relations program', 'Ruder and Finn', 'Reports & Proceedings', 'Ruder and Finn', '319', '1981', 'N/A', 1, 'Available'),
(3257, 'CL25311/1', 'Public Service Integrity programme; a sourcebook for Corruption prevention in the public Service', 'GOK', 'Policies & Governance', 'GOK', '319', '2002', 'N/A', 1, 'Available'),
(3258, 'CL25312/1', 'Adolescent Drug Abuse in Kenya: Impact on Reproductive health', 'Tony Johnston', 'Reports & Proceedings', 'Pathfinder |International', '319', '2000', 'N/A', 1, 'Available'),
(3259, 'CL25313/1', 'National Guidelines; The implementation of Primary Health Care Kenya', 'Unicef/WHO', 'Public Health & Wellness', 'GOK', '319', '1986', 'N/A', 1, 'Available'),
(3260, 'CL25314/1', 'successful time management', 'Mutual Rukwaru', 'Public Health & Wellness', 'Eureka', '319', '2006', '9966 9802 5 3', 1, 'Available'),
(3261, 'CL25314/2', 'successful time management', 'Mutual Rukwaru', 'Public Health & Wellness', 'Eureka', '319', '2006', '9966 9802 5 3', 1, 'Available'),
(3262, 'CL25315/1', 'catalogue of 16mm sound films', 'Caltex', 'Public Health & Wellness', '', '319', '', 'N/A', 1, 'Available'),
(3263, 'CL25316/1', 'University of Nairobi calendar', 'N/A', 'Education, Educational Reference & Youth', '', '319', '', 'N/A', 1, 'Available'),
(3264, 'CL25317/1', 'World Health Forum;An International Jounal of Health Development 1984, Vol. 56, no. $', 'WHO', 'Public Health & Wellness', 'WHO', '319', '1984', '0251-1-2432', 1, 'Available'),
(3265, 'CL25318/1', 'New trends in biology teaching', 'Unesco', 'Community Development', 'UN', '319', '1969', 'N/A', 1, 'Available'),
(3266, 'CL25319/1', 'The race Question in Modern Science', 'Marie jahoda', 'Public Health & Wellness', 'Unesco', '319', '1961', 'N/A', 1, 'Available'),
(3267, 'CL25320/1', 'Economic survey', 'Government', 'Public Health & Wellness', '', '319', '1981', 'N/A', 1, 'Available'),
(3268, 'CL25321/1', 'Globolazation, Health Sector Reform, Gender and Reproductive health', 'Ford Foundation', 'Public Health & Wellness', 'Ford Foundation', '319', '', 'N/A', 1, 'Available'),
(3269, 'CL25322/1', 'Catalogue of common user stores', 'Ministry of public works and Housing', 'Policies & Governance', 'Government Printer', '319', '1999', 'N/A', 1, 'Available'),
(3270, 'CL25323/1', 'Rehabilitation International', 'Unicef', 'Public Health & Wellness', 'UN', '319', '1979', '3425282', 1, 'Available'),
(3271, 'CL25324/1', 'East African Jounal of Medical Research Vol. 3 No. 2', 'East African medical Research Council', 'Community Development', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3272, 'CL25325/1', 'East African Jounal of Medical Research Vol. 3 No. 4', 'East African medical Research Council', 'Community Development', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3273, 'CL25326/1', 'East African Jounal of Medical Research Vol. 4 No. 1', 'East African medical Research Council', 'Community Development', 'EALB', '319', '1977', 'N/A', 1, 'Available'),
(3274, 'CL25327/1', 'East African Jounal of Medical Research Vol. 3 No. 3', 'East African medical Research Council', 'Community Development', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3275, 'CL25328/1', 'Sources of the african past', 'David robinson and Douglas Smith', 'Education, Educational Reference & Youth', 'Heinemann Group', '319', '1976', '0-435-94248-2', 1, 'Available'),
(3276, 'CL25328/2', 'Sources of the african past', 'David robinson and Douglas Smith', 'Education, Educational Reference & Youth', 'Heinemann Group', '319', '1976', '0-435-94248-2', 1, 'Available'),
(3277, 'CL25329/1', 'Ford foundation', 'N/A', 'News & Bulletins', '', '319', '2000', '717274', 1, 'Available'),
(3278, 'CL25330/1', 'Concrete Admixtures:use and Applications', 'M. R. Rixom', 'Manuals', 'Longman Inc.', '319', '1977', '0-904406-32-6', 1, 'Available'),
(3279, 'CL25331/1', 'National bank', 'N/A', 'News & Bulletins', '', '319', '', 'N/A', 1, 'Available'),
(3280, 'CL25332/1', 'Integrated Rural Development and the Role of Education', 'Unesco', 'Education, Educational Reference & Youth', 'UN', '319', '1980', 'N/A', 1, 'Available'),
(3281, 'CL25332/2', 'Integrated Rural Development and the Role of Education', 'Unesco', 'Education, Educational Reference & Youth', 'UN', '319', '1980', 'N/A', 1, 'Available'),
(3282, 'CL25332/3', 'Integrated Rural Development and the Role of Education', 'Unesco', 'Education, Educational Reference & Youth', 'UN', '319', '1980', 'N/A', 1, 'Available'),
(3283, 'CL25333/1', 'Environmental Physiology and Psychology in Arid Conditions; Proceedings of the Lucknow Symposium', 'Unesco', 'Environmental & Sustainability', 'Unesco', '319', '1964', '63/III.29/AF', 1, 'Available'),
(3284, 'CL25334/1', 'Fossil vertebrates of Africa Volume 1', 'Leakey', 'Cultural Heritage', 'Academic press', '319', '1969', '10098', 1, 'Available'),
(3285, 'CL25335/1', 'Theatre for Development in Africa with case studies from Malawi and Zambia', 'Christopher Kamlongera', 'Arts, Literature & Geography', 'Deutsche', '319', '', 'N/A', 1, 'Available'),
(3286, 'CL25336/1', 'Provisional List of Delegates, Representatives and Observers', 'Unesco', 'Reports & Proceedings', 'Unesco', '319', '1987', 'N/A', 1, 'Available'),
(3287, 'CL25337/1', '17th World Congress of Rehabilitation International', 'N/A', 'Community Development', '', '319', '1992', 'N/A', 1, 'Available'),
(3288, 'CL25338/1', 'Educational Research in five European socialist countries', 'Cesar', 'Education, Educational Reference & Youth', 'Unesco', '319', '1972', 'N/A', 1, 'Available'),
(3289, 'CL25339/1', '8 September International Literacy Day; Summary of Information Received Concerning the Celebration in 1980 and 1981', 'Unesco', 'Community Development', 'Unesco', '319', '1981', 'ED-82/WS/58', 1, 'Available'),
(3290, 'CL25340/1', 'Integrated Rural Development and the Role of Education', 'Unesco', 'Education, Educational Reference & Youth', 'UN', '319', '1980', 'N/A', 1, 'Available'),
(3291, 'CL25341/1', 'Uhuru 12', 'kul bhushan', 'Local History', '', '319', '1976', 'N/A', 1, 'Available'),
(3292, 'CL25342/1', 'Building productive capacity for Poverty Alleviation in Least Developed Countries (LDC\'S)', 'UNIDO', 'Community Development', 'UNIDO', '319', '2001', '1-82873', 1, 'Available'),
(3293, 'CL25343/1', 'Kenya 78', 'kul bhushan', 'Local History', 'Newspread', '319', '1978', '3782158', 1, 'Available'),
(3294, 'CL25344/1', 'Uhuru 17', 'Kul bhushan', 'Local History', 'Newspread', '319', '1981', '3782158', 1, 'Available'),
(3295, 'CL25345/1', 'African Development Bank & African Development Fund 1994 Annual Meetings Nairobi, kenya 9-13 May 1994', 'ADB/ADF', 'Manuals', 'ADB/ADF', '319', '1994', 'N/A', 1, 'Available'),
(3296, 'CL25346/1', 'Uhuru 16', 'Kul bhushan', 'Local History', 'Newspread', '319', '1980', '3782158', 1, 'Available'),
(3297, 'CL25346/2', 'Uhuru 16', 'Kul bhushan', 'Local History', 'Newspread', '319', '1980', '3782158', 1, 'Available'),
(3298, 'CL25347/1', 'Chinese Stoneware Glazes', 'Joseph crebanier', 'Cultural Heritage', 'Pitman', '319', '1975', '0-273-00909-5', 1, 'Available'),
(3299, 'CL25348/1', 'Kilns design Construction, and operation', 'Daniel Rhodes', 'Manuals', 'Pitman', '319', '1969', '0-273-40319-2', 1, 'Available'),
(3300, 'CL25349/1', 'Department of Culture Work-Plan July-December, 1998', 'GOK', 'Events & Programs', 'GOK', '319', '1998', 'N/A', 1, 'Available'),
(3301, 'CL25350/1', 'Makerere Historical Jounal; Jounal of the History Department of Makerere University, kampala Vol. 2 No.1 1976', 'Semakula M.M. kiwanuka', 'Cultural Heritage', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3302, 'CL25351/1', '400 Jahre Sammeln und Reisen Der Witterls Bacher', 'Aubereuropaische Kulturen', 'Cultural Heritage', 'Hirmer Verlag Munchen', '319', '1980', 'N/A', 1, 'Available'),
(3303, 'CL25352/1', 'Report of The Co-Operative Bank of Kenya Ltd. Nairobi Delegates Seminar Held on 3rd 4th June, 1988 at The Staff Training Centre karen-Nairobi', 'Co-Operative Bank of Kenya Ltd', 'Reports & Proceedings', '', '319', '1988', 'N/A', 1, 'Available'),
(3304, 'CL25353/1', 'Editions', 'Unesco', 'Reports & Proceedings', 'Unesco', '319', '1995', 'N/A', 1, 'Available'),
(3305, 'CL25354/1', 'The Handbook of Reconciliation in kenya', 'Institution of Justice and Reconciliation, Folke Bernadotte Academy and the National Cohesion and In', 'Policies & Governance', 'Institution of Justice and Reconciliation, Folke Bernadotte Academy and the National Cohesion and Integration Commission', '319', '2016', 'N/A', 1, 'Available'),
(3306, 'CL25354/2', 'The Handbook of Reconciliation in kenya', 'Institution of Justice and Reconciliation, Folke Bernadotte Academy and the National Cohesion and In', 'Policies & Governance', 'Institution of Justice and Reconciliation, Folke Bernadotte Academy and the National Cohesion and Integration Commission', '319', '2016', 'N/A', 1, 'Available'),
(3307, 'CL25355/1', 'Total Intergrated Quality Education and Training', '', 'Education, Educational Reference & Youth', '', '319', '1999', 'N/A', 1, 'Available'),
(3308, 'CL25355/2', 'Total Intergrated Quality Education and Training', '', 'Education, Educational Reference & Youth', '', '319', '1999', 'N/A', 1, 'Available'),
(3309, 'CL25356/1', 'Kenya Yearbook;National Cohesion & Economic Recovery', 'Kenya Yearbook Editorial', 'Reports & Proceedings', 'Kenya Yearbook Editorial', '319', '2022', '978-9966-1947-4-9', 1, 'Available'),
(3310, 'CL25357/1', 'Scottish Crafts Now', 'Robert Gooden', 'Cultural Heritage', 'Scottish development Agency', '319', '1980', '905574028', 1, 'Available'),
(3311, 'CL25358/1', 'Human Sacrifice and the supernatural', 'Lawrence E.Y. Mbogoni', 'Cultural Heritage', 'Mkuki na Nyota', '319', '2013', '978-9987-08-242-1', 1, 'Available'),
(3312, 'CL25359/1', 'Financing Educational Development', 'International Development Research Centre', 'Public Health & Wellness', '', '319', '1982', '0 88936 361 7', 1, 'Available'),
(3313, 'CL25360/1', 'Programme Review and forward budget', 'development expenditures', 'Policies & Governance', '', '319', '1992', 'N/A', 1, 'Available'),
(3314, 'CL25361/1', 'Programme Review and forward budget', 'Recurrent expenditures', 'Policies & Governance', '', '319', '1991', 'N/A', 1, 'Available'),
(3315, 'CL25362/1', 'LA SICILIA DEI CAVALIERI', 'Luciano', 'Cultural Heritage', '', '319', '2003', 'N/A', 1, 'Available'),
(3316, 'CL25363/1', 'Estimates of recurrent expenditure', 'Government', 'Policies & Governance', '', '319', '1977', 'N/A', 1, 'Available'),
(3317, 'CL25364/1', 'Songs and Politics in Eastern Africa', 'Kimani Njogu', 'Religion and Sprituality', 'Mkuki na Nyota', '319', '2007', '9987-449-42-5', 1, 'Available'),
(3318, 'CL25364/2', 'Songs and Politics in Eastern Africa', 'Kimani Njogu', 'Religion and Sprituality', 'Mkuki na Nyota', '319', '2007', '9987-449-42-5', 1, 'Available'),
(3319, 'CL25365/1', 'Estimates of recurrent expenditure', 'Government', 'Policies & Governance', '', '319', '1996', 'N/A', 1, 'Available'),
(3320, 'CL25366/1', 'District Allocation Budget', 'Government', 'Policies & Governance', '', '319', '2002', 'N/A', 1, 'Available'),
(3321, 'CL25367/1', 'Development Estimates', 'Government', 'Policies & Governance', '', '319', '1989', 'N/A', 1, 'Available'),
(3322, 'CL25368/1', 'District Allocation Budget', 'Government', 'Policies & Governance', '', '319', '2003', 'N/A', 1, 'Available'),
(3323, 'CL25369/1', 'Approved Programme and Budget f9r 1994-1995', 'Unesco', 'News & Bulletins', '', '319', '1994', 'N/A', 1, 'Available'),
(3324, 'CL25370/1', 'The Study of Animal Bones from Archaelogical sites', 'Raymond E. Chaplin', 'Education, Educational Reference & Youth', 'Seminar Press Inc.', '319', '1971', '0-12-816050-0', 1, 'Available'),
(3325, 'CL25371/1', 'Gerd Dengler', 'Messingstadt', 'Arts, Literature & Geography', '', '319', '1989', 'N/A', 1, 'Available'),
(3326, 'CL25372/1', 'Olduvai Gorge; My Search for Early', 'Mary Leakey', 'Education, Educational Reference & Youth', 'William Collins Sons & Co Glassgow', '319', '1979', '0-00-211613-8', 1, 'Available'),
(3327, 'CL25373/1', 'Programme review and Forward budget', 'Ngwabi Bhebe', 'Cultural Heritage', 'Gamsberg Macmillan', '319', '2002', '99916-0-371-9', 1, 'Available'),
(3328, 'CL25374/1', 'A Kuria Bibliography from Gosi Cultural Centre', 'Kirsten Alsaker Kjerland', 'Local History', 'Gosi Cultural Centre', '319', '1988', 'N/A', 1, 'Available'),
(3329, 'CL25375/1', 'Izingano ne Livola Lia Avalogooli', 'Joseph Olindo Ndanyi', 'Local History', 'Coollege of Education and External Studies', '319', '2006', '9966-7090-6-1', 1, 'Available'),
(3330, 'CL25376/1', 'Kenya Historical Review; The Jounal of the Historical Association of Kenya Vol 5 No. 1', 'William M. Ochieng', 'Reports & Proceedings', 'ÉALB', '319', '1977', 'N/A', 1, 'Available'),
(3331, 'CL25377/1', 'Shujaa', 'National Cohesion and intergration Commission', 'Phamplets and Advertisements', 'Shujaa fm', '319', '2003', 'N/A', 1, 'Available'),
(3332, 'CL25378/1', 'African Voices; Luo Spirituals', 'Samuel A. Otieno', 'Religion and Sprituality', 'Acts Press', '319', '1990', '9966-41-018-X', 1, 'Available'),
(3333, 'CL25379/1', 'Nyani News', 'Institute of Primate Research', 'Phamplets and Advertisements', 'Institute of Primate Research', '319', '2019', 'N/A', 1, 'Available'),
(3334, 'CL25380/1', '18th Nairobi international Book Fair', 'Kenya Publishers Association', 'Phamplets and Advertisements', 'Kenya Publishers Association', '319', '2015', 'N/A', 1, 'Available'),
(3335, 'CL25381/1', '', '', '', '', '319', '', '0-7207-0840-0', 1, 'Available'),
(3336, 'CL25152/1', 'Fara the Goat and Her Sister', 'Henri Rahaingoson', 'Arts, Literature & Geography', 'EACROTANAL', '319', '1982', '9976-913-01-X', 1, 'Available'),
(3337, 'CL25153/1', 'Crafts Products', 'Scottish Development Agency', 'Cultural Heritage', 'Hay Nisbett Miller, Glasgow', '319', '1985', 'N/A', 1, 'Available'),
(3338, 'CL25154/1', 'Kenya Music Festival Programme', 'Ministry of Culture and Social Services', 'Events & Programs', 'GOK', '319', '1989', 'N/A', 1, 'Available'),
(3339, 'CL25155/1', 'Reseachers and Inventors of Science and Technology in the German Museum', 'Inter Nations Bonn', 'Local History', 'GOG', '319', '1985', 'N/A', 1, 'Available'),
(3340, 'CL25156/1', 'Slovenj Grade', 'Slovenj Grade', 'Cultural Heritage', 'Monografy Slovenj Grade Publishers', '319', '', 'N/A', 1, 'Available'),
(3341, 'CL25157/1', 'The Federal Republic of germany today; Insights into a country', 'Hans Werner Klein', 'Reports & Proceedings', 'Rainer kiedrowski Publishing House', '319', '', '3-924-247-01-3', 1, 'Available'),
(3342, 'CL25158/1', '50 Salon Nacional Anos de Artistas', 'Fernado Botero', 'Cultural Heritage', 'Derechos Editoriales', '319', '1990', '958-95220-0-9', 1, 'Available'),
(3343, 'CL25159/1', 'African Success Story; The ivory Coast', 'Marc and Evelyne Bernheim', 'Reports & Proceedings', 'HARCOURT, BRACE & WORLD, INC', '319', '1970', 'N/A', 1, 'Available'),
(3344, 'CL25160/1', 'China Today \'99', 'China Statistis Press', 'Local History', 'China Statistis Press', '319', '1999', '1-5037-2680-6', 1, 'Available'),
(3345, 'CL25161/1', 'The Arrow Poisons', 'Maitai Karimi', 'Arts, Literature & Geography', 'East African Literature Bureau', '319', '1973', 'DCL 100 189', 1, 'Available'),
(3346, 'CL25162/1', 'Innovation in science education world wide', 'Albert Baez', 'Public Health & Wellness', 'Unesco', '319', '1976', '92 3 101331 9', 1, 'Available'),
(3347, 'CL25163/1', 'Studies and documents', 'SIDA', 'Cultural Heritage', 'EACROTANAL', '319', '1982', 'N/A', 1, 'Available');
INSERT INTO `bookpreset` (`id`, `book_id`, `book_title`, `book_author`, `book_genre`, `publisher`, `location`, `year_published`, `isbn`, `quantity`, `status`) VALUES
(3348, 'CL25164/1', 'Education in Eastern Africa', 'John Bigala', 'Public Health & Wellness', 'EALB', '319', '1993', 'N/A', 1, 'Available'),
(3349, 'CL25164/2', 'Education in Eastern Africa', 'John Bigala', 'Public Health & Wellness', 'EALB', '319', '1993', 'N/A', 1, 'Available'),
(3350, 'CL25165/1', 'Demographic aspects of educational planning', 'Ta Ngoc Chau', 'Education, Educational Reference & Youth', 'Unesco', '319', '1969', '92 803 1028 3', 1, 'Available'),
(3351, 'CL25166/1', 'Adult Education and Development', 'Wolfgang', 'Education, Educational Reference & Youth', 'N/A', '319', '1986', 'N/A', 1, 'Available'),
(3352, 'CL25167/1', 'Basic principles of vocational rehabilitation of the disabled', 'ILO', 'Community Development', 'ILO', '319', '1973', '92 2 100990 4', 1, 'Available'),
(3353, 'CL25168/1', 'The Carribean Mathematics;project training the Teacher as the Agent of Reform', 'H. Martyn Cundy', 'Education, Educational Reference & Youth', 'International Bureau of Education', '319', '1977', '92-3-101503-6', 1, 'Available'),
(3354, 'CL25169/1', 'Physical Education in primary schools', 'Joseph O. Toluhi', 'Public Health & Wellness', 'Evans Brothers', '319', '1976', '0 237 50040 X', 1, 'Available'),
(3355, 'CL25169/2', 'Physical Education in primary schools', 'Joseph O. Toluhi', 'Public Health & Wellness', 'Evans Brothers', '319', '1976', '0 237 50040 X', 1, 'Available'),
(3356, 'CL25170/1', 'GHC Standard 4 Central Province Combined Course', 'J.N. Kuria and Nelson G. Muchemi', 'Education, Educational Reference & Youth', 'Evans Brothers', '319', '2004', '0-237-51108-8', 1, 'Available'),
(3357, 'CL25170/2', 'GHC Standard 4 Central Province Combined Course', 'J.N. Kuria and Nelson G. Muchemi', 'Education, Educational Reference & Youth', 'Evans Brothers', '319', '2004', '0-237-51108-8', 1, 'Available'),
(3358, 'CL25151/2', 'Cultural Policy in Indonasia', 'Directorate-General of Culture Indonesia', 'Policies & Governance', 'Unesco', '319', '1986.61536', '92-3-101128-7', 1, 'Available'),
(3359, 'CL25152/2', 'Fara the Goat and Her Sister', 'Henri Rahaingoson', 'Arts, Literature & Geography', 'EACROTANAL', '319', '1986.88060', '9976-913-01-X', 1, 'Available'),
(3360, 'CL25153/2', 'Crafts Products', 'Scottish Development Agency', 'Cultural Heritage', 'Hay Nisbett Miller, Glasgow', '319', '1987.14584', 'N/A', 1, 'Available'),
(3361, 'CL25154/2', 'Kenya Music Festival Programme', 'Ministry of Culture and Social Services', 'Events & Programs', 'GOK', '319', '1987.41108', 'N/A', 1, 'Available'),
(3362, 'CL25155/2', 'Reseachers and Inventors of Science and Technology in the German Museum', 'Inter Nations Bonn', 'Local History', 'GOG', '319', '1987.67632', 'N/A', 1, 'Available'),
(3363, 'CL25156/2', 'Slovenj Grade', 'Slovenj Grade', 'Cultural Heritage', 'Monografy Slovenj Grade Publishers', '319', '1987.94156', 'N/A', 1, 'Available'),
(3364, 'CL25157/2', 'The Federal Republic of germany today; Insights into a country', 'Hans Werner Klein', 'Reports & Proceedings', 'Rainer kiedrowski Publishing House', '319', '1988.20680', '3-924-247-01-4', 1, 'Available'),
(3365, 'CL25158/2', '51 Salon Nacional Anos de Artistas', 'Fernado Botero', 'Cultural Heritage', 'Derechos Editoriales', '319', '1988.47204', '958-95220-0-10', 1, 'Available'),
(3366, 'CL25159/2', 'African Success Story; The ivory Coast', 'Marc and Evelyne Bernheim', 'Reports & Proceedings', 'HARCOURT, BRACE & WORLD, INC', '319', '1988.73727', 'N/A', 1, 'Available'),
(3367, 'CL25160/2', 'China Today \'100', 'China Statistis Press', 'Local History', 'China Statistis Press', '319', '1989.00251', '1-5037-2680-7', 1, 'Available'),
(3368, 'CL25161/2', 'The Arrow Poisons', 'Maitai Karimi', 'Arts, Literature & Geography', 'East African Literature Bureau', '319', '1989.26775', 'DCL 100 190', 1, 'Available'),
(3369, 'CL25162/2', 'Innovation in science education world wide', 'Albert Baez', 'Public Health & Wellness', 'Unesco', '319', '1989.53299', '93 3 101331 9', 1, 'Available'),
(3370, 'CL25163/2', 'Studies and documents', 'SIDA', 'Cultural Heritage', 'EACROTANAL', '319', '1989.79823', 'N/A', 1, 'Available'),
(3371, 'CL25164/3', 'Education in Eastern Africa', 'John Bigala', 'Public Health & Wellness', 'EALB', '319', '1990.06347', 'N/A', 1, 'Available'),
(3372, 'CL25175/3', 'GHC Standard 4 Nairobi Province Combined Course', 'Fred M. Omwoyo', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '', '0-237-52052-4', 1, 'Available'),
(3373, 'CL25175/4', 'GHC Standard 4 Nairobi Province Combined Course', 'Fred M. Omwoyo', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '', '0-237-52052-4', 1, 'Available'),
(3374, 'CL25176/1', 'Report on the working of the Public service commission', 'Government', 'Policies & Governance', 'N/A', '319', '1985', 'N/A', 1, 'Available'),
(3375, 'CL25176/2', 'Report on the working of the Public service commission', 'Government', 'Policies & Governance', 'N/A', '319', '1985', 'N/A', 1, 'Available'),
(3376, 'CL25177/1', 'FATEHPUR SIKRI', 'Saiyid Athar', 'Cultural Heritage', 'Director General', '319', '1972', 'N/A', 1, 'Available'),
(3377, 'CL25178/1', 'The phonology of a Bantu dialect', 'Wilson Kaiga', 'Cultural Heritage', 'Education in store', '319', '2003', '9966 7011 0 9', 1, 'Available'),
(3378, 'CL25179/1', 'GHC Standard 4 Western Province Combined Course', 'Fred M. Omwoyo', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '', '0-237-51227-0', 1, 'Available'),
(3379, 'CL251792/1', 'GHC Standard 4 Western Province Combined Course', 'Fred M. Omwoyo', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '', '0-237-51227-0', 1, 'Available'),
(3380, 'CL25179/3', 'GHC Standard 4 Western Province Combined Course', 'Fred M. Omwoyo', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '', '0-237-51227-0', 1, 'Available'),
(3381, 'CL25179/4', 'GHC Standard 4 Western Province Combined Course', 'Fred M. Omwoyo', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '', '0-237-51227-0', 1, 'Available'),
(3382, 'CL25180/1', 'What does a Man want', 'Muthoni Likimani', 'Public Health & Wellness', 'KLB', '319', '1974', '9966 44 120 4', 1, 'Available'),
(3383, 'CL25181/1', 'GHC Standard 4 Coast Province Combined Course', 'Mwakio Ndau', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '2003', '0-237-51135-5', 1, 'Available'),
(3384, 'CL25181/2', 'GHC Standard 4 Coast Province Combined Course', 'Mwakio Ndau', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '2003', '0-237-51135-5', 1, 'Available'),
(3385, 'CL25182/1', 'Transafrican journal of history', 'Bethwell Ogot', 'Arts, Literature & Geography', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3386, 'CL25183/1', 'GHC Standard 4 Nyanza Combined Course', 'Cleophas Ondieki', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '2003', '0-237-51136-3', 1, 'Available'),
(3387, 'CL25183/2', 'GHC Standard 4 Nyanza Combined Course', 'Cleophas Ondieki', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '2003', '0-237-51136-3', 1, 'Available'),
(3388, 'CL25183/3', 'GHC Standard 4 Nyanza Combined Course', 'Cleophas Ondieki', 'Education, Educational Reference & Youth', 'Evans brothers', '319', '2003', '0-237-51136-3', 1, 'Available'),
(3389, 'CL25184/1', 'The Dawn of African History', 'Roland Oliver', 'Arts, Literature & Geography', 'Oxford University press', '319', '1968', '0-19-412278-6', 1, 'Available'),
(3390, 'CL25185/1', 'Adult Education and Development', 'Heribert Hinzen', 'Education, Educational Reference & Youth', 'German Adult Education Association', '319', '1980', 'N/A', 1, 'Available'),
(3391, 'CL25186/1', 'Dhana', 'Adimola Ocitti', 'Arts, Literature & Geography', 'East African Literature Bureau', '319', '1993', 'N/A', 1, 'Available'),
(3392, 'CL25187/1', 'Practical Guide to in-service teacher Training in Africa', 'Unesco', 'Education, Educational Reference & Youth', 'Unesco', '319', '1970', 'N/A', 1, 'Available'),
(3393, 'CL25188/1', 'Terminology of technical and vocational education', 'Ibedata/Unesco', 'Education, Educational Reference & Youth', 'Unesco', '319', '1978', '92-3-001593-8', 1, 'Available'),
(3394, 'CL25189/1', 'Case Studies in Special Education:Cuba Japan Kenya sweden', 'Unesco', 'Reports & Proceedings', 'The Unesco Press', '319', '1974', '92-3-101145-6', 1, 'Available'),
(3395, 'CL25190/1', 'Educational trends in 1970; An International survey', 'Unesco/IBE', 'Reports & Proceedings', 'International Bureau of Education', '319', '1970', 'N/A', 1, 'Available'),
(3396, 'CL25191/1', 'Planning the School Curriculum;Fundamentals of Education Planning', 'Arieh Lewy', 'Education, Educational Reference & Youth', 'Unesco', '319', '1977', '92-803-1075-5', 1, 'Available'),
(3397, 'CL25192/1', 'Teaching School mathematics', 'W. Servais and T. Varga', 'Education, Educational Reference & Youth', 'Penguin Education', '319', '1971', '0-1408-0084-0', 1, 'Available'),
(3398, 'CL25193/1', 'Education Deveopment in Africa; Integration and Administration', 'Unesco', 'Education & Youth', 'Unesco', '319', '1969', 'IIEP.69/1.3/A', 1, 'Available'),
(3399, 'CL25194/1', 'Innovation in Reading Britain', 'Unesco', 'Reports & Proceedings', 'The Unesco Press', '319', '1975', '92-3-101112-X', 1, 'Available'),
(3400, 'CL25195/1', 'Concepts of Ecology', 'Edward J. Kormondy', 'Environmental & Sustainability', 'Prentice Hall of India', '319', '1978', 'N/A', 1, 'Available'),
(3401, 'CL25196/1', 'Kenya Historical Review', 'William Ochieng', 'Local History', 'Government printer', '319', '1976', 'N/A', 1, 'Available'),
(3402, 'CL25197/1', 'Report of the National Committee on Educational OBJECTIVES and POLICIES', 'Government', 'News & Bulletins', 'Government printer', '319', '1976', 'N/A', 1, 'Available'),
(3403, 'CL25197/2', 'Report of the National Committee on Educational OBJECTIVES and POLICIES', 'Government', 'News & Bulletins', 'Government printer', '319', '1976', 'N/A', 1, 'Available'),
(3404, 'CL25197/3', 'Report of the National Committee on Educational OBJECTIVES and POLICIES', 'Government', 'News & Bulletins', 'Government printer', '319', '1976', 'N/A', 1, 'Available'),
(3405, 'CL25197/4', 'Report of the National Committee on Educational OBJECTIVES and POLICIES', 'Government', 'News & Bulletins', 'Government printer', '319', '1976', 'N/A', 1, 'Available'),
(3406, 'CL25198/1', 'From equivalence of degrees to evaluation of competence', 'Jean Guiton', 'Education, Educational Reference & Youth', 'Unesco', '319', '1977', '92 3 101419 6', 1, 'Available'),
(3407, 'CL25199/1', 'A History of Modern Education in Kenya', 'Sorobeo Nyachieo', 'Education, Educational Reference & Youth', 'Bookman Consultants', '319', '1992', '0 237 51281 5', 1, 'Available'),
(3408, 'CL25199/2', 'A History of Modern Education in Kenya', 'Sorobeo Nyachieo', 'Education, Educational Reference & Youth', 'Bookman Consultants', '319', '1992', '0 237 51281 5', 1, 'Available'),
(3409, 'CL25199/3', 'A History of Modern Education in Kenya', 'Sorobeo Nyachieo', 'Education, Educational Reference & Youth', 'Bookman Consultants', '319', '1992', '0 237 51281 5', 1, 'Available'),
(3410, 'CL25200/1', 'New trends in Chemistry teaching', 'Unesco', 'Education, Educational Reference & Youth', 'Unesco press', '319', '1975', '92 3 101 241 X', 1, 'Available'),
(3411, 'CL25201/1', 'Bloom or Doom', 'Kenya Institute of Education', 'Education, Educational Reference & Youth', 'Kenya Institute of education', '319', '1997', 'N/A', 1, 'Available'),
(3412, 'CL25202/1', 'A Kuria bibliography', 'Kirsten Alsaker', 'Cultural Heritage', 'N/A', '319', '1988', 'N/A', 1, 'Available'),
(3413, 'CL25202/2', 'A Kuria bibliography', 'Kirsten Alsaker', 'Cultural Heritage', 'N/A', '319', '1988', 'N/A', 1, 'Available'),
(3414, 'CL25202/3', 'A Kuria bibliography', 'Kirsten Alsaker', 'Cultural Heritage', 'N/A', '319', '1988', 'N/A', 1, 'Available'),
(3415, 'CL25203/1', 'Praise poems of the Kuria', 'Suzette Heald', 'Cultural Heritage', 'phoenix', '319', '1997', '9966 47 191 x', 1, 'Available'),
(3416, 'CL25203/2', 'Praise poems of the Kuria', 'Suzette Heald', 'Cultural Heritage', 'phoenix', '319', '1997', '9966 47 191 x', 1, 'Available'),
(3417, 'CL25203/3', 'Praise poems of the Kuria', 'Suzette Heald', 'Cultural Heritage', 'phoenix', '319', '1997', '9966 47 191 x', 1, 'Available'),
(3418, 'CL25204/1', 'Sherpa architecture', 'Unesco', 'Community Development', 'United Nations', '319', '1978', '92 3 201612 5', 1, 'Available'),
(3419, 'CL25205/1', 'Journal of the language Association of Eastern Africa', 'Wangombe C.R', 'Arts, Literature & Geography', 'N/A', '319', '1975', 'N/A', 1, 'Available'),
(3420, 'CL25205/2', 'Journal of the language Association of Eastern Africa', 'Wangombe C.R', 'Arts, Literature & Geography', 'N/A', '319', '1975', 'N/A', 1, 'Available'),
(3421, 'CL25206/1', 'Uppsala to nairobi', 'David Johnson', 'Local History', 'Friendship press', '319', '1968', 'DCL 100 160', 1, 'Available'),
(3422, 'CL25207/1', 'China handbook series culture', 'Liang', 'Reports & Proceedings', 'Foreign language', '319', '1982', '0 8351 0991 7', 1, 'Available'),
(3423, 'CL25208/1', 'Kenya National adult literacy survey report', 'kenya national bureau of statistics', 'Policies & Governance', 'Government printer', '319', '2007', 'N/A', 1, 'Available'),
(3424, 'CL25209/1', 'Olkuaak look Maasai', 'Kilesi Jemima', 'Cultural Heritage', 'Department of Adult Education', '319', '2002', '9966 953 27 2', 1, 'Available'),
(3425, 'CL25210/1', 'Coming full circle', 'Peter Matlon', 'Environmental & Sustainability', 'N/A', '319', '1984', '0 88936 324 2', 1, 'Available'),
(3426, 'CL25211/1', 'Catalogue', 'KLB', 'News & Bulletins', 'General printers', '319', '1979', 'N/A', 1, 'Available'),
(3427, 'CL25212/1', 'A situational Analysis on the Status of female genital mutilation eradication in kenya', 'Joyce Olenja', 'Public Health & Wellness', 'N/A', '319', '2002', 'N/A', 1, 'Available'),
(3428, 'CL25213/1', 'From Handpumps to Health', 'Unicef', 'Community Development', 'Unicef', '319', '1990', '92 806 0051 6', 1, 'Available'),
(3429, 'CL25214/1', 'A glossary of Kalenjin names,terms,and sayings', 'Ambrose Keitany', 'Cultural Heritage', 'Zapf Chancery', '319', '2007', '9966 7185 6 7', 1, 'Available'),
(3430, 'CL25215/1', 'The Ukamba Members Association', 'J.R Newman', 'Cultural Heritage', 'Transafrica', '319', '1974', 'DCL 100 139', 1, 'Available'),
(3431, 'CL25216/1', 'Guide to Fossil Man', 'Michael H. Day', 'Education, Educational Reference & Youth', 'Cassel & Com,pany Limited', '319', '1977', '0-304-29949-9', 1, 'Available'),
(3432, 'CL25217/1', 'Man\'s Environment; Human Geography in Colour', 'D. C. Money', 'Arts, Literature & Geography', 'Evans brothers', '319', '1975', '0-23729120-7', 1, 'Available'),
(3433, 'CL25218/1', 'Tourism; Transnational Corporations and Cultural Identities', 'Francois Ascher', 'Cultural Heritage', 'Unesco', '319', '1985', '92-2-102095-1', 1, 'Available'),
(3434, 'CL25219/1', 'Drawing Archaelogical Finds for Publication', 'Conant Brodribb', 'Education, Educational Reference & Youth', 'John Baker', '319', '1970', '212-98376-8', 1, 'Available'),
(3435, 'CL25220/1', 'Research on Hydrology; A Contribution to the International Hydrological Programme', 'Unesco', 'Education, Educational Reference & Youth', 'Unesco', '319', '1978', '92-3-101555-9', 1, 'Available'),
(3436, 'CL25321/1', 'Catalogue of common user stores', 'Ministry of public works and Housing', 'Policies & Governance', 'Government Printer', '319', '1999', 'N/A', 1, 'Available'),
(3437, 'CL25322/1', 'Rehabilitation International', 'Unicef', 'Public Health & Wellness', 'UN', '319', '1979', '3425282', 1, 'Available'),
(3438, 'CL25323/1', 'East African Jounal of Medical Research Vol. 3 No. 2', 'East African medical Research Council', 'Community Development', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3439, 'CL25324/1', 'East African Jounal of Medical Research Vol. 3 No. 4', 'East African medical Research Council', 'Community Development', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3440, 'CL25325/1', 'East African Jounal of Medical Research Vol. 4 No. 1', 'East African medical Research Council', 'Community Development', 'EALB', '319', '1977', 'N/A', 1, 'Available'),
(3441, 'CL25326/1', 'East African Jounal of Medical Research Vol. 3 No. 3', 'East African medical Research Council', 'Community Development', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3442, 'CL25327/1', 'Sources of the african past', 'David robinson and Douglas Smith', 'Education, Educational Reference & Youth', 'Heinemann Group', '319', '1976', '0-435-94248-2', 1, 'Available'),
(3443, 'CL25327/2', 'Sources of the african past', 'David robinson and Douglas Smith', 'Education, Educational Reference & Youth', 'Heinemann Group', '319', '1976', '0-435-94248-2', 1, 'Available'),
(3444, 'CL25328/1', 'Ford foundation', 'N/A', 'News & Bulletins', '', '319', '2000', '717274', 1, 'Available'),
(3445, 'CL25329/1', 'Concrete Admixtures:use and Applications', 'M. R. Rixom', 'Manuals', 'Longman Inc.', '319', '1977', '0-904406-32-6', 1, 'Available'),
(3446, 'CL25330/1', 'National bank', 'N/A', 'News & Bulletins', '', '319', '', 'N/A', 1, 'Available'),
(3447, 'CL25331/1', 'Integrated Rural Development and the Role of Education', 'Unesco', 'Education, Educational Reference & Youth', 'UN', '319', '1980', 'N/A', 1, 'Available'),
(3448, 'CL25331/2', 'Integrated Rural Development and the Role of Education', 'Unesco', 'Education, Educational Reference & Youth', 'UN', '319', '1980', 'N/A', 1, 'Available'),
(3449, 'CL25331/3', 'Integrated Rural Development and the Role of Education', 'Unesco', 'Education, Educational Reference & Youth', 'UN', '319', '1980', 'N/A', 1, 'Available'),
(3450, 'CL25332/1', 'Environmental Physiology and Psychology in Arid Conditions; Proceedings of the Lucknow Symposium', 'Unesco', 'Environmental & Sustainability', 'Unesco', '319', '1964', '63/III.29/AF', 1, 'Available'),
(3451, 'CL25333/1', 'Fossil vertebrates of Africa Volume 1', 'Leakey', 'Cultural Heritage', 'Academic press', '319', '1969', '10098', 1, 'Available'),
(3452, 'CL25334/1', 'Theatre for Development in Africa with case studies from Malawi and Zambia', 'Christopher Kamlongera', 'Arts, Literature & Geography', 'Deutsche', '319', '', 'N/A', 1, 'Available'),
(3453, 'CL25335/1', 'Provisional List of Delegates, Representatives and Observers', 'Unesco', 'Reports & Proceedings', 'Unesco', '319', '1987', 'N/A', 1, 'Available'),
(3454, 'CL25336/1', '17th World Congress of Rehabilitation International', 'N/A', 'Community Development', '', '319', '1992', 'N/A', 1, 'Available'),
(3455, 'CL25337/1', 'Educational Research in five European socialist countries', 'Cesar', 'Education, Educational Reference & Youth', 'Unesco', '319', '1972', 'N/A', 1, 'Available'),
(3456, 'CL25338/1', '8 September International Literacy Day; Summary of Information Received Concerning the Celebration in 1980 and 1981', 'Unesco', 'Community Development', 'Unesco', '319', '1981', 'ED-82/WS/58', 1, 'Available'),
(3457, 'CL25339/1', 'Integrated Rural Development and the Role of Education', 'Unesco', 'Education, Educational Reference & Youth', 'UN', '319', '1980', 'N/A', 1, 'Available'),
(3458, 'CL25340/1', 'Uhuru 12', 'kul bhushan', 'Local History', '', '319', '1976', 'N/A', 1, 'Available'),
(3459, 'CL25341/1', 'Building productive capacity for Poverty Alleviation in Least Developed Countries (LDC\'S)', 'UNIDO', 'Community Development', 'UNIDO', '319', '2001', '1-82873', 1, 'Available'),
(3460, 'CL25342/1', 'Kenya 78', 'kul bhushan', 'Local History', 'Newspread', '319', '1978', '3782158', 1, 'Available'),
(3461, 'CL25343/1', 'Uhuru 17', 'Kul bhushan', 'Local History', 'Newspread', '319', '1981', '3782158', 1, 'Available'),
(3462, 'CL25344/1', 'African Development Bank & African Development Fund 1994 Annual Meetings Nairobi, kenya 9-13 May 1994', 'ADB/ADF', 'Manuals', 'ADB/ADF', '319', '1994', 'N/A', 1, 'Available'),
(3463, 'CL25345/1', 'Uhuru 16', 'Kul bhushan', 'Local History', 'Newspread', '319', '1980', '3782158', 1, 'Available'),
(3464, 'CL25345/2', 'Uhuru 16', 'Kul bhushan', 'Local History', 'Newspread', '319', '1980', '3782158', 1, 'Available'),
(3465, 'CL25346/1', 'Chinese Stoneware Glazes', 'Joseph crebanier', 'Cultural Heritage', 'Pitman', '319', '1975', '0-273-00909-5', 1, 'Available'),
(3466, 'CL25347/1', 'Kilns design Construction, and operation', 'Daniel Rhodes', 'Manuals', 'Pitman', '319', '1969', '0-273-40319-2', 1, 'Available'),
(3467, 'CL25348/1', 'Department of Culture Work-Plan July-December, 1998', 'GOK', 'Events & Programs', 'GOK', '319', '1998', 'N/A', 1, 'Available'),
(3468, 'CL25349/1', 'Makerere Historical Jounal; Jounal of the History Department of Makerere University, kampala Vol. 2 No.1 1976', 'Semakula M.M. kiwanuka', 'Cultural Heritage', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3469, 'CL25350/1', '400 Jahre Sammeln und Reisen Der Witterls Bacher', 'Aubereuropaische Kulturen', 'Cultural Heritage', 'Hirmer Verlag Munchen', '319', '1980', 'N/A', 1, 'Available'),
(3470, 'CL25351/1', 'Report of The Co-Operative Bank of Kenya Ltd. Nairobi Delegates Seminar Held on 3rd 4th June, 1988 at The Staff Training Centre karen-Nairobi', 'Co-Operative Bank of Kenya Ltd', 'Reports & Proceedings', '', '319', '1988', 'N/A', 1, 'Available'),
(3471, 'CL25352/1', 'Editions', 'Unesco', 'Reports & Proceedings', 'Unesco', '319', '1995', 'N/A', 1, 'Available'),
(3472, 'CL25353/1', 'The Handbook of Reconciliation in kenya', 'Institution of Justice and Reconciliation, Folke Bernadotte Academy and the National Cohesion and In', 'Policies & Governance', 'Institution of Justice and Reconciliation, Folke Bernadotte Academy and the National Cohesion and Integration Commission', '319', '2016', 'N/A', 1, 'Available'),
(3473, 'CL25353/2', 'The Handbook of Reconciliation in kenya', 'Institution of Justice and Reconciliation, Folke Bernadotte Academy and the National Cohesion and In', 'Policies & Governance', 'Institution of Justice and Reconciliation, Folke Bernadotte Academy and the National Cohesion and Integration Commission', '319', '2016', 'N/A', 1, 'Available'),
(3474, 'CL25354/1', 'Total Intergrated Quality Education and Training', '', 'Education, Educational Reference & Youth', '', '319', '1999', 'N/A', 1, 'Available'),
(3475, 'CL25354/2', 'Total Intergrated Quality Education and Training', '', 'Education, Educational Reference & Youth', '', '319', '1999', 'N/A', 1, 'Available'),
(3476, 'CL25355/1', 'Kenya Yearbook;National Cohesion & Economic Recovery', 'Kenya Yearbook Editorial', 'Reports & Proceedings', 'Kenya Yearbook Editorial', '319', '2022', '978-9966-1947-4-9', 1, 'Available'),
(3477, 'CL25356/1', 'Scottish Crafts Now', 'Robert Gooden', 'Cultural Heritage', 'Scottish development Agency', '319', '1980', '905574028', 1, 'Available'),
(3478, 'CL25357/1', 'Human Sacrifice and the supernatural', 'Lawrence E.Y. Mbogoni', 'Cultural Heritage', 'Mkuki na Nyota', '319', '2013', '978-9987-08-242-1', 1, 'Available'),
(3479, 'CL25358/1', 'Financing Educational Development', 'International Development Research Centre', 'Public Health & Wellness', '', '319', '1982', '0 88936 361 7', 1, 'Available'),
(3480, 'CL25359/1', 'Programme Review and forward budget', 'development expenditures', 'Policies & Governance', '', '319', '1992', 'N/A', 1, 'Available'),
(3481, 'CL25360/1', 'Programme Review and forward budget', 'Recurrent expenditures', 'Policies & Governance', '', '319', '1991', 'N/A', 1, 'Available'),
(3482, 'CL25361/1', 'LA SICILIA DEI CAVALIERI', 'Luciano', 'Cultural Heritage', '', '319', '2003', 'N/A', 1, 'Available'),
(3483, 'CL25362/1', 'Estimates of recurrent expenditure', 'Government', 'Policies & Governance', '', '319', '1977', 'N/A', 1, 'Available'),
(3484, 'CL25363/1', 'Songs and Politics in Eastern Africa', 'Kimani Njogu', 'Religion and Sprituality', 'Mkuki na Nyota', '319', '2007', '9987-449-42-5', 1, 'Available'),
(3485, 'CL25363/2', 'Songs and Politics in Eastern Africa', 'Kimani Njogu', 'Religion and Sprituality', 'Mkuki na Nyota', '319', '2007', '9987-449-42-5', 1, 'Available'),
(3486, 'CL25364/1', 'Estimates of recurrent expenditure', 'Government', 'Policies & Governance', '', '319', '1996', 'N/A', 1, 'Available'),
(3487, 'CL25365/1', 'District Allocation Budget', 'Government', 'Policies & Governance', '', '319', '2002', 'N/A', 1, 'Available'),
(3488, 'CL25366/1', 'Development Estimates', 'Government', 'Policies & Governance', '', '319', '1989', 'N/A', 1, 'Available'),
(3489, 'CL25367/1', 'District Allocation Budget', 'Government', 'Policies & Governance', '', '319', '2003', 'N/A', 1, 'Available'),
(3490, 'CL25368/1', 'Approved Programme and Budget f9r 1994-1995', 'Unesco', 'News & Bulletins', '', '319', '1994', 'N/A', 1, 'Available'),
(3491, 'CL25369/1', 'The Study of Animal Bones from Archaelogical sites', 'Raymond E. Chaplin', 'Education, Educational Reference & Youth', 'Seminar Press Inc.', '319', '1971', '0-12-816050-0', 1, 'Available'),
(3492, 'CL25370/1', 'Gerd Dengler', 'Messingstadt', 'Arts, Literature & Geography', '', '319', '1989', 'N/A', 1, 'Available'),
(3493, 'CL25371/1', 'Olduvai Gorge; My Search for Early', 'Mary Leakey', 'Education, Educational Reference & Youth', 'William Collins Sons & Co Glassgow', '319', '1979', '0-00-211613-8', 1, 'Available'),
(3494, 'CL25372/1', 'Programme review and Forward budget', 'Ngwabi Bhebe', 'Cultural Heritage', 'Gamsberg Macmillan', '319', '2002', '99916-0-371-9', 1, 'Available'),
(3495, 'CL25373/1', 'A Kuria Bibliography from Gosi Cultural Centre', 'Kirsten Alsaker Kjerland', 'Local History', 'Gosi Cultural Centre', '319', '1988', 'N/A', 1, 'Available'),
(3496, 'CL25374/1', 'Izingano ne Livola Lia Avalogooli', 'Joseph Olindo Ndanyi', 'Local History', 'Coollege of Education and External Studies', '319', '2006', '9966-7090-6-1', 1, 'Available'),
(3497, 'CL25375/1', 'Kenya Historical Review; The Jounal of the Historical Association of Kenya Vol 5 No. 1', 'William M. Ochieng', 'Reports & Proceedings', 'ÉALB', '319', '1977', 'N/A', 1, 'Available'),
(3498, 'CL25376/1', 'Shujaa', 'National Cohesion and intergration Commission', 'Phamplets and Advertisements', 'Shujaa fm', '319', '2003', 'N/A', 1, 'Available'),
(3499, 'CL25377/1', 'African Voices; Luo Spirituals', 'Samuel A. Otieno', 'Religion and Sprituality', 'Acts Press', '319', '1990', '9966-41-018-X', 1, 'Available'),
(3500, 'CL25378/1', 'Nyani News', 'Institute of Primate Research', 'Phamplets and Advertisements', 'Institute of Primate Research', '319', '2019', 'N/A', 1, 'Available'),
(3501, 'CL25379/1', '18th Nairobi international Book Fair', 'Kenya Publishers Association', 'Phamplets and Advertisements', 'Kenya Publishers Association', '319', '2015', 'N/A', 1, 'Available'),
(3502, 'CL25380/1', '', '', '', '', '319', '', '0-7207-0840-0', 1, 'Available'),
(3503, 'CL25381/1', 'National Development plan 2002-2008', 'Government', 'Policies & Governance', '', '319', '', 'N/A', 1, 'Available'),
(3504, 'CL25382/1', 'Estimates of Recurrent Expenditure', 'Government', 'Policies & Governance', '', '319', '1984', 'N/A', 1, 'Available'),
(3505, 'CL25383/1', 'Programme Review and Forward Budget', 'Development Expenditures', 'Policies & Governance', '', '319', '1992', 'N/A', 1, 'Available'),
(3506, 'CL25384/1', 'District allocation Budget', 'Government', 'Policies & Governance', '', '319', '2003', 'N/A', 1, 'Available'),
(3507, 'CL25385/1', 'Jesus through the eyes of Mark', 'SDA', 'Religion and Sprituality', '', '319', '2005', '996694334-X', 1, 'Available'),
(3508, 'CL25386/1', 'Kenyatta and the Politics of Kenya', 'Guy Arnold', 'Local History', 'Transafrica', '319', '1974', 'DCl 100 147', 1, 'Available'),
(3509, 'CL25387/1', 'The New Testament', 'N/A', 'Religion and Sprituality', 'Gospel Teachers', '319', '', 'N/A', 1, 'Available'),
(3510, 'CL25388/1', 'The Acrican Past', 'Basil', 'Local History', 'Longman', '319', '1964', 'DCL 100 22', 1, 'Available'),
(3511, 'CL25389/1', 'Planet in peril', 'Dasmann', 'Education, Educational Reference & Youth', 'Unesco', '319', '1972', 'N/A', 1, 'Available'),
(3512, 'CL25390/1', 'Essentials of Development Planning', 'Moses Wekesa', 'Environmental & Sustainability', 'Phoenix', '319', '2006', '9966 47 165 0', 1, 'Available'),
(3513, 'CL25390/2', 'Essentials of Development Planning', 'Moses Wekesa', 'Environmental & Sustainability', 'Phoenix', '319', '2006', '9966 47 165 0', 1, 'Available'),
(3514, 'CL25391/1', 'Supplementary estimate', 'Recurrent expenditure', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3515, 'CL25392/1', 'Kenya Business Directory', 'Nation', 'News & Bulletins', 'Nation', '319', '1990', 'N/A', 1, 'Available'),
(3516, 'CL25393/1', 'District Allocation Budget', 'Government', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3517, 'CL25393/2', 'District Allocation Budget', 'Government', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3518, 'CL25394/1', 'Programme Review and Forward Budget', 'Recurrent expenditures', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3519, 'CL25395/1', 'Estimates of Revenue', 'Government', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3520, 'CL25396/1', 'Estimates of recurrent expenditures', 'Government', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3521, 'CL25397/1', 'Development Estimates', 'Government', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3522, 'CL25398/1', 'Estimates of recurrent expenditures', 'Government', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3523, 'CL25399/1', 'Programme review and Forward budget', 'Ministry of Finance', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3524, 'CL25400/1', 'Estimates of recurrent expenditures', 'Government', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3525, 'CL25401/1', 'Programme review and Forward budget', 'Ministry of Finance', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3526, 'CL25402/1', 'Programme review and Forward budget', 'Ministry of Finance', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3527, 'CL25403/1', 'Development supplementary estimate', 'Government', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3528, 'CL25404/1', 'Say yes for children', 'Unicef', 'Education, Educational Reference & Youth', 'UN', '319', '', 'N/A', 1, 'Available'),
(3529, 'CL25404/2', 'Say yes for children', 'Unicef', 'Education, Educational Reference & Youth', 'UN', '319', '', 'N/A', 1, 'Available'),
(3530, 'CL25405/1', 'Programme review and Forward budget', 'Ministry of Finance', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3531, 'CL25406/1', 'Development Estimates', 'Government', 'Policies & Governance', 'Government', '319', '', 'N/A', 1, 'Available'),
(3532, 'CL25407/1', 'His Worship Mayor Prof. Nathan Kahara 5th Nairobi Mayor/Ambassador for Peace: his Profile, Family & Other Leaders', 'N/A', 'Community Development', '', '319', '', 'N/A', 1, 'Available'),
(3533, 'CL25408/1', 'Ashakwu: Jounal of Ceramics Vol.11', 'Prof. A. M Ahuwan', 'Cultural Heritage', 'CerAN', '319', '2014', '1597-3182', 1, 'Available'),
(3534, 'CL25409/1', 'Social-Cultural profile of the Digo and Duruma Communities, Kwale District; Implications of Development', 'Ministry of Gender, Sports, Culture and Social Services', 'Community Development', 'GOK', '319', '2004', 'N/A', 1, 'Available'),
(3535, 'CL25410/1', 'East African Governments Handbook', 'KASNEB', 'Policies & Governance', 'KASNEB', '319', '2015', 'N/A', 1, 'Available'),
(3536, 'CL25490', 'Working Towards a Convention', 'ICH Unesco', 'Policies & Governance', 'Unesco', '319', '', 'N/A', 1, 'Available'),
(3537, 'CL25491', 'Questions & Answers', 'ICH Unesco', 'Cultural Heritage', 'Unesco', '319', '', 'N/A', 1, 'Available'),
(3538, 'CL25492', 'We the People;The constitution of America', 'US', 'Policies & Governance', 'US', '319', '1987', 'N/A', 1, 'Available'),
(3539, 'CL25493', 'Kweli za Maisha Changamoto ya Mawasiliano', 'Unicef', 'Community Development', 'Unesco', '319', '', 'N/A', 1, 'Available'),
(3540, 'CL25494', 'Rafiki wa Fasihi Vol. 1 No. 1', 'The Literary Friend', 'Arts, Literature & Geography', 'Literary Magazine of Africa Kiswahili', '319', '2009', '978-89-963013-1-8', 1, 'Available'),
(3541, 'CL25495', 'A Resource book for Facts for Life;All for Health', 'Glen Williams', 'Public Health & Wellness', 'Unicef', '319', '1989', 'N/A', 1, 'Available'),
(3542, 'CL25496', 'Afro-Arab Cultural Studies & Researches', 'Afro-Arab Cultural Institute', 'Education, Educational Reference & Youth', 'Afro-Arab Cultural Institute', '319', '2009', 'N/A', 1, 'Available'),
(3543, 'CL25497', 'Afro-Arab Cultural Institute Heritage of African Languages Manuscripts (Ajami)', 'Helmi Sharawy', 'Education, Educational Reference & Youth', 'Afro-Arab Cultural Institute', '319', '2005', 'N/A', 1, 'Available'),
(3544, 'CL25498', 'Mbalamwezi in Black Mamba', '', 'Phamplets and Advertisements', '', '319', '1990', 'N/A', 1, 'Available'),
(3545, 'CL25499', 'Kifungo cha Obatala na Michezo Mingine', 'Obotunde Ijimere', 'Arts, Literature & Geography', 'Heinemann', '319', '1978', 'N/A', 1, 'Available'),
(3546, 'CL25500', 'In Remembranceof a King;Frederick II of Prussia 1712-1786', 'Inter Nationes', 'Local History', 'Inter Nationes', '319', '1986', 'N/A', 1, 'Available'),
(3547, 'CL25501', 'Dust and the Shadow', 'Valerie Cuthbert', 'Arts, Literature & Geography', 'Phoenix Mal', '319', '1988', '9966-47-490-0', 1, 'Available'),
(3548, 'CL25502', 'The Federal Republic of Germany: A Land of Top-Ranking Research', 'Karl-Heinz and Rolf H. Simen', 'Education, Educational Reference & Youth', 'Inter Nationes Bonn', '319', '1986', 'N/A', 1, 'Available'),
(3549, 'CL25503', 'i Fara-Osy sy Ravavimatoa', 'Fara-Mbuzi', 'Arts, Literature & Geography', 'Fara-Mbuzi', '319', '1982', '9976-913-01-6', 1, 'Available'),
(3550, 'CL25504', 'Amaica traditional Food Festival with Royco', 'China Centre', 'Phamplets and Advertisements', 'China Centre', '319', '2008', 'N/A', 1, 'Available'),
(3551, 'CL25505', 'insieme Estate', 'Cortona', 'Cultural Heritage', 'Musicarte Cultural Festivals', '319', '2004', 'N/A', 1, 'Available'),
(3552, 'CL25506', 'Museums the Real Thing', 'KZN Museums', 'Phamplets and Advertisements', 'KZN Museums', '319', '', 'N/A', 1, 'Available'),
(3553, 'CL25507', 'Basic Principles of Vocational Rehabilitation of the Disabled', 'International Labour Office', 'Policies & Governance', 'International Labour Office', '319', '1970', 'N/A', 1, 'Available'),
(3554, 'CL25508', 'Service Charter;Deparment of Culture', 'GOK', 'Policies & Governance', 'Government Printer', '319', '', 'N/A', 1, 'Available'),
(3555, 'CL25509', 'Nyero & Other Rock Art Sites in Eastern Uganda', 'Department of Museums and Monuments', 'Cultural Heritage', 'Tara', '319', '2013', '9966-7453-7-8', 1, 'Available'),
(3556, 'CL25510', 'The Status of Women;An Annotated Biography 1990-1995', 'Unesco', 'Community Development', 'Unesco', '319', '1996', 'N/A', 1, 'Available'),
(3557, 'CL25511', 'Kimo cha Uguzi', 'Onesmus Njoroge', 'Local History', 'Kenya Country Herbs Medicines Supply Company', '319', '', 'N/A', 1, 'Available'),
(3558, 'CL25512', 'Danida\'s Plan of Action for Development Assistance to Women;County Programme', 'Danida Ministry of Foreign Affairs', 'Community Development', 'Government Printer', '319', '1989', 'N/A', 1, 'Available'),
(3559, 'CL25513', 'Assignment Children;Vitamin a deficiency and xerophthalmia', 'Susan j. Eastman', 'Education, Educational Reference & Youth', 'Unicef', '319', '1987', '0004-5128', 1, 'Available'),
(3560, 'CL25514', 'Race Mixture', 'Harry L. Shapiro', 'Education, Educational Reference & Youth', 'Unesco', '319', '1953', 'SS.65/II.10b/A', 1, 'Available'),
(3561, 'CL25515', 'Tribe Z Battle for Land and Language', 'Hugh Brody', 'Local History', 'Redpepper', '319', '1999', '0-904286-69-X', 1, 'Available'),
(3562, 'CL25516', 'Vocational Assessment and Work Preparation Centres for the Disabled', 'International Labour Office', 'Community Development', 'International Labour Office', '319', '1974', '92-2-100993-9', 1, 'Available'),
(3563, 'CL25517', 'Kustler der Welt', 'Jimmy Pike', 'Local History', 'Cantz', '319', '1990', '3-89-322-300-2', 1, 'Available'),
(3564, 'CL25518', 'East Africa Jounal;Commentry thought on Kenya Research in African Music, Somali Irredentism', 'The East African Institute of Social and Cultural Affairs', 'Reports & Proceedings', 'The East African Institute of Social and Cultural Affairs', '319', '1964', 'N/A', 1, 'Available'),
(3565, 'CL25519', 'Development Dialogue', 'International Development Cooperation', 'Policies & Governance', 'Dag Hammarskjold foudation Uppsala', '319', '1981', 'N/A', 1, 'Available'),
(3566, 'CL25520', 'Studies and Documents', 'ACROTANAL', 'Arts, Literature & Geography', 'ACROTANAL', '319', '1980', 'N/A', 1, 'Available'),
(3567, 'CL25521', 'Prince Claus Fund Jounal;Special issue on Asylum & Migration', 'C Fonds', 'Community Development', 'C Fonds', '319', '2004', 'N/A', 1, 'Available'),
(3568, 'CL25522', 'Mikarire na Mituurire ya Amiru', 'Fr. Nyaga', 'Cultural Heritage', 'Fr. Nyaga', '319', '1983', 'N/A', 1, 'Available'),
(3569, 'CL25523', 'The Indigenous Knowlege of the Ameru of Kenya', 'Njuguna Gichere', 'Education, Educational Reference & Youth', 'Meru Museum', '319', '2008', 'N/A', 1, 'Available'),
(3570, 'CL25524', 'Chronology Migration and drought in interlacustrine Africa', 'J. B. Webster', 'Education, Educational Reference & Youth', 'Longman Dalhousie University Press', '319', '', 'N/A', 1, 'Available'),
(3571, 'CL25525', 'International Jounal of Rehabilitation Research Vol. 4 No. 3', 'ICCROM', 'Phamplets and Advertisements', 'ICCROM', '319', '1982', 'N/A', 1, 'Available'),
(3572, 'CL25526', 'The planning of library and documentation services', 'G.V .Penna', 'Education, Educational Reference & Youth', 'Unesco', '319', '1969', 'N/A', 1, 'Available'),
(3573, 'CL25527', 'The Role of Libraries in promoting Awareness on Environmental Problems', 'Unesco', 'Environmental & Sustainability', 'Unesco', '319', '1991', 'N/A', 1, 'Available'),
(3574, 'CL25528', 'Experimental period of the International Baccalaureate: objectives and results', 'Unesco', 'News & Bulletins', 'SRO', '319', '1974', '92 3 101226 6', 1, 'Available'),
(3575, 'CL25529', 'JOLISO', 'Chris Wanjala', 'Education, Educational Reference & Youth', 'EALB', '319', '1973', 'N/A', 1, 'Available'),
(3576, 'CL25530', 'what now', 'Dag Hammarskjold', 'Reports & Proceedings', 'UN', '319', '1975', 'N/A', 1, 'Available'),
(3577, 'CL25531', 'AZANIA', 'N/A', 'Manuals', 'EAK', '319', '1977', 'N/A', 1, 'Available'),
(3578, 'CL25532', 'AJANTA', 'Debatable Mitra', 'Arts, Literature & Geography', 'Director General Archaeological survey of India', '319', '1983', 'N/A', 1, 'Available'),
(3579, 'CL25533', 'African Writers on the Air', 'DW Dokumente', 'Arts, Literature & Geography', '', '319', '1984', 'N/A', 1, 'Available'),
(3580, 'CL25534', 'A demographic Analysis of East Africa', 'Mette Monsted', 'Reports & Proceedings', 'Bohuslaningens AB', '319', '1978', '91 7106 126 6', 1, 'Available'),
(3581, 'CL25535', 'Thought and Practice', 'Odera Oruka', 'Community Development', 'EALB', '319', '1976', 'N/A', 1, 'Available'),
(3582, 'CL25536', 'Population Bulletin', 'N/A', 'Reports & Proceedings', '', '319', '1979', 'N/A', 1, 'Available'),
(3583, 'CL25537', 'The African Iron Age', 'Shinnie', 'Cultural Heritage', 'Clarendon', '319', '1971', 'N/A', 1, 'Available'),
(3584, 'CL25538', 'Culture the way to solidarity in development', 'Cardinal Poupard', 'Cultural Heritage', '', '319', '1989', 'N/A', 1, 'Available'),
(3585, 'CL25539', 'International cooperation and partnership', 'Konrad', 'News & Bulletins', '', '319', '1983', '3 88368 054 0', 1, 'Available'),
(3586, 'CL25540', 'Zimwi la Ukimwi', 'Sekundu Morgan', 'Education, Educational Reference & Youth', 'Morsel', '319', '2010', '9966 9917 7 8', 1, 'Available'),
(3587, 'CL25541/1', 'The use of analog and digital computers in hydrology', 'Unesco', 'Reports & Proceedings', 'IASH', '319', '1969', 'N/A', 1, 'Available'),
(3588, 'CL25541/2', 'The use of analog and digital computers in hydrology', 'Unesco', 'Reports & Proceedings', 'IASH', '319', '1969', 'N/A', 1, 'Available'),
(3589, 'CL25542', 'A manual on mass media in population and development', 'Unesco', 'Reports & Proceedings', 'UN', '319', '1977', '92 3 101439 0', 1, 'Available'),
(3590, 'CL25543', 'The use of folk media for community motivation', 'Crispin', 'Community Development', 'Family planning', '319', '1988', 'N/A', 1, 'Available'),
(3591, 'CL25544', 'The Kuliak Languages of Eastern Uganda', 'Bernd Heine', 'Cultural Heritage', 'East African Publishing House', '319', '1976', 'N/A', 1, 'Available'),
(3592, 'CL25545', 'Inter-Regional Migration in Tropical Africa;London Institute of British Geographers Special Publication No. 8', 'I. Masser , W. Gould', 'Arts, Literature & Geography', 'London Institute of British Geographers', '319', '1975', 'N/A', 1, 'Available'),
(3593, 'CL25546', 'New Technologies for the Third world', 'Der Bundesminister fur Forschung und Technologie', 'Environmental & Sustainability', 'Der Bundesminister fur Forschung und Technologie', '319', '', 'N/A', 1, 'Available'),
(3594, 'CL25547', 'Earliest Civilizations of Near East', 'james Mellaart', 'Education, Educational Reference & Youth', 'Thames and Hudson', '319', '1965', 'N/A', 1, 'Available'),
(3595, 'CL25548', 'India 1993', 'Research and References', 'Education, Educational Reference & Youth', 'Research and References', '319', '1994', '0073-6090', 1, 'Available'),
(3596, 'CL25549', 'Fourth Triennale-India 1978', 'G. R. Santosh', 'Reports & Proceedings', 'Lalit Kala Akademi Rabindra Bhawan New Delhi', '319', '', 'N/A', 1, 'Available'),
(3597, 'CL25550', 'Programmes and priorities', 'Unesco', 'Events & Programs', 'Unesco', '319', '', 'N/A', 1, 'Available'),
(3598, 'CL25551', 'Properties of Building Materials', 'H.J Eldridge', 'Environmental & Sustainability', 'MTP construction', '319', '1974', '0 85200108 8', 1, 'Available'),
(3599, 'CL25552', 'Golgenin Renkleri', 'Ministry of culture and Tourism', 'Education, Educational Reference & Youth', 'Director General', '319', '2008', '978 975 17 3381 8', 1, 'Available'),
(3600, 'CL25553', 'Chile cultural', 'Ministry of foreign affairs', 'Cultural Heritage', '', '319', '', 'N/A', 1, 'Available'),
(3601, 'CL25554', 'Polymers in Concrete', 'The concrete society', 'Environmental & Sustainability', 'The construction press', '319', '1976', '0 904406 20 2', 1, 'Available'),
(3602, 'CL25555', 'African Exploration', 'David Mountfield', 'Local History', 'The Hamlyn', '319', '1976', '0 600 01131 3', 1, 'Available'),
(3603, 'CL25556', 'Busara', 'Kimani Gecau', 'Education, Educational Reference & Youth', 'KLB', '319', '1976', 'N/A', 1, 'Available'),
(3604, 'CL25557', 'Management of natural resources in Africa', 'Unesco', 'Community Development', 'UN', '319', '1978', '92 3 101587 7', 1, 'Available'),
(3605, 'CL25558', 'Resolutions', 'Unesco', 'Reports & Proceedings', 'UN', '319', '1971', 'N/A', 1, 'Available'),
(3606, 'CL25559', 'Traumzeichen', 'N/A', 'Public Health & Wellness', '', '319', '', 'N/A', 1, 'Available'),
(3607, 'CL25560', 'About Kenya', 'Kenya Tourism Federation', 'Public Health & Wellness', '', '319', '2004', 'N/A', 1, 'Available'),
(3608, 'CL25561', 'Oriental Rugs and Carpets', 'Fabio', 'Environmental & Sustainability', 'The Hamlyn', '319', '1972', '0 600 02888 7', 1, 'Available'),
(3609, 'CL25562', 'Theater Theater', 'Manfred', 'Arts, Literature & Geography', '', '319', '', '3 924056 00 5', 1, 'Available'),
(3610, 'CL25563', 'Cultural Policy in Colombia; Studies on Cultural Policies', 'Jorge Eliecer Ruiz', 'Education, Educational Reference & Youth', 'Unesco', '319', '1977', '92-3-101417-X', 1, 'Available'),
(3611, 'CL25564', 'Cultural Policy in Coasta Rica; Studies on Cultural Policies', 'Samuel Rovinski', 'Education, Educational Reference & Youth', 'Unesco', '319', '1977', '92-3-101400-5', 1, 'Available'),
(3612, 'CL25565', 'Bibliographical Services throughout the world 1970-74', 'Marcelle Beaudiquez', 'Education, Educational Reference & Youth', 'Unesco', '319', '1977', '92-3-201394-7', 1, 'Available'),
(3613, 'CL25566', 'The Zambezian Pasy Studies in Central African History', 'Eric Stokes and Richard Brown', 'Education, Educational Reference & Youth', 'Manchester University Press', '319', '1966', '7190-0261-3', 1, 'Available'),
(3614, 'CL25567', 'Pastrolism in Tropical Africa', 'Theodore Monod', 'Education, Educational Reference & Youth', 'oxford University Press', '319', '1975', '0-19-724196-4', 1, 'Available'),
(3615, 'CL25568', 'Terra Mandre; 1,200 World Food Communities', 'Fabio bailo', 'Education, Educational Reference & Youth', 'Slow Food Editore', '319', '2004', 'N/A', 1, 'Available'),
(3616, 'CL25569', 'Culture, Trade and Globalisation;Questions and Answers', 'Unesco', 'Environmental & Sustainability', 'Unesco Publishing', '319', '2003', '92-3-103890-7', 1, 'Available'),
(3617, 'CL25570', 'Mission to Repress; Torture,Illegal Detentions and Extra-Judicial Killings by the Kenyan Police', 'Kenya Human Rights Commission', 'Local History', 'khrc', '319', '1998', 'N/A', 1, 'Available'),
(3618, 'CL25571', 'Mau Mau Kizuizini', 'Ruth Wambui', 'Local History', '', '319', '', 'N/A', 1, 'Available'),
(3619, 'CL25572', 'The making of Man and Woman Under Abagusii Customary Laws', 'N.K. nyang\'era', 'Cultural Heritage', 'Dal-Rich Printers', '319', '1999', '9966-9643-0-4', 1, 'Available'),
(3620, 'CL25573', 'Foreign ViewPoints;Multicultural Literature in Germany', 'Irmgard Ackermann', 'Education, Educational Reference & Youth', 'Inter nationes', '319', '1999', 'N/A', 1, 'Available'),
(3621, 'CL25574', '4th International Congress of Culture and Development;Thinking the World from Culture: towards Peace, Trith, and Human Emancipation', 'Palcogra', 'Policies & Governance', 'Palcogra', '319', '2005', 'N/A', 1, 'Available'),
(3622, 'CL25575/1', 'See Us Telling Our Creative story', 'Kenneth Fowler', 'Arts, Literature & Geography', 'Creative Scottland', '319', '', 'N/A', 1, 'Available'),
(3623, 'CL25575/2', 'See Us Telling Our Creative story', 'Kenneth Fowler', 'Arts, Literature & Geography', 'Creative Scottland', '319', '', 'N/A', 1, 'Available'),
(3624, 'CL25576', 'Wanhao Cartoon', 'Wanhao Cartoon', 'Arts, Literature & Geography', 'Wanhao Cartoon', '319', '2012', 'N/A', 1, 'Available'),
(3625, 'CL25577', 'Renewed Growth through the Co-operative Movement;Sessional Paper No.4 of 1987', 'Ministry of Co-operative Development', 'Reports & Proceedings', 'Government Printer', '319', '1987', 'N/A', 1, 'Available'),
(3626, 'CL25578', 'Kenya Yearbook 1977;Uhuru 13', 'Kul Bhushan', 'Reports & Proceedings', 'Uhuru', '319', '1977', 'N/A', 1, 'Available'),
(3627, 'CL25579', 'Kenya Efforts to Conserve soil, Water and forests in 1983', 'GoK', 'Environmental & Sustainability', 'Government Printer', '319', '1983', 'N/A', 1, 'Available'),
(3628, 'CL25580', 'Kenya 79;Uhuru 15', 'Kul Bhushan', 'Reports & Proceedings', 'Newsspread International', '319', '1979', 'N/A', 1, 'Available'),
(3629, 'CL25581', 'Gender-Sensitive education statistics and Indicators; a Practical guide', 'Unesco', 'Education, Educational Reference & Youth', 'Unesco', '319', '1997', 'N/A', 1, 'Available'),
(3630, 'CL25582', 'Intergrated Project in Arid Lands (IPAL);IPAL Technical Report No. A-2 background History of Mt. Kulal Region of Kenya', 'MAB/Unep', 'Education, Educational Reference & Youth', 'MAB/Unep', '319', '1979', 'N/A', 1, 'Available'),
(3631, 'CL25583', 'Intergrated Project in Arid Lands (IPAL);IPAL Technical Report No. F-1 background History of Mt. Kulal Region of Kenya', 'MAB/Unep', 'Education, Educational Reference & Youth', 'MAB/Unep', '319', '1981', 'N/A', 1, 'Available'),
(3632, 'CL25584/1', 'The State of the World\'s Children 2004; For Every Child Health, Education, Equality, Protection Aadvance Humanity', 'Unicef', 'Community Development', 'Unicef', '319', '2004', '92-806-3792-1', 1, 'Available'),
(3633, 'CL25584/2', 'The State of the World\'s Children 2004; For Every Child Health, Education, Equality, Protection Aadvance Humanity', 'Unicef', 'Community Development', 'Unicef', '319', '2004', '92-806-3792-1', 1, 'Available'),
(3634, 'CL25584/3', 'The State of the World\'s Children 2004; For Every Child Health, Education, Equality, Protection Aadvance Humanity', 'Unicef', 'Community Development', 'Unicef', '319', '2004', '92-806-3792-1', 1, 'Available'),
(3635, 'CL25585', 'The State of the World\'s Children 1993', 'Unicef', 'Community Development', 'Unicef', '319', '1993', '0-19-2623869', 1, 'Available'),
(3636, 'CL25586', 'Afro Asia Culture Studies;The Soviet Union/Sub-Saharan Africa/ The Middle East China/India and Pakistan/Southeast Asia/Japan', 'Erwin Rosenfeld and Harriet', 'Education, Educational Reference & Youth', 'Barron\'s Educational Series Inc.', '319', '1976', '0-8120-0993-2', 1, 'Available'),
(3637, 'CL25587', 'Symposium on Investigations and Resources of the Carribean Sea and Adjacent Regions', 'CICAR/Unesco/FAO', 'Education, Educational Reference & Youth', 'CICAR/Unesco/FAO', '319', '1971', 'N/A', 1, 'Available'),
(3638, 'CL25588', 'Summary of Chapter Four on the characteristics of chronically Poor Households', 'Prof. Charles o. Okidi and Dr. Rosemary Atieno', 'Community Development', 'Prof. Charles o. Okidi and Dr. Rosemary Atieno', '319', '2010', 'T50/70882/07', 1, 'Available'),
(3639, 'CL25589', 'Chronic Poverty Among the Elderly in Uganda:Perceptions, Experiences and Policy Issues', 'Innocent Najjumba Mulindwa', 'Community Development', 'Innocent Najjumba Mulindwa', '319', '2008', 'N/A', 1, 'Available'),
(3640, 'CL25590', 'Ant by Sironka Proposal', 'Sironka', 'Events & Programs', 'Sironka', '319', '2008', 'N/A', 1, 'Available'),
(3641, 'CL25591', 'Can Universal Pension help in Reducing Poverty in old age in Kenya;Policy working Paper', 'Lazarus Ksia Keizi', 'Policies & Governance', 'Retirement Benefit Authority', '319', '2007', 'N/A', 1, 'Available');
INSERT INTO `bookpreset` (`id`, `book_id`, `book_title`, `book_author`, `book_genre`, `publisher`, `location`, `year_published`, `isbn`, `quantity`, `status`) VALUES
(3642, 'CL25592', 'Chronic Poverty and Older People in the Developing World', 'Amanda Heslop and Mark Gorman', 'Community Development', 'HelpAge International', '319', '2002', '1-904049-09-5', 1, 'Available'),
(3643, 'CL25593', 'Off the Margins: Older People, Human Rights and Poverty Reduction in Africa in the 21st Century; Linking ageing to national Poverty Policies, the PRSPs and the Millenium Development Goals', 'HelpAge International', 'Community Development', 'HelpAge International', '319', '2003', 'N/A', 1, 'Available'),
(3644, 'CL25594', 'Chronic Poverty and Older People in South Africa', 'Julian May', 'Community Development', 'HelpAge International', '319', '2003', '1-904049-24-9', 1, 'Available'),
(3645, 'CL25595', 'Carbon and Nitrogen Partitioning in Potted Orange (Citrus sinensis) Buildings as Influenced by Shade,Watering Frequency and Fertigation Nitrogen Concentration', 'Jabez Cheruyoit Buigutt', 'Education, Educational Reference & Youth', 'JKUAT', '319', '2007', 'N/A', 1, 'Available'),
(3646, 'CL25596', 'A Revitalization Proposal Document', 'E. P. Nakitare', 'Policies & Governance', 'Ministry of Culture and Social Services', '319', '', 'N/A', 1, 'Available'),
(3647, 'CL25597', 'Female Educational Attainment labour Force Participation and Fertiity in Kenya', 'Odege Dorcas Williams', 'Community Development', 'Odege Dorcas Williams', '319', '1993', 'N/A', 1, 'Available'),
(3648, 'CL25598', 'Project presentation', 'Anne W Kahembe', 'Education, Educational Reference & Youth', 'Anne W Kahembe', '319', '', 'CAOM-51/2003', 1, 'Available'),
(3649, 'CL25599', 'Recommendations and Plan of Action adopted by the National Seminar on Networking of science and Technology Information Systems', 'J.K.Chepkwony', 'Policies & Governance', 'Unesco /ROSTA', '319', '1994', 'N/A', 1, 'Available'),
(3650, 'CL25600', 'Mwenge jarida la Chama cha Kiswahili cha Chuo cha Kisii (KISCO)', 'Joseph mburu', 'Arts, Literature & Geography', 'KISCO', '319', '1987', 'N/A', 1, 'Available'),
(3651, 'CL25601', 'KIE Research Report Series No 64: executive Summaryy on the Needs Assessment for the Secondary Educational curriculum', 'KIE', 'Reports & Proceedings', 'KIE', '319', '1999', 'N/A', 1, 'Available'),
(3652, 'CL25602', 'Study of the Atr-Ugikuyu', 'Peter Kiarie Njoroge', 'Education, Educational Reference & Youth', 'Peter Kiarie Njoroge', '319', '1997', 'N/A', 1, 'Available'),
(3653, 'CL25603', 'In-Country Technical assistace for Establishment of an Institute of Traditional medicine', 'Dr. A. W. Inambao', 'Cultural Heritage', 'CAFS', '319', '', 'N/A', 1, 'Available'),
(3654, 'CL25604', 'Ethiopian hancrafts Center', 'BeFekadu Terefe', 'Cultural Heritage', 'BeFekadu Terefe', '319', '1992', 'N/A', 1, 'Available'),
(3655, 'CL25605', '15th Ordinary Session of the ICA Executive Council', 'African Cultural Institute', 'Reports & Proceedings', 'African Cultural Institute', '319', '1987', 'N/A', 1, 'Available'),
(3656, 'CL25606', 'Periodic report 2004 Latin America and the Caribbean', 'Unesco', 'Reports & Proceedings', 'Unesco', '319', '2004', 'N/A', 1, 'Available'),
(3657, 'CL25607', 'Researchers and Inventors of Science and Technology in the German Museum', '', 'Education, Educational Reference & Youth', 'Inter Nationes Bonn', '319', '1985', 'N/A', 1, 'Available'),
(3658, 'CL25608', 'Fibre Reinforced Cement and Concrete Vol. 2', 'Adam Neville', 'Manuals', 'The construction press', '319', '1975', '0-904406-27-X', 1, 'Available'),
(3659, 'CL25609', 'The Progress of the Nations', 'Unicef', 'Community Development', 'Unicef', '319', '1994', 'N/A', 1, 'Available'),
(3660, 'CL25610', 'Strategy for Improved Nutrition of Children and Women in Developing Countries', 'Unicef', 'Community Development', 'Unicef', '319', '1990', '1013-3194', 1, 'Available'),
(3661, 'CL25611', 'Government of Kenya/Unicef Programme of Cooperation for hild Survival and Development Preview Meeting', 'GoK', '', 'GOK', '319', '1988', 'N/A', 1, 'Available'),
(3662, '1111', 'Java programming', 'Wilfred Omwoyo', 'Computing  Tech', 'Wilbay Ltd', '319', '1982', '', 1, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_id` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `year_published` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `location` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_ids`
--

CREATE TABLE `book_ids` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_ids`
--

INSERT INTO `book_ids` (`id`, `code`) VALUES
(1, 'CL25001'),
(2, 'CL25002'),
(3, 'CL25003'),
(4, 'CL25004'),
(5, 'CL25005'),
(6, 'CL25006'),
(7, 'CL25007'),
(8, 'CL25008'),
(9, 'CL25009'),
(10, 'CL25010'),
(11, 'CL25011'),
(12, 'CL25012'),
(13, 'CL25013'),
(14, 'CL25014'),
(15, 'CL25015'),
(16, 'CL25016'),
(17, 'CL25017'),
(18, 'CL25018'),
(19, 'CL25019'),
(20, 'CL25020'),
(21, 'CL25021'),
(22, 'CL25022'),
(23, 'CL25023'),
(24, 'CL25024'),
(25, 'CL25025'),
(26, 'CL25026'),
(27, 'CL25027'),
(28, 'CL25028'),
(29, 'CL25029'),
(30, 'CL25030'),
(31, 'CL25031'),
(32, 'CL25032'),
(33, 'CL25033'),
(34, 'CL25034'),
(35, 'CL25035'),
(36, 'CL25036'),
(37, 'CL25037'),
(38, 'CL25038'),
(39, 'CL25039'),
(40, 'CL25040'),
(41, 'CL25041'),
(42, 'CL25042'),
(43, 'CL25043'),
(44, 'CL25044'),
(45, 'CL25045'),
(46, 'CL25046'),
(47, 'CL25047'),
(48, 'CL25048'),
(49, 'CL25049'),
(50, 'CL25050'),
(51, 'CL25051'),
(52, 'CL25052'),
(53, 'CL25053'),
(54, 'CL25054'),
(55, 'CL25055'),
(56, 'CL25056'),
(57, 'CL25057'),
(58, 'CL25058'),
(59, 'CL25059'),
(60, 'CL25060'),
(61, 'CL25061'),
(62, 'CL25062'),
(63, 'CL25063'),
(64, 'CL25064'),
(65, 'CL25065'),
(66, 'CL25066'),
(67, 'CL25067'),
(68, 'CL25068'),
(69, 'CL25069'),
(70, 'CL25070'),
(71, 'CL25071'),
(72, 'CL25072'),
(73, 'CL25073'),
(74, 'CL25074'),
(75, 'CL25075'),
(76, 'CL25076'),
(77, 'CL25077'),
(78, 'CL25078'),
(79, 'CL25079'),
(80, 'CL25080'),
(81, 'CL25081'),
(82, 'CL25082'),
(83, 'CL25083'),
(84, 'CL25084'),
(85, 'CL25085'),
(86, 'CL25086'),
(87, 'CL25087'),
(88, 'CL25088'),
(89, 'CL25089'),
(90, 'CL25090'),
(91, 'CL25091'),
(92, 'CL25092'),
(93, 'CL25093'),
(94, 'CL25094'),
(95, 'CL25095'),
(96, 'CL25096'),
(97, 'CL25097'),
(98, 'CL25098'),
(99, 'CL25099'),
(100, 'CL25100'),
(101, 'CL25101'),
(102, 'CL25102'),
(103, 'CL25103'),
(104, 'CL25104'),
(105, 'CL25105'),
(106, 'CL25106'),
(107, 'CL25107'),
(108, 'CL25108'),
(109, 'CL25109'),
(110, 'CL25110'),
(111, 'CL25111'),
(112, 'CL25112'),
(113, 'CL25113'),
(114, 'CL25114'),
(115, 'CL25115'),
(116, 'CL25116'),
(117, 'CL25117'),
(118, 'CL25118'),
(119, 'CL25119'),
(120, 'CL25120'),
(121, 'CL25121'),
(122, 'CL25122'),
(123, 'CL25123'),
(124, 'CL25124'),
(125, 'CL25125'),
(126, 'CL25126'),
(127, 'CL25127'),
(128, 'CL25128'),
(129, 'CL25129'),
(130, 'CL25130'),
(131, 'CL25131'),
(132, 'CL25132'),
(133, 'CL25133'),
(134, 'CL25134'),
(135, 'CL25135'),
(137, 'CL25137'),
(138, 'CL25138'),
(139, 'CL25139'),
(140, 'CL25140'),
(141, 'CL25141'),
(142, 'CL25142'),
(143, 'CL25143'),
(144, 'CL25144'),
(145, 'CL25145'),
(146, 'CL25146'),
(147, 'CL25147'),
(148, 'CL25148'),
(149, 'CL25149'),
(150, 'CL25150'),
(151, 'CL25151'),
(152, 'CL25152'),
(153, 'CL25153'),
(154, 'CL25154'),
(155, 'CL25155'),
(156, 'CL25156'),
(157, 'CL25157'),
(158, 'CL25158'),
(159, 'CL25159'),
(160, 'CL25160'),
(161, 'CL25161'),
(162, 'CL25162'),
(163, 'CL25163'),
(164, 'CL25164'),
(165, 'CL25165'),
(166, 'CL25166'),
(167, 'CL25167'),
(168, 'CL25168'),
(169, 'CL25169'),
(170, 'CL25170'),
(171, 'CL25171'),
(172, 'CL25172'),
(173, 'CL25173'),
(174, 'CL25174'),
(175, 'CL25175'),
(176, 'CL25176'),
(177, 'CL25177'),
(178, 'CL25178'),
(179, 'CL25179'),
(180, 'CL25180'),
(181, 'CL25181'),
(182, 'CL25182'),
(183, 'CL25183'),
(184, 'CL25184'),
(185, 'CL25185'),
(186, 'CL25186'),
(187, 'CL25187'),
(188, 'CL25188'),
(189, 'CL25189'),
(190, 'CL25190'),
(191, 'CL25191'),
(192, 'CL25192'),
(193, 'CL25193'),
(194, 'CL25194'),
(195, 'CL25195'),
(196, 'CL25196'),
(197, 'CL25197'),
(198, 'CL25198'),
(199, 'CL25199'),
(200, 'CL25200'),
(201, 'CL25201'),
(202, 'CL25202'),
(203, 'CL25203'),
(204, 'CL25204'),
(205, 'CL25205'),
(206, 'CL25206'),
(207, 'CL25207'),
(208, 'CL25208'),
(209, 'CL25209'),
(210, 'CL25210'),
(211, 'CL25211'),
(212, 'CL25212'),
(213, 'CL25213'),
(214, 'CL25214'),
(215, 'CL25215'),
(216, 'CL25216'),
(217, 'CL25217'),
(218, 'CL25218'),
(219, 'CL25219'),
(220, 'CL25220'),
(221, 'CL25221'),
(222, 'CL25222'),
(223, 'CL25223'),
(224, 'CL25224'),
(225, 'CL25225'),
(226, 'CL25226'),
(227, 'CL25227'),
(228, 'CL25228'),
(229, 'CL25229'),
(230, 'CL25230'),
(231, 'CL25231'),
(232, 'CL25232'),
(233, 'CL25233'),
(234, 'CL25234'),
(235, 'CL25235'),
(236, 'CL25236'),
(237, 'CL25237'),
(238, 'CL25238'),
(239, 'CL25239'),
(240, 'CL25240'),
(241, 'CL25241'),
(242, 'CL25242'),
(243, 'CL25243'),
(244, 'CL25244'),
(245, 'CL25245'),
(246, 'CL25246'),
(247, 'CL25247'),
(248, 'CL25248'),
(249, 'CL25249'),
(250, 'CL25250'),
(251, 'CL25251'),
(252, 'CL25252'),
(253, 'CL25253'),
(254, 'CL25254'),
(255, 'CL25255'),
(256, 'CL25256'),
(257, 'CL25257'),
(258, 'CL25258'),
(259, 'CL25259'),
(260, 'CL25260'),
(261, 'CL25261'),
(262, 'CL25262'),
(263, 'CL25263'),
(264, 'CL25264'),
(265, 'CL25265'),
(266, 'CL25266'),
(267, 'CL25267'),
(268, 'CL25268'),
(269, 'CL25269'),
(270, 'CL25270'),
(271, 'CL25271'),
(272, 'CL25272'),
(273, 'CL25273'),
(274, 'CL25274'),
(275, 'CL25275'),
(276, 'CL25276'),
(277, 'CL25277'),
(278, 'CL25278'),
(279, 'CL25279'),
(280, 'CL25280'),
(281, 'CL25281'),
(282, 'CL25282'),
(283, 'CL25283'),
(284, 'CL25284'),
(285, 'CL25285'),
(286, 'CL25286'),
(287, 'CL25287'),
(288, 'CL25288'),
(289, 'CL25289'),
(290, 'CL25290'),
(291, 'CL25291'),
(292, 'CL25292'),
(293, 'CL25293'),
(294, 'CL25294'),
(295, 'CL25295'),
(296, 'CL25296'),
(297, 'CL25297'),
(298, 'CL25298'),
(299, 'CL25299'),
(300, 'CL25300'),
(301, 'CL25301'),
(302, 'CL25302'),
(303, 'CL25303'),
(304, 'CL25304'),
(305, 'CL25305'),
(306, 'CL25306'),
(307, 'CL25307'),
(308, 'CL25308'),
(309, 'CL25309'),
(310, 'CL25310'),
(311, 'CL25311'),
(312, 'CL25312'),
(313, 'CL25313'),
(314, 'CL25314'),
(315, 'CL25315'),
(316, 'CL25316'),
(317, 'CL25317'),
(318, 'CL25318'),
(319, 'CL25319'),
(320, 'CL25320'),
(321, 'CL25321'),
(322, 'CL25322'),
(323, 'CL25323'),
(324, 'CL25324'),
(325, 'CL25325'),
(326, 'CL25326'),
(327, 'CL25327'),
(328, 'CL25328'),
(329, 'CL25329'),
(330, 'CL25330'),
(331, 'CL25331'),
(332, 'CL25332'),
(333, 'CL25333'),
(334, 'CL25334'),
(335, 'CL25335'),
(336, 'CL25336'),
(337, 'CL25337'),
(338, 'CL25338'),
(339, 'CL25339'),
(340, 'CL25340'),
(341, 'CL25341'),
(342, 'CL25342'),
(343, 'CL25343'),
(344, 'CL25344'),
(345, 'CL25345'),
(346, 'CL25346'),
(347, 'CL25347'),
(348, 'CL25348'),
(349, 'CL25349'),
(350, 'CL25350'),
(351, 'CL25351'),
(352, 'CL25352'),
(353, 'CL25353'),
(354, 'CL25354'),
(355, 'CL25355'),
(356, 'CL25356'),
(357, 'CL25357'),
(358, 'CL25358'),
(359, 'CL25359'),
(360, 'CL25360'),
(361, 'CL25361'),
(362, 'CL25362'),
(363, 'CL25363'),
(364, 'CL25364'),
(365, 'CL25365'),
(366, 'CL25366'),
(367, 'CL25367'),
(368, 'CL25368'),
(369, 'CL25369'),
(370, 'CL25370'),
(371, 'CL25371'),
(372, 'CL25372'),
(373, 'CL25373'),
(374, 'CL25374'),
(375, 'CL25375'),
(376, 'CL25376'),
(377, 'CL25377'),
(378, 'CL25378'),
(379, 'CL25379'),
(380, 'CL25380'),
(381, 'CL25381'),
(382, 'CL25382'),
(383, 'CL25383'),
(384, 'CL25384'),
(385, 'CL25385'),
(386, 'CL25386'),
(387, 'CL25387'),
(388, 'CL25388'),
(389, 'CL25389'),
(390, 'CL25390'),
(391, 'CL25391'),
(392, 'CL25392'),
(393, 'CL25393'),
(394, 'CL25394'),
(395, 'CL25395'),
(396, 'CL25396'),
(397, 'CL25397'),
(398, 'CL25398'),
(399, 'CL25399'),
(400, 'CL25400'),
(401, 'CL25401'),
(402, 'CL25402'),
(403, 'CL25403'),
(404, 'CL25404'),
(405, 'CL25405'),
(406, 'CL25406'),
(407, 'CL25407'),
(408, 'CL25408'),
(409, 'CL25409'),
(410, 'CL25410'),
(411, 'CL25411'),
(412, 'CL25412'),
(413, 'CL25413'),
(414, 'CL25414'),
(415, 'CL25415'),
(416, 'CL25416'),
(417, 'CL25417'),
(418, 'CL25418'),
(419, 'CL25419'),
(420, 'CL25420'),
(421, 'CL25421'),
(422, 'CL25422'),
(423, 'CL25423'),
(424, 'CL25424'),
(425, 'CL25425'),
(426, 'CL25426'),
(427, 'CL25427'),
(428, 'CL25428'),
(429, 'CL25429'),
(430, 'CL25430'),
(431, 'CL25431'),
(432, 'CL25432'),
(433, 'CL25433'),
(434, 'CL25434'),
(435, 'CL25435'),
(436, 'CL25436'),
(437, 'CL25437'),
(438, 'CL25438'),
(439, 'CL25439'),
(440, 'CL25440'),
(441, 'CL25441'),
(442, 'CL25442'),
(443, 'CL25443'),
(444, 'CL25444'),
(445, 'CL25445'),
(446, 'CL25446'),
(447, 'CL25447'),
(448, 'CL25448'),
(449, 'CL25449'),
(450, 'CL25450'),
(451, 'CL25451'),
(452, 'CL25452'),
(453, 'CL25453'),
(454, 'CL25454'),
(455, 'CL25455'),
(456, 'CL25456'),
(457, 'CL25457'),
(458, 'CL25458'),
(459, 'CL25459'),
(460, 'CL25460'),
(461, 'CL25461'),
(462, 'CL25462'),
(463, 'CL25463'),
(464, 'CL25464'),
(465, 'CL25465'),
(466, 'CL25466'),
(467, 'CL25467'),
(468, 'CL25468'),
(469, 'CL25469'),
(470, 'CL25470'),
(471, 'CL25471'),
(472, 'CL25472'),
(473, 'CL25473'),
(474, 'CL25474'),
(475, 'CL25475'),
(476, 'CL25476'),
(477, 'CL25477'),
(478, 'CL25478'),
(479, 'CL25479'),
(480, 'CL25480'),
(481, 'CL25481'),
(482, 'CL25482'),
(483, 'CL25483'),
(484, 'CL25484'),
(485, 'CL25485'),
(486, 'CL25486'),
(487, 'CL25487'),
(488, 'CL25488'),
(489, 'CL25489'),
(490, 'CL25490'),
(491, 'CL25491'),
(492, 'CL25492'),
(493, 'CL25493'),
(494, 'CL25494'),
(495, 'CL25495'),
(496, 'CL25496'),
(497, 'CL25497'),
(498, 'CL25498'),
(499, 'CL25499'),
(500, 'CL25500'),
(501, 'CL25501'),
(502, 'CL25502'),
(503, 'CL25503'),
(504, 'CL25504'),
(505, 'CL25505'),
(506, 'CL25506'),
(507, 'CL25507'),
(508, 'CL25508'),
(509, 'CL25509'),
(510, 'CL25510'),
(511, 'CL25511'),
(512, 'CL25512'),
(513, 'CL25513'),
(514, 'CL25514'),
(515, 'CL25515'),
(516, 'CL25516'),
(517, 'CL25517'),
(518, 'CL25518'),
(519, 'CL25519'),
(520, 'CL25520'),
(521, 'CL25521'),
(522, 'CL25522'),
(523, 'CL25523'),
(524, 'CL25524'),
(525, 'CL25525'),
(526, 'CL25526'),
(527, 'CL25527'),
(528, 'CL25528'),
(529, 'CL25529'),
(530, 'CL25530'),
(531, 'CL25531'),
(532, 'CL25532'),
(533, 'CL25533'),
(534, 'CL25534'),
(535, 'CL25535'),
(536, 'CL25536'),
(537, 'CL25537'),
(538, 'CL25538'),
(539, 'CL25539'),
(540, 'CL25540'),
(541, 'CL25541'),
(542, 'CL25542'),
(543, 'CL25543'),
(544, 'CL25544'),
(545, 'CL25545'),
(546, 'CL25546'),
(547, 'CL25547'),
(548, 'CL25548'),
(549, 'CL25549'),
(550, 'CL25550'),
(551, 'CL25551'),
(552, 'CL25552'),
(553, 'CL25553'),
(554, 'CL25554'),
(555, 'CL25555'),
(556, 'CL25556'),
(557, 'CL25557'),
(558, 'CL25558'),
(559, 'CL25559'),
(560, 'CL25560'),
(561, 'CL25561'),
(562, 'CL25562'),
(563, 'CL25563'),
(564, 'CL25564'),
(565, 'CL25565'),
(566, 'CL25566'),
(567, 'CL25567'),
(568, 'CL25568'),
(569, 'CL25569'),
(570, 'CL25570'),
(571, 'CL25571'),
(572, 'CL25572'),
(573, 'CL25573'),
(574, 'CL25574'),
(575, 'CL25575'),
(576, 'CL25576'),
(577, 'CL25577'),
(578, 'CL25578'),
(579, 'CL25579'),
(580, 'CL25580'),
(581, 'CL25581'),
(582, 'CL25582'),
(583, 'CL25583'),
(584, 'CL25584'),
(585, 'CL25585'),
(586, 'CL25586'),
(587, 'CL25587'),
(588, 'CL25588'),
(589, 'CL25589'),
(590, 'CL25590'),
(591, 'CL25591'),
(592, 'CL25592'),
(593, 'CL25593'),
(594, 'CL25594'),
(595, 'CL25595'),
(596, 'CL25596'),
(597, 'CL25597'),
(598, 'CL25598'),
(599, 'CL25599'),
(600, 'CL25600'),
(601, 'CL25601'),
(602, 'CL25602'),
(603, 'CL25603'),
(604, 'CL25604'),
(605, 'CL25605'),
(606, 'CL25606'),
(607, 'CL25607'),
(608, 'CL25608'),
(609, 'CL25609'),
(610, 'CL25610'),
(611, 'CL25611'),
(136, 'East African Law Journal');

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) NOT NULL,
  `book_id` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Issued'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `book_id`, `user_id`, `issue_date`, `due_date`, `return_date`, `status`) VALUES
(1, 'CL25001/1', 12, '2025-06-26', '2025-06-26', '2025-06-26', 'Returned'),
(2, 'CL25010/1', 8, '2025-06-26', '2025-06-26', '2025-06-26', 'Returned'),
(3, 'CL25072/1', 10, '2025-06-26', '2025-06-26', '2025-06-26', 'Returned'),
(4, 'CL25001/2', 4, '2025-06-26', '2025-06-26', '2025-06-26', 'Returned'),
(5, 'CL25001/1', 5, '2025-06-26', '2025-06-26', '2025-06-26', 'Returned'),
(6, '1111', 11, '2025-06-26', '2025-06-26', '2025-06-26', 'Returned');

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `id` int(11) NOT NULL,
  `borrower_id` varchar(50) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `membership_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowers`
--

INSERT INTO `borrowers` (`id`, `borrower_id`, `full_name`, `contact_number`, `email`, `address`, `membership_date`, `notes`) VALUES
(1, '124', 'AMLEY ALUOCH', '0793561749', 'wilfrednyaribo1996@gmail.com', NULL, NULL, NULL),
(2, 'Culpa repellendus I', 'Karyn Stokes', '498', 'moqaqediw@mailinator.com', NULL, NULL, NULL),
(3, 'Soluta nihil eos dol', 'Charity Hewitt', '924', 'zegesymaby@mailinator.com', NULL, NULL, NULL),
(4, 'Officia id quasi exp', 'Dora Vang', '35', 'boku@mailinator.com', NULL, NULL, NULL),
(5, 'Quo accusantium repu', 'Geoffrey Duncan', '100', 'gama@mailinator.com', NULL, NULL, NULL),
(6, 'Autem ut quo ut enim', 'Kylie Burnett', '164', 'nufepiba@mailinator.com', NULL, NULL, NULL),
(7, 'Nesciunt enim molli355', 'Hiram Hobbs', '953', 'lyhoqesa@mailinator.com', NULL, NULL, NULL),
(8, '1234', 'WILFRED OMWOYO', '0741473024', 'wilfrednyaribo1996@gmail.com', NULL, NULL, NULL),
(10, 'Modi eos hic volupt', 'Dorothy Mercado', '883', 'lutycun@mailinator.com', NULL, NULL, NULL),
(11, 'Autem sint numquam ', 'Jermaine Knox', '736', 'gege@mailinator.com', 'Odit vitae autem eli', '2017-10-01', 'Qui magna deserunt c'),
(12, 'Fuga Consequuntur m', 'Beatrice Horn', '9999099', 'cazum@mailinator.com', 'Ratione sed omnis to', '2019-05-11', 'Nisi est et iste par'),
(13, 'Anim sunt eu ipsum', 'Iliana Duffy', '7146', 'vuqedygu@mailinator.com', 'Ipsum itaque pariat', '1975-02-03', 'Laborum Ad incididu');

-- --------------------------------------------------------

--
-- Table structure for table `clients_tickets_list`
--

CREATE TABLE `clients_tickets_list` (
  `id` int(11) NOT NULL,
  `date_created` datetime DEFAULT current_timestamp(),
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Not Solved','Solved') DEFAULT 'Not Solved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `user_type` tinyint(1) NOT NULL COMMENT '1= admin, 2= staff,3= customer',
  `ticket_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `user_type`, `ticket_id`, `comment`, `date_created`) VALUES
(1, 1, 1, 1, '&lt;p&gt;Sample Comment only&lt;/p&gt; ', '2020-11-09 14:52:16'),
(3, 2, 3, 1, '&lt;p&gt;Sample&amp;nbsp;&lt;/p&gt;', '2020-11-09 15:36:56'),
(4, 1, 1, 2, '&lt;p&gt;Completed successfully.&lt;/p&gt;', '2025-04-04 10:24:21'),
(5, 1, 1, 4, '&lt;p&gt;Solved.&lt;/p&gt;', '2025-04-04 21:16:51'),
(6, 4, 3, 4, '&lt;p&gt;Thanks Alot!&lt;/p&gt;', '2025-04-04 21:35:10'),
(7, 1, 1, 5, '&lt;p&gt;Solved. Thank you.&lt;/p&gt;', '2025-04-07 10:48:24'),
(8, 3, 3, 5, '&lt;p&gt;Thanks.&lt;/p&gt;', '2025-04-07 10:49:57'),
(9, 1, 1, 9, '&lt;p&gt;Solved. Thank you.&lt;/p&gt;', '2025-04-07 16:35:38'),
(10, 5, 3, 9, '&lt;p&gt;Noted with thanks.&lt;/p&gt;', '2025-04-07 16:36:34'),
(11, 1, 1, 10, '&lt;p&gt;Work in Progress. Please be patient.&lt;/p&gt;', '2025-04-08 10:55:27'),
(12, 1, 1, 14, '&lt;p&gt;Solved!&lt;/p&gt;', '2025-04-09 16:04:32'),
(13, 1, 1, 35, '&lt;p&gt;jskqsuwjew&lt;/p&gt;', '2025-04-28 09:39:40'),
(35, 16, 3, 0, '&lt;p&gt;ffdff&lt;/p&gt;', '2025-05-12 11:33:04'),
(45, 16, 3, 0, '&lt;p&gt;aaaaaa&lt;/p&gt;', '2025-05-09 09:48:42'),
(50, 1, 1, 0, '&lt;p&gt;ffffff&lt;/p&gt;', '2025-05-12 08:26:46'),
(51, 1, 1, 50, '<p>aaaaaa</p>', '2025-05-12 08:38:25'),
(52, 1, 1, 50, '<p>aaaaaa</p>', '2025-05-12 08:38:26'),
(53, 1, 1, 50, '<p>aaaaaa</p>', '2025-05-12 08:38:26'),
(54, 1, 1, 50, '<p>aaaaaa</p>', '2025-05-12 08:38:26'),
(55, 1, 1, 50, '<p>aaaaaa</p>', '2025-05-12 08:38:27'),
(56, 1, 1, 50, '<p>aaaaaa</p>', '2025-05-12 08:38:28'),
(57, 1, 1, 50, 'kakakakak', '2025-05-12 08:38:49'),
(58, 1, 1, 50, 'kakakakak', '2025-05-12 08:38:53'),
(59, 1, 1, 50, 'kakakakak', '2025-05-12 08:38:53'),
(60, 1, 1, 50, 'kakakakak', '2025-05-12 08:38:54'),
(61, 1, 1, 50, 'kakakakak', '2025-05-12 08:38:54'),
(62, 1, 1, 50, '<p>kjknuyie</p>', '2025-05-12 08:39:11'),
(63, 1, 1, 50, '<p>aaassss</p>', '2025-05-12 08:41:29'),
(64, 1, 1, 50, '<p>aaassss</p>', '2025-05-12 08:41:30'),
(65, 1, 1, 50, '<p>aaassss</p>', '2025-05-12 08:41:30'),
(66, 1, 1, 50, '<p>aaassss</p>', '2025-05-12 08:41:30'),
(67, 1, 1, 50, '<p>aaassss</p>', '2025-05-12 08:41:30'),
(68, 1, 1, 50, 'Solved well.', '2025-05-12 08:46:31'),
(69, 1, 1, 50, 'Solved well.', '2025-05-12 08:46:33'),
(70, 1, 1, 50, 'Solved well.', '2025-05-12 08:46:42'),
(71, 1, 1, 50, 'Solved well.', '2025-05-12 08:46:42'),
(72, 1, 1, 50, '<p>good word</p><p><br></p>', '2025-05-12 08:47:18'),
(73, 1, 1, 50, '<p>good word</p><p><br></p>', '2025-05-12 08:47:28'),
(74, 1, 1, 50, '<p>good word</p><p><br></p>', '2025-05-12 08:47:29'),
(75, 1, 1, 50, '<p>good word</p><p><br></p>', '2025-05-12 08:47:29'),
(76, 1, 1, 50, '<p>good word</p><p><br></p>', '2025-05-12 08:47:29'),
(77, 1, 1, 50, '<p>nnnnn</p>', '2025-05-12 08:52:15'),
(78, 1, 1, 50, '<p>nnnnn</p>', '2025-05-12 08:52:16'),
(79, 1, 1, 50, '<p>nnnnn</p>', '2025-05-12 08:52:16'),
(80, 1, 1, 50, '<p>nnnnn</p>', '2025-05-12 08:52:16'),
(81, 1, 1, 50, '<p>jjjjjjjj</p>', '2025-05-12 08:58:22'),
(82, 1, 1, 50, '<p>jjjjjjjj</p>', '2025-05-12 08:58:22'),
(83, 1, 1, 50, '<p>jjjjjjjj</p>', '2025-05-12 08:58:22'),
(84, 1, 1, 50, '<p>jjjjjjjj</p>', '2025-05-12 08:58:23'),
(85, 1, 1, 50, '<p>jjjjjjjj</p>', '2025-05-12 08:58:23'),
(86, 1, 1, 50, '<p>jjjjjjjj</p>', '2025-05-12 08:58:23'),
(87, 1, 1, 50, '<p>wilfred</p>', '2025-05-12 09:24:18'),
(88, 1, 1, 50, '<p>wilfred</p>', '2025-05-12 09:24:20'),
(89, 1, 1, 50, '<p>wilfred</p>', '2025-05-12 09:24:20'),
(90, 1, 1, 50, '<p>wilfred</p>', '2025-05-12 09:24:20'),
(91, 1, 1, 50, '<p>wilfred</p>', '2025-05-12 09:24:20'),
(92, 1, 1, 50, '<p>wilfred</p>', '2025-05-12 09:24:21'),
(93, 1, 1, 50, '<p>wilfred</p>', '2025-05-12 09:24:21'),
(94, 1, 1, 50, '<p>wilfred</p>', '2025-05-12 09:24:22'),
(95, 1, 1, 50, '<p>Correct</p>', '2025-05-12 09:24:45'),
(96, 1, 1, 50, '<p>hhhhh</p>', '2025-05-12 09:37:35'),
(97, 18, 3, 72, '&lt;p&gt;aaaaa&lt;/p&gt;', '2025-06-12 09:05:00'),
(98, 18, 3, 72, '&lt;p&gt;aaaaa&lt;/p&gt;', '2025-06-12 09:05:02'),
(99, 18, 3, 72, '&lt;p&gt;aaaaa&lt;/p&gt;', '2025-06-12 09:05:03'),
(100, 18, 3, 72, '&lt;p&gt;aaaaa&lt;/p&gt;', '2025-06-12 09:05:03'),
(101, 18, 3, 72, '&lt;p&gt;aaaaa&lt;/p&gt;', '2025-06-12 09:05:04'),
(102, 18, 3, 72, '&lt;p&gt;yes it was solved.&lt;/p&gt;', '2025-06-12 09:05:50'),
(103, 18, 3, 72, '&lt;p&gt;no.&lt;/p&gt;', '2025-06-12 09:06:11'),
(104, 1, 1, 72, '&lt;p&gt;Fine.Thanks.&lt;/p&gt;', '2025-06-12 09:07:42'),
(105, 1, 1, 72, '&lt;p&gt;hhhh&lt;/p&gt;', '2025-06-12 09:13:40'),
(106, 1, 1, 72, '&lt;p&gt;hhhh&lt;/p&gt;', '2025-06-12 09:13:42'),
(107, 1, 1, 72, '&lt;p&gt;vvvvv&lt;/p&gt;', '2025-06-12 09:15:58'),
(108, 1, 1, 72, '&lt;p&gt;vvvvv&lt;/p&gt;', '2025-06-12 09:16:00'),
(113, 18, 3, 73, '&lt;p&gt;Great Job!&lt;/p&gt;', '2025-06-12 09:43:33'),
(116, 18, 3, 73, '&lt;p&gt;I am happy for&amp;nbsp; your job.&lt;/p&gt;', '2025-06-12 09:53:37'),
(117, 1, 1, 73, '&lt;p&gt;We appreciate.Thank you too and welcome.&lt;/p&gt;', '2025-06-12 09:54:30'),
(118, 23, 3, 74, '&lt;p&gt;Issue not solved.&lt;/p&gt;', '2025-06-12 13:10:41'),
(119, 1, 1, 74, '&lt;p&gt;Noted.&lt;/p&gt;', '2025-06-12 13:12:30'),
(120, 2, 2, 74, '&lt;p&gt;Coming soon.&lt;/p&gt;', '2025-06-12 13:13:48'),
(121, 1, 1, 76, '&lt;p&gt;Were you helped?&lt;/p&gt;', '2025-06-13 12:02:22'),
(122, 23, 3, 76, '&lt;p&gt;Yes, thank you.&lt;/p&gt;', '2025-06-13 12:02:57'),
(124, 2, 2, 76, '&lt;p&gt;Noted. Thank you.&lt;/p&gt;', '2025-06-13 12:03:56'),
(125, 25, 3, 78, '&lt;p&gt;Issue not solved fully!&lt;/p&gt;', '2025-06-13 13:15:13'),
(126, 1, 1, 78, '&lt;p&gt;Noted, we will be there shortly.&lt;/p&gt;', '2025-06-13 13:16:32'),
(127, 18, 2, 78, 'qweye', '2025-06-13 13:18:01'),
(128, 1, 1, 79, '&lt;p&gt;Was the issue solved?&lt;/p&gt;', '2025-06-16 12:22:13'),
(129, 25, 3, 79, '&lt;p&gt;Yes. Thank you!&lt;/p&gt;', '2025-06-16 12:22:47'),
(130, 2, 2, 79, '&lt;p&gt;Welcomed always.&lt;/p&gt;', '2025-06-16 12:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `password_changed` tinyint(1) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `password_changed`, `date_created`) VALUES
(5, 'James', 'Muko', '', '0987654321', 'Nairobi', 'james@gmail.com', 'd27d320c27c3033b7883347d8beca317', 0, '2025-04-07 16:31:51'),
(6, 'Mary', 'Luwi', '', '0784765439', 'Legal office', 'maryluwi@gmail.com', '1bbd886460827015e5d605ed44252251', 0, '2025-04-09 13:36:36'),
(7, 'Alex ', 'Muga', '', '07545653667', 'Planning office', 'alexmuga@gmail.com', '1bbd886460827015e5d605ed44252251', 0, '2025-04-09 14:42:55'),
(8, 'Kenyon', 'Larson', 'Felix Quinn', 'Perferendis excepteu', 'Voluptatem deserunt ', 'burogyza@mailinator.com', '1bbd886460827015e5d605ed44252251', 0, '2025-04-09 17:11:39'),
(9, 'Brynn', 'Craft', '', '', 'Explicabo Consequat', 'teruxudaji@mailinator.com', '1bbd886460827015e5d605ed44252251', 0, '2025-04-11 08:16:38'),
(10, 'Brian', 'Davidson', '', '', '6th floor', 'brian@mailinator.com', '1bbd886460827015e5d605ed44252251', 0, '2025-04-11 12:17:28'),
(11, 'Paula', 'Bell', '', '', '5th floor', 'paula@gmail.com', '1bbd886460827015e5d605ed44252251', 0, '2025-04-14 10:39:46'),
(12, 'Ava', 'Crawford', '', '', '4th floor', 'ava@gmail.com', '1bbd886460827015e5d605ed44252251', NULL, '2025-04-14 12:27:02'),
(15, 'Thaddeus', 'Osborne', '', '', 'aaaaaaaaaaa', 'norupasi', '3ec0cedbfac5d3e1ca6610ef1bdbdf19', NULL, '2025-04-15 14:19:54'),
(16, 'Victor', 'Kirwa', '', '', '4th Floor', 'victor.kirwa@gmail.com', '6c46f8e09b95837be28ef00ef721827a', NULL, '2025-04-28 09:30:54'),
(17, 'teresia', 'teresia', '', '', '5th floor', 'teresa@gmail.com', '1bbd886460827015e5d605ed44252251', NULL, '2025-05-08 09:07:04'),
(18, 'Brenda ', 'Chemutai', '', '', 'Planning', 'brenda@gmail.com', 'e5e9b41c8f1ad39ffb22df4a7aa7d876', NULL, '2025-05-09 11:47:10'),
(19, 'Enos ', 'Mokaya', '', '', 'ICT', 'enos@gmail.com', 'd04b4425441eb1347cc891141f3462f8', NULL, '2025-05-09 11:51:30'),
(21, 'Jael', 'Mcconnell', '', '', 'ICT OFFICE', 'jael@gmail.com', 'dd4b21e9ef71e1291183a46b913ae6f2', NULL, '2025-05-09 14:30:12'),
(23, 'Moses', 'Chege', '', '', 'ADMIN', 'chege@gmail.com', '1bbd886460827015e5d605ed44252251', NULL, '2025-06-12 13:03:59'),
(24, 'Roary', 'Stewart', '', '', 'Ut hic qui nostrum v', 'duwymuj@mailinator.com', '95ebc3c7b3b9f1d2c40fec14415d3cb8', NULL, '2025-06-13 11:36:39'),
(25, 'Mumo', 'Francis', '', '', 'ADMIN', 'mumo@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', NULL, '2025-06-13 13:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `date_created`) VALUES
(8, 'ICT Office', '4TH FLOOR', '2025-04-07 16:18:25'),
(12, 'PS', '', '2025-04-07 16:23:02'),
(13, 'CS', '5TH FLOOR', '2025-04-07 16:24:03'),
(17, 'PLANNING', '', '2025-04-08 08:47:22'),
(18, 'LEGAL', '6TH FLOOR', '2025-04-08 08:47:36'),
(19, 'FINANCE', '6TH FLOOR', '2025-04-08 08:47:47'),
(20, 'USHANGA', '', '2025-04-08 08:47:59'),
(21, 'PROCUREMENT', '', '2025-04-08 08:48:23'),
(22, 'ADMIN', '6TH FLOOR', '2025-04-08 08:48:31'),
(23, 'HR', '6TH FLOOR', '2025-04-08 08:48:42'),
(24, 'PENSION', '6TH FLOOR\r\n', '2025-04-08 08:49:00'),
(26, 'RECORDS', '', '2025-04-08 08:49:22'),
(27, 'INTERNAL AUDITORS', '4TH FLOOR\r\n', '2025-04-08 08:49:39'),
(28, 'EXTERNAL AUDITORS', '4TH FLOOR', '2025-04-08 08:50:21'),
(29, 'ACCOUNTS', '6TH', '2025-04-09 14:45:52'),
(30, 'Rigel Manning', 'Incidunt ea aute ut', '2025-04-15 15:51:57'),
(31, 'CS1', '5TH FLOOR', '2025-06-12 13:05:15'),
(32, 'cctv', '', '2025-06-13 11:49:10'),
(33, 'USHANGA3', '6TH FLOOR', '2025-06-13 13:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(46, '303'),
(45, '305'),
(44, '319'),
(47, 'Aut autem exercitati');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`) VALUES
(577, 'Service Charter', '2025-06-18 18:43:06'),
(578, 'Kenya Music and Cultural Festival 97th Edition', '2025-06-18 18:43:06'),
(579, 'Kenya Music and Cultural Festival 93rd Edition', '2025-06-18 18:43:06'),
(580, 'Inland Directory 2016/2017', '2025-06-18 18:43:06'),
(581, 'Utamaduni Mkoani', '2025-06-18 18:43:06'),
(582, 'Muslim Women in Mombasa, 1890-1975', '2025-06-18 18:43:06'),
(583, 'Data Projector', '2025-06-18 18:43:06'),
(584, 'Singing Freedom; Kenyan Poetry of Home and Exile', '2025-06-18 18:43:06'),
(585, 'Jambo Kenya; An Exhibition of Contemporary Kenyan Art in Cortona- Italy', '2025-06-18 18:43:06'),
(586, 'China\'s Traditional Kunqu opera', '2025-06-18 18:43:06'),
(587, 'The \"Big Four\"', '2025-06-18 18:43:06'),
(588, 'Basic Texts of the 2003 Convention of the Intangible Cultural Heritage', '2025-06-18 18:43:06'),
(589, 'Strategic Plan 2008-2012', '2025-06-18 18:43:06'),
(590, 'Chinese ABC', '2025-06-18 18:43:06'),
(591, 'Third Medium Term Plan 2018-2022', '2025-06-18 18:43:06'),
(592, 'National Museums of Kenya Strategic plan 2020-2022', '2025-06-18 18:43:06'),
(593, 'Conference of African Ministers of Culture', '2025-06-18 18:43:06'),
(594, 'The environnemental News; Indigenous Peoples Perspective', '2025-06-18 18:43:06'),
(595, 'Kutoka Neno Hadi Vitendo', '2025-06-18 18:43:06'),
(596, 'Intellectual property and Genetic Resources,Traditional Knowledge and Traditional Cultural Expressions', '2025-06-18 18:43:06'),
(597, 'Ministry of Sports and Heritage handbook \"The Big Four\"', '2025-06-18 18:43:06'),
(598, 'Bitter-Sweet 1', '2025-06-18 18:43:06'),
(599, 'Service charter for the Office of the Vice President and Ministry of state for National Heritage and Culture', '2025-06-18 18:43:06'),
(600, 'Kenya Music and Cultural Festival', '2025-06-18 18:43:06'),
(601, 'Our Heroes our Heritage we Celebrate', '2025-06-18 18:43:06'),
(602, 'Nomadisme News', '2025-06-18 18:43:06'),
(603, 'Knee-Deep in self-Destruction', '2025-06-18 18:43:07'),
(604, 'Culture and Development in Africa; Building on Positive Cultural Practices', '2025-06-18 18:43:07'),
(605, 'The Big Conservation Lie', '2025-06-18 18:43:07'),
(606, 'Diabetes', '2025-06-18 18:43:07'),
(607, 'Rasimu ya Mkataba wa Uanzishaji wa Jumuiya ya Afrika Mashariki', '2025-06-18 18:43:07'),
(608, 'Lutirichi Idiom', '2025-06-18 18:43:07'),
(609, 'Kenya Music and Cultural Festival;Syllabus 2024', '2025-06-18 18:43:07'),
(610, 'KISA AN ANTHOLOGY of African Short Stories', '2025-06-18 18:43:07'),
(611, 'Striving for More Robust Drivers: A historic Leap-Forward to High-Quality Development', '2025-06-18 18:43:07'),
(612, 'Under the mango tree', '2025-06-18 18:43:07'),
(613, 'The Great Escape', '2025-06-18 18:43:07'),
(614, 'They Shall be Chastised', '2025-06-18 18:43:07'),
(615, 'Bridging the Gap with Boda Boda', '2025-06-18 18:43:07'),
(616, 'Mbali na Nyumbani', '2025-06-18 18:43:07'),
(617, 'Njia ya peponi', '2025-06-18 18:43:07'),
(618, 'Masimulizi Kamilifu ya Alfu Lela U Lela', '2025-06-18 18:43:07'),
(619, 'Kuwala', '2025-06-18 18:43:07'),
(620, 'Kiswahili, Utangamano na Maendeleo Endelevu Afrika Mashariki', '2025-06-18 18:43:07'),
(621, 'Capacity Assessment of the development and Use of Kiswahili in the EAC', '2025-06-18 18:43:07'),
(622, 'Dunia Mashaka Makuu', '2025-06-18 18:43:07'),
(623, 'Alfu Lela U Lela kitabu cha 4', '2025-06-18 18:43:07'),
(624, 'Alfu Lela U Lela )kitabu cha 6', '2025-06-18 18:43:07'),
(625, 'Alfu Lela U Lela )kitabu cha 7', '2025-06-18 18:43:07'),
(626, 'Alfu Lela U Lela )kitabu cha 8', '2025-06-18 18:43:07'),
(627, 'Mateka Wa Mwisho Wakombolewe', '2025-06-18 18:43:07'),
(628, 'Kweli za Maisha', '2025-06-18 18:43:07'),
(629, 'Kiswahili na Elimu Nchini Kenya', '2025-06-18 18:43:07'),
(630, 'Kena ni Guciarwo', '2025-06-18 18:43:07'),
(631, 'Miaka hamsini ya Kiswahili Nchini Kenya', '2025-06-18 18:43:07'),
(632, 'Remembering the Future', '2025-06-18 18:43:07'),
(633, 'The Magical Bird and the Millet Farmer', '2025-06-18 18:43:07'),
(634, 'Kithingichi My Father\'s Bull', '2025-06-18 18:43:07'),
(635, 'Swahili Poetry Anthology Volume 1; Selected Poems of Ahmed Sheikh Nabhany', '2025-06-18 18:43:07'),
(636, 'The peace Council KIAMA: School\'s Peace Magazine', '2025-06-18 18:43:07'),
(637, 'A Draft Inventory of the Intangible Cultural Heritages of The Communities of Western Province of kenya', '2025-06-18 18:43:07'),
(638, 'Food Strategies for Tomorrow', '2025-06-18 18:43:07'),
(639, 'Recovering Traditional Foods to Heal the People; Food is Medicine', '2025-06-18 18:43:07'),
(640, 'Alfu Lela U Lela au Siku Elfu Moja na MojaKitabu cha 5', '2025-06-18 18:43:07'),
(641, 'Shamba La Wanyama', '2025-06-18 18:43:07'),
(642, 'Arise & Shine; A practical guide on how to achive your God-given dreams', '2025-06-18 18:43:07'),
(643, 'Mau Mau Detainee', '2025-06-18 18:43:07'),
(644, 'Successful Time Management; the challege for the Modern Manager', '2025-06-18 18:43:07'),
(645, 'Selected Recipes on Traditional Foods in Kenya', '2025-06-18 18:43:07'),
(646, 'Deciding your Destiny', '2025-06-18 18:43:07'),
(647, 'Journeys of Peace; Heritage and Peace Building in Kenya', '2025-06-18 18:43:07'),
(648, 'Mwananchi na Demokrasia', '2025-06-18 18:43:07'),
(649, 'Chronology of church history', '2025-06-18 18:43:07'),
(650, 'Uchagusi na Sisi', '2025-06-18 18:43:07'),
(651, 'Thematic Issues in African Philosophy', '2025-06-18 18:43:07'),
(652, 'The treaty for the Establishment of the East African Community', '2025-06-18 18:43:07'),
(653, 'Amalooto Gandola Ki?', '2025-06-18 18:43:07'),
(654, 'HA guide to copyright in kenya', '2025-06-18 18:43:07'),
(655, 'Jamafest 2015', '2025-06-18 18:43:07'),
(656, 'Jamaa Ndogo kwa Maisha Bora', '2025-06-18 18:43:07'),
(657, 'jamafest 2013', '2025-06-18 18:43:07'),
(658, 'Cultural De Africa', '2025-06-18 18:43:07'),
(659, 'Si Mimi Mwongo Watu Wa Zamani', '2025-06-18 18:43:07'),
(660, 'Go places', '2025-06-18 18:43:07'),
(661, 'Cultural industries for development in Africa', '2025-06-18 18:43:07'),
(662, 'Usimamizi Bora', '2025-06-18 18:43:07'),
(663, 'Date Palms in Kemya; An Economic Resource for Arid and Semi-arid areas', '2025-06-18 18:43:07'),
(664, 'Maana ya Mendeleo', '2025-06-18 18:43:07'),
(665, 'William Penn College Catalog', '2025-06-18 18:43:07'),
(666, 'Lifelong Education and University Resouces', '2025-06-18 18:43:07'),
(667, 'Anavolegwa Yiita Embongo', '2025-06-18 18:43:07'),
(668, 'Musatsa Mmolomi', '2025-06-18 18:43:07'),
(669, 'Itsidaywa Tsiviiri Munyambevaa Ndala Livoola Ki?', '2025-06-18 18:43:07'),
(670, 'Mazingira', '2025-06-18 18:43:07'),
(671, 'The convention on the Elimination of All Forms of Discrimination against Women', '2025-06-18 18:43:07'),
(672, 'Uvwiko vwa Avandu Valogooli ne vikevo', '2025-06-18 18:43:07'),
(673, 'Manual on Selective Placement of the Disabled', '2025-06-18 18:43:07'),
(674, 'Avalogooli', '2025-06-18 18:43:08'),
(675, 'Umukutsu Imuyanze', '2025-06-18 18:43:08'),
(676, 'Planning Education in relation to Rural Development', '2025-06-18 18:43:08'),
(677, 'Kyambitanyia kye liuva no Mweli na Musatsa No Mukali', '2025-06-18 18:43:08'),
(678, 'Elimu Viwandani; Mwongozo kwa Ajili ya Familia na Maisha Bora kwa Wafanyikazi Viwandani Barani Afrika', '2025-06-18 18:43:08'),
(679, 'Uwalega Umukali Yalega Enzogu', '2025-06-18 18:43:08'),
(680, 'Uvwiko vwa Avandu Valagooli ne Vikevo', '2025-06-18 18:43:08'),
(681, 'Mundu Mwimbi Siagera Lilungu MBA Luganu Yilu Luvoola Ki', '2025-06-18 18:43:08'),
(682, 'Women of kenya;Review and Evaluation of Progress', '2025-06-18 18:43:08'),
(683, 'Iliuva no Musatsa Mukali no Mweli', '2025-06-18 18:43:08'),
(684, 'Danida\'s Plan of Action for Development Assistance to Women;Sector plan', '2025-06-18 18:43:08'),
(685, 'Amegitsu Ga Amasumba', '2025-06-18 18:43:08'),
(686, 'Corporate management & Enterpreneurship Development programmes', '2025-06-18 18:43:08'),
(687, 'Kuishi na Ukimwi katika Jamii', '2025-06-18 18:43:08'),
(688, 'Gender mainstreaming; An overview', '2025-06-18 18:43:08'),
(689, 'Ariel; Review of Arts and Letters in Israel', '2025-06-18 18:43:08'),
(690, 'Film Library Catalogue of the Division of Narcotic Drugs', '2025-06-18 18:43:08'),
(691, 'Living Values', '2025-06-18 18:43:08'),
(692, 'Philosophy and History', '2025-06-18 18:43:08'),
(693, 'Literature and the arts', '2025-06-18 18:43:08'),
(694, 'Ariel', '2025-06-18 18:43:08'),
(695, 'Prince Claus awards', '2025-06-18 18:43:08'),
(696, 'China Online', '2025-06-18 18:43:08'),
(697, 'Guide des Loisirs', '2025-06-18 18:43:08'),
(698, 'Facts About Slovenia', '2025-06-18 18:43:08'),
(699, 'What remain what lies ahead', '2025-06-18 18:43:08'),
(700, 'Delhi and its Neighbourhood', '2025-06-18 18:43:08'),
(701, 'Papers Presented During the First Conference on the Historical Role of Iranians (Shiranzis) In the East African Coast', '2025-06-18 18:43:08'),
(702, 'Cinema in the federal Republic of Germany', '2025-06-18 18:43:08'),
(703, 'Kenyan-German Cooperation', '2025-06-18 18:43:08'),
(704, 'Young Researchers', '2025-06-18 18:43:08'),
(705, 'Handbook on the International exchange of publications', '2025-06-18 18:43:08'),
(706, 'Cultural Policy in Bolivia', '2025-06-18 18:43:08'),
(707, 'Utaratibu wa sheria katika Kenya', '2025-06-18 18:43:08'),
(708, 'Cultural Policy in Union of Soviet Socialist Republics', '2025-06-18 18:43:08'),
(709, 'East African Law Journal', '2025-06-18 18:43:08'),
(710, 'East African Journal', '2025-06-18 18:43:08'),
(711, 'Communication Policies in Columbia', '2025-06-18 18:43:08'),
(712, 'Comparability of degrees and diplomas in international law', '2025-06-18 18:43:08'),
(713, 'Tribal Art', '2025-06-18 18:43:08'),
(714, 'German Culture Today', '2025-06-18 18:43:08'),
(715, 'Old GOA; Archaelogical Survey of India', '2025-06-18 18:43:08'),
(716, 'Kulturchronik; News and views from the Federal Republic of Germany', '2025-06-18 18:43:08'),
(717, 'East Africa Jounal; Family Planning for Women', '2025-06-18 18:43:08'),
(718, 'East Africa Journal', '2025-06-18 18:43:08'),
(719, 'Resumes de Vieux Manuscripts Arabes', '2025-06-18 18:43:08'),
(720, 'India Digest', '2025-06-18 18:43:08'),
(721, 'Cultural Policy in Romania', '2025-06-18 18:43:08'),
(722, 'Cultural Policy in Indonasia', '2025-06-18 18:43:08'),
(723, 'Fara the Goat and Her Sister', '2025-06-18 18:43:08'),
(724, 'Crafts Products', '2025-06-18 18:43:08'),
(725, 'Kenya Music Festival Programme', '2025-06-18 18:43:08'),
(726, 'Reseachers and Inventors of Science and Technology in the German Museum', '2025-06-18 18:43:08'),
(727, 'Slovenj Grade', '2025-06-18 18:43:08'),
(728, 'The Federal Republic of germany today; Insights into a country', '2025-06-18 18:43:08'),
(729, '50 Salon Nacional Anos de Artistas', '2025-06-18 18:43:08'),
(730, 'African Success Story; The ivory Coast', '2025-06-18 18:43:08'),
(731, 'China Today \'99', '2025-06-18 18:43:08'),
(732, 'The Arrow Poisons', '2025-06-18 18:43:08'),
(733, 'Innovation in science education world wide', '2025-06-18 18:43:08'),
(734, 'Studies and documents', '2025-06-18 18:43:08'),
(735, 'Education in Eastern Africa', '2025-06-18 18:43:09'),
(736, 'Demographic aspects of educational planning', '2025-06-18 18:43:09'),
(737, 'Adult Education and Development', '2025-06-18 18:43:09'),
(738, 'Basic principles of vocational rehabilitation of the disabled', '2025-06-18 18:43:09'),
(739, 'The Carribean Mathematics;project training the Teacher as the Agent of Reform', '2025-06-18 18:43:09'),
(740, 'Physical Education in primary schools', '2025-06-18 18:43:09'),
(741, 'GHC Standard 4 Central Province Combined Course', '2025-06-18 18:43:09'),
(742, 'Miale ya Uzalendo', '2025-06-18 18:43:09'),
(743, 'KCPE TEST FOR MODERN ENGLISH', '2025-06-18 18:43:09'),
(744, 'GHC Standard 4 Rift Valley Province Combined Course', '2025-06-18 18:43:09'),
(745, 'GHC Standard 4 Nairobi Province Combined Course', '2025-06-18 18:43:09'),
(746, 'Report on the working of the Public service commission', '2025-06-18 18:43:09'),
(747, 'FATEHPUR SIKRI', '2025-06-18 18:43:09'),
(748, 'The phonology of a Bantu dialect', '2025-06-18 18:43:09'),
(749, 'GHC Standard 4 Western Province Combined Course', '2025-06-18 18:43:09'),
(750, 'What does a Man want', '2025-06-18 18:43:09'),
(751, 'GHC Standard 4 Coast Province Combined Course', '2025-06-18 18:43:09'),
(752, 'Transafrican journal of history', '2025-06-18 18:43:09'),
(753, 'GHC Standard 4 Nyanza Combined Course', '2025-06-18 18:43:09'),
(754, 'The Dawn of African History', '2025-06-18 18:43:09'),
(755, 'Dhana', '2025-06-18 18:43:09'),
(756, 'Practical Guide to in-service teacher Training in Africa', '2025-06-18 18:43:09'),
(757, 'Terminology of technical and vocational education', '2025-06-18 18:43:09'),
(758, 'Case Studies in Special Education:Cuba Japan Kenya sweden', '2025-06-18 18:43:09'),
(759, 'Educational trends in 1970; An International survey', '2025-06-18 18:43:09'),
(760, 'Planning the School Curriculum;Fundamentals of Education Planning', '2025-06-18 18:43:09'),
(761, 'Teaching School mathematics', '2025-06-18 18:43:09'),
(762, 'Education Deveopment in Africa; Integration and Administration', '2025-06-18 18:43:09'),
(763, 'Innovation in Reading Britain', '2025-06-18 18:43:09'),
(764, 'Concepts of Ecology', '2025-06-18 18:43:09'),
(765, 'Kenya Historical Review', '2025-06-18 18:43:09'),
(766, 'Report of the National Committee on Educational OBJECTIVES and POLICIES', '2025-06-18 18:43:09'),
(767, 'From equivalence of degrees to evaluation of competence', '2025-06-18 18:43:09'),
(768, 'A History of Modern Education in Kenya', '2025-06-18 18:43:09'),
(769, 'New trends in Chemistry teaching', '2025-06-18 18:43:09'),
(770, 'Bloom or Doom', '2025-06-18 18:43:09'),
(771, 'A Kuria bibliography', '2025-06-18 18:43:09'),
(772, 'Praise poems of the Kuria', '2025-06-18 18:43:09'),
(773, 'Sherpa architecture', '2025-06-18 18:43:09'),
(774, 'Journal of the language Association of Eastern Africa', '2025-06-18 18:43:09'),
(775, 'Uppsala to nairobi', '2025-06-18 18:43:09'),
(776, 'China handbook series culture', '2025-06-18 18:43:09'),
(777, 'Kenya National adult literacy survey report', '2025-06-18 18:43:09'),
(778, 'Olkuaak look Maasai', '2025-06-18 18:43:09'),
(779, 'Coming full circle', '2025-06-18 18:43:09'),
(780, 'Catalogue', '2025-06-18 18:43:09'),
(781, 'A situational Analysis on the Status of female genital mutilation eradication in kenya', '2025-06-18 18:43:09'),
(782, 'From Handpumps to Health', '2025-06-18 18:43:09'),
(783, 'A glossary of Kalenjin names,terms,and sayings', '2025-06-18 18:43:09'),
(784, 'The Ukamba Members Association', '2025-06-18 18:43:09'),
(785, 'Guide to Fossil Man', '2025-06-18 18:43:09'),
(786, 'Man\'s Environment; Human Geography in Colour', '2025-06-18 18:43:09'),
(787, 'Tourism; Transnational Corporations and Cultural Identities', '2025-06-18 18:43:09'),
(788, 'Drawing Archaelogical Finds for Publication', '2025-06-18 18:43:09'),
(789, 'Research on Hydrology; A Contribution to the International Hydrological Programme', '2025-06-18 18:43:09'),
(790, 'Current Anthropology', '2025-06-18 18:43:09'),
(791, 'Arts from Scotland', '2025-06-18 18:43:09'),
(792, 'Current Anthropology; A World Jounal of the Sciences of Man', '2025-06-18 18:43:09'),
(793, 'Current Anthropology; Volume 31 Number 5', '2025-06-18 18:43:09'),
(794, 'Old World Archaelogy; Foundations of Civilization', '2025-06-18 18:43:09'),
(795, 'Current Anthropology; Volume 28 Number 3', '2025-06-18 18:43:09'),
(796, 'Current Anthropology; Volume 28 Number 1', '2025-06-18 18:43:09'),
(797, 'Convetion for Safeguarding of the Intagible Cultural Heritage', '2025-06-18 18:43:09'),
(798, 'Preventing the Illicit Traffic in Cultural property; A Resource handbook for the implementation of 1970 Unesco Convention', '2025-06-18 18:43:09'),
(799, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Hungrary', '2025-06-18 18:43:10'),
(800, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Cuba', '2025-06-18 18:43:10'),
(801, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Ireland', '2025-06-18 18:43:10'),
(802, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Qatar', '2025-06-18 18:43:10'),
(803, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Greece', '2025-06-18 18:43:10'),
(804, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Brazil', '2025-06-18 18:43:10'),
(805, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Lesotho', '2025-06-18 18:43:10'),
(806, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Hoduras', '2025-06-18 18:43:10'),
(807, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Nicaragua', '2025-06-18 18:43:10'),
(808, 'KIPPRA in Brief 2014', '2025-06-18 18:43:10'),
(809, 'Acts Relating to Devolution Volume2', '2025-06-18 18:43:10'),
(810, 'Culture Health and Food', '2025-06-18 18:43:10'),
(811, 'Maasai Socio-Cultural Ethnography', '2025-06-18 18:43:10'),
(812, 'Ministry of Tourism, Wildlife and Heritage;Intagible Cultural Heritage and Sustainable Development', '2025-06-18 18:43:10'),
(813, 'The Origin, History and culture of Abatirichi', '2025-06-18 18:43:10'),
(814, 'Welcome to kenya; The Safari Country', '2025-06-18 18:43:10'),
(815, 'Culture in Peace and Conflict Resolution Within Communities of Central Kenya', '2025-06-18 18:43:10'),
(816, 'Kenya\'s National Heritage and Culture', '2025-06-18 18:43:10'),
(817, 'Abubakar\'s Dream', '2025-06-18 18:43:10'),
(818, 'Africa History of a Continent', '2025-06-18 18:43:10'),
(819, 'Rift Valley Province Socio Economic Achievements', '2025-06-18 18:43:10'),
(820, 'AFRIKA', '2025-06-18 18:43:10'),
(821, 'Watoto wa Africa', '2025-06-18 18:43:10'),
(822, 'Kazi Yangu', '2025-06-18 18:43:10'),
(823, 'Contemporary Arts in Brittany', '2025-06-18 18:43:10'),
(824, 'National Corruption perception survey', '2025-06-18 18:43:10'),
(825, 'Barnett Aden collection', '2025-06-18 18:43:10'),
(826, 'Sahara', '2025-06-18 18:43:10'),
(827, 'Songs from kenya', '2025-06-18 18:43:10'),
(828, 'Turkana pastoral craftsmen', '2025-06-18 18:43:10'),
(829, 'Kenya 79', '2025-06-18 18:43:10'),
(830, 'Lamu A study in conservation', '2025-06-18 18:43:10'),
(831, 'Kitui District Socio Cultural Profile', '2025-06-18 18:43:10'),
(832, 'Uhuru 12', '2025-06-18 18:43:10'),
(833, 'Kenya Select historical Documents 1884-1923', '2025-06-18 18:43:10'),
(834, 'Uhuru 13', '2025-06-18 18:43:10'),
(835, 'Draft Programme and budget for 1988-1989', '2025-06-18 18:43:10'),
(836, 'Basic Texts of the 2005 Convention on tha Protection and Promotion of the Diversity of Cultural Expressions', '2025-06-18 18:43:10'),
(837, 'A Biography of Kenyan Musicians Volume 1', '2025-06-18 18:43:10'),
(838, 'A Biography of Kenyan Musicians Volume 2', '2025-06-18 18:43:10'),
(839, 'Knowledge and Practices for Pollinator Conservation and Sustainable Land Management in the Eburu Ecosystem', '2025-06-18 18:43:10'),
(840, 'National Museums of Kenya 2017-2019 Biennial Report', '2025-06-18 18:43:10'),
(841, 'Prior Needs and Regional Co-operation Concerning Youth in English-Speaking Africa', '2025-06-18 18:43:10'),
(842, 'In-Country Technical Assistance for Establishment of an Institute of Traditional Medicine', '2025-06-18 18:43:10'),
(843, 'The Protection of Movable Cultural Property; Collection of Legislative Texts Norway', '2025-06-18 18:43:10'),
(844, 'Universal Declaration on Cultural Diversity', '2025-06-18 18:43:10'),
(845, 'Rebuilding Jamaica\'s Tourism', '2025-06-18 18:43:10'),
(846, 'Literature Music Fine Arts; A Review of German-Language Research Contributions on Literature, Music, and Fine Arts with Bibliographies', '2025-06-18 18:43:10'),
(847, 'An Alternative pattern of Basic Education: Radio Santa Maria', '2025-06-18 18:43:10'),
(848, 'Directory of Commonwealth Arts', '2025-06-18 18:43:10'),
(849, 'Intergration and Rural Development and the Role of Education; Report of the Kenya-Unesco Field Operational seminar Held in Vihiga, Kenya', '2025-06-18 18:43:10'),
(850, 'Culture and Development in Africa Building on Positive Culture Practices', '2025-06-18 18:43:10'),
(851, 'Rusinga Festival 2013', '2025-06-18 18:43:10'),
(852, 'Edson Artworks & framing', '2025-06-18 18:43:10'),
(853, 'Kenya Past and Present', '2025-06-18 18:43:10'),
(854, 'Chronic Poverty and Livelihood Strategies Among Elderly Women of Ganze Constituency', '2025-06-18 18:43:10'),
(855, 'Peoples and Cultures of kenya', '2025-06-18 18:43:10'),
(856, 'Let\'s Learn kenyan Sign Language Basic Words and Phrases in Kenyan Sign Language', '2025-06-18 18:43:10'),
(857, 'Department of Adult Education Eastern Province Annual Report', '2025-06-18 18:43:10'),
(858, 'Govenment Financial Regulations and Procedures', '2025-06-18 18:43:10'),
(859, 'Public Policy Making; Improving Administrative inputs for Public Policy making in Kenya', '2025-06-18 18:43:10'),
(860, 'Carreer and Succession management Strategy in Civil Service', '2025-06-18 18:43:10'),
(861, 'Private Sector Corpporate Governancy Trust; Guidelines for Good Corporate Goverance in State Owned Corporations', '2025-06-18 18:43:10'),
(862, 'Low Cost Transport in Asia; A Comprehensive Report on Five Cities', '2025-06-18 18:43:10'),
(863, 'The Constitution of Kenya', '2025-06-18 18:43:10'),
(864, 'The Earth\'s Core and Geomagnetism', '2025-06-18 18:43:10'),
(865, 'The Blankards; A Comedy', '2025-06-18 18:43:10'),
(866, 'A History of the Igbo People', '2025-06-18 18:43:10'),
(867, 'A Guide to Women\'s Organizations and Agencies Serving Women in Kenya', '2025-06-18 18:43:10'),
(868, 'Jounal of eastern African Research & Development', '2025-06-18 18:43:10'),
(869, 'Utafiti; Jounal of the Arts and Social Sciences', '2025-06-18 18:43:10'),
(870, 'Big Five', '2025-06-18 18:43:10'),
(871, 'Ain\'t that Good News', '2025-06-18 18:43:10'),
(872, 'Health and Human Rights; An International Quarterly Jounal', '2025-06-18 18:43:11'),
(873, 'Development and Employment in Kenya; A Strategy for the transformation of the Economy', '2025-06-18 18:43:11'),
(874, 'A Marketing Public Relations program', '2025-06-18 18:43:11'),
(875, 'Public Service Integrity programme; a sourcebook for Corruption prevention in the public Service', '2025-06-18 18:43:11'),
(876, 'Adolescent Drug Abuse in Kenya: Impact on Reproductive health', '2025-06-18 18:43:11'),
(877, 'National Guidelines; The implementation of Primary Health Care Kenya', '2025-06-18 18:43:11'),
(878, 'successful time management', '2025-06-18 18:43:11'),
(879, 'catalogue of 16mm sound films', '2025-06-18 18:43:11'),
(880, 'University of Nairobi calendar', '2025-06-18 18:43:11'),
(881, 'World Health Forum;An International Jounal of Health Development 1984, Vol. 56, no. $', '2025-06-18 18:43:11'),
(882, 'New trends in biology teaching', '2025-06-18 18:43:11'),
(883, 'The race Question in Modern Science', '2025-06-18 18:43:11'),
(884, 'Economic survey', '2025-06-18 18:43:11'),
(885, 'Globolazation, Health Sector Reform, Gender and Reproductive health', '2025-06-18 18:43:11'),
(886, 'Catalogue of common user stores', '2025-06-18 18:43:11'),
(887, 'Rehabilitation International', '2025-06-18 18:43:11'),
(888, 'East African Jounal of Medical Research Vol. 3 No. 2', '2025-06-18 18:43:11'),
(889, 'East African Jounal of Medical Research Vol. 3 No. 4', '2025-06-18 18:43:11'),
(890, 'East African Jounal of Medical Research Vol. 4 No. 1', '2025-06-18 18:43:11'),
(891, 'East African Jounal of Medical Research Vol. 3 No. 3', '2025-06-18 18:43:11'),
(892, 'Sources of the african past', '2025-06-18 18:43:11'),
(893, 'Ford foundation', '2025-06-18 18:43:11'),
(894, 'Concrete Admixtures:use and Applications', '2025-06-18 18:43:11'),
(895, 'National bank', '2025-06-18 18:43:11'),
(896, 'Integrated Rural Development and the Role of Education', '2025-06-18 18:43:11'),
(897, 'Environmental Physiology and Psychology in Arid Conditions; Proceedings of the Lucknow Symposium', '2025-06-18 18:43:11'),
(898, 'Fossil vertebrates of Africa Volume 1', '2025-06-18 18:43:11'),
(899, 'Theatre for Development in Africa with case studies from Malawi and Zambia', '2025-06-18 18:43:11'),
(900, 'Provisional List of Delegates, Representatives and Observers', '2025-06-18 18:43:11'),
(901, '17th World Congress of Rehabilitation International', '2025-06-18 18:43:11'),
(902, 'Educational Research in five European socialist countries', '2025-06-18 18:43:11'),
(903, '8 September International Literacy Day; Summary of Information Received Concerning the Celebration in 1980 and 1981', '2025-06-18 18:43:11'),
(904, 'Building productive capacity for Poverty Alleviation in Least Developed Countries (LDC\'S)', '2025-06-18 18:43:11'),
(905, 'Kenya 78', '2025-06-18 18:43:11'),
(906, 'Uhuru 17', '2025-06-18 18:43:11'),
(907, 'African Development Bank & African Development Fund 1994 Annual Meetings Nairobi, kenya 9-13 May 1994', '2025-06-18 18:43:11'),
(908, 'Uhuru 16', '2025-06-18 18:43:11'),
(909, 'Chinese Stoneware Glazes', '2025-06-18 18:43:11'),
(910, 'Kilns design Construction, and operation', '2025-06-18 18:43:11'),
(911, 'Department of Culture Work-Plan July-December, 1998', '2025-06-18 18:43:11'),
(912, 'Makerere Historical Jounal; Jounal of the History Department of Makerere University, kampala Vol. 2 No.1 1976', '2025-06-18 18:43:11'),
(913, '400 Jahre Sammeln und Reisen Der Witterls Bacher', '2025-06-18 18:43:11'),
(914, 'Report of The Co-Operative Bank of Kenya Ltd. Nairobi Delegates Seminar Held on 3rd 4th June, 1988 at The Staff Training Centre karen-Nairobi', '2025-06-18 18:43:11'),
(915, 'Editions', '2025-06-18 18:43:11'),
(916, 'The Handbook of Reconciliation in kenya', '2025-06-18 18:43:11'),
(917, 'Total Intergrated Quality Education and Training', '2025-06-18 18:43:11'),
(918, 'Kenya Yearbook;National Cohesion & Economic Recovery', '2025-06-18 18:43:11'),
(919, 'Scottish Crafts Now', '2025-06-18 18:43:11'),
(920, 'Human Sacrifice and the supernatural', '2025-06-18 18:43:11'),
(921, 'Financing Educational Development', '2025-06-18 18:43:11'),
(922, 'Programme Review and forward budget', '2025-06-18 18:43:11'),
(923, 'LA SICILIA DEI CAVALIERI', '2025-06-18 18:43:11'),
(924, 'Estimates of recurrent expenditure', '2025-06-18 18:43:11'),
(925, 'Songs and Politics in Eastern Africa', '2025-06-18 18:43:11'),
(926, 'District Allocation Budget', '2025-06-18 18:43:11'),
(927, 'Development Estimates', '2025-06-18 18:43:11'),
(928, 'Approved Programme and Budget f9r 1994-1995', '2025-06-18 18:43:11'),
(929, 'The Study of Animal Bones from Archaelogical sites', '2025-06-18 18:43:11'),
(930, 'Gerd Dengler', '2025-06-18 18:43:11'),
(931, 'Olduvai Gorge; My Search for Early', '2025-06-18 18:43:11'),
(932, 'A Kuria Bibliography from Gosi Cultural Centre', '2025-06-18 18:43:11'),
(933, 'Izingano ne Livola Lia Avalogooli', '2025-06-18 18:43:11'),
(934, 'Kenya Historical Review; The Jounal of the Historical Association of Kenya Vol 5 No. 1', '2025-06-18 18:43:11'),
(935, 'Shujaa', '2025-06-18 18:43:11'),
(936, 'African Voices; Luo Spirituals', '2025-06-18 18:43:11'),
(937, 'Nyani News', '2025-06-18 18:43:11'),
(938, '18th Nairobi international Book Fair', '2025-06-18 18:43:11'),
(939, 'National Development plan 2002-2008', '2025-06-18 18:43:11'),
(940, 'Jesus through the eyes of Mark', '2025-06-18 18:43:11'),
(941, 'Kenyatta and the Politics of Kenya', '2025-06-18 18:43:11'),
(942, 'The New Testament', '2025-06-18 18:43:11'),
(943, 'The Acrican Past', '2025-06-18 18:43:11'),
(944, 'Planet in peril', '2025-06-18 18:43:11'),
(945, 'Essentials of Development Planning', '2025-06-18 18:43:11'),
(946, 'Supplementary estimate', '2025-06-18 18:43:11'),
(947, 'Kenya Business Directory', '2025-06-18 18:43:11'),
(948, 'Estimates of Revenue', '2025-06-18 18:43:12'),
(949, 'Estimates of recurrent expenditures', '2025-06-18 18:43:12'),
(950, 'Development supplementary estimate', '2025-06-18 18:43:12'),
(951, 'Say yes for children', '2025-06-18 18:43:12'),
(952, 'His Worship Mayor Prof. Nathan Kahara 5th Nairobi Mayor/Ambassador for Peace: his Profile, Family & Other Leaders', '2025-06-18 18:43:12'),
(953, 'Ashakwu: Jounal of Ceramics Vol.11', '2025-06-18 18:43:12'),
(954, 'Social-Cultural profile of the Digo and Duruma Communities, Kwale District; Implications of Development', '2025-06-18 18:43:12'),
(955, 'East African Governments Handbook', '2025-06-18 18:43:12'),
(956, 'Heritage Management for Sustainable Development', '2025-06-18 18:43:12'),
(957, 'Exercises in Conversation pavilion of Kenya', '2025-06-18 18:43:12'),
(958, 'Bool News; A Kenya Publishers Association Publiction', '2025-06-18 18:43:12'),
(959, 'Desturi Nyanza', '2025-06-18 18:43:12'),
(960, 'Kenya Gazette Suppliment Acts 2004', '2025-06-18 18:43:12'),
(961, 'New Trends in Biology Teaching Volume IV', '2025-06-18 18:43:12'),
(962, 'Current Anthropology Volume 33, Number3,', '2025-06-18 18:43:12'),
(963, 'The Min-on Activities Guide', '2025-06-18 18:43:12'),
(964, 'Programme Review and Forward Budget 1994/95-1996/97', '2025-06-18 18:43:12'),
(965, 'Development Estimates For the year 1992/93 Vol II (Votes D19-D46)', '2025-06-18 18:43:12'),
(966, 'Report of the Parliamentary select Committee to Investigate Ethnic Clashes in Western and Other Parts of Kenya', '2025-06-18 18:43:12'),
(967, 'Kenya Telephone Directory 1988', '2025-06-18 18:43:12'),
(968, 'Modern law and Society; A Review of German-language Research Contributions on Law, Political Science, and Sociology with Bibliogrphies Vol XXIII', '2025-06-18 18:43:12'),
(969, 'Literature Music Fine Arts; A Review of German-language Research Contributions on Literature, Music, and Fine Arts with Bibliogrphies Vol XVI', '2025-06-18 18:43:12'),
(970, 'Directory of Unesco Databases', '2025-06-18 18:43:12'),
(971, 'Pan African Jounal Vol. IX No. 2', '2025-06-18 18:43:12'),
(972, 'Kenya National Council of Social Services', '2025-06-18 18:43:12'),
(973, 'World Crafts Council', '2025-06-18 18:43:12'),
(974, 'Kazi Yanga', '2025-06-18 18:43:12'),
(975, 'A commentary on the Constitution of Kenya', '2025-06-18 18:43:12'),
(976, 'The African and The Aids Holocaust', '2025-06-18 18:43:12'),
(977, 'Declaration of Principles on interim self government arrangements', '2025-06-18 18:43:12'),
(978, 'Kenyatta University college', '2025-06-18 18:43:12'),
(979, 'Programme and Abstracts', '2025-06-18 18:43:12'),
(980, 'Women and Development in Kenya', '2025-06-18 18:43:12'),
(981, 'Jesus Christ Our Muthamaki', '2025-06-18 18:43:12'),
(982, 'An economic history of Tropical Africa', '2025-06-18 18:43:12'),
(983, 'Formal logic :It\'s Scope and Limits', '2025-06-18 18:43:12'),
(984, 'Neolithic Cultures of Western Asia', '2025-06-18 18:43:12'),
(985, 'Festal \'77', '2025-06-18 18:43:12'),
(986, 'Literature Music Fine Arts', '2025-06-18 18:43:12'),
(987, 'Modern law and society', '2025-06-18 18:43:12'),
(988, 'Amalooto Gandola', '2025-06-18 18:43:12'),
(989, 'The Black and African World', '2025-06-18 18:43:12'),
(990, 'Colorful China', '2025-06-18 18:43:12'),
(991, 'Cultural Policy in the Republic of Korea', '2025-06-18 18:43:12'),
(992, 'Kenya 78 Yearbook', '2025-06-18 18:43:12'),
(993, 'Living Values; A Guidebook', '2025-06-18 18:43:12'),
(994, 'Philosophy and History Vol.XVI No. 2 German Studies', '2025-06-18 18:43:12'),
(995, 'Cultural Flow Between China and outside Word Throughout History', '2025-06-18 18:43:12'),
(996, 'International Jounal of Rehabilitation Research Vol. 4 No. 3', '2025-06-18 18:43:12'),
(997, 'Organisation and Promotion of Science in the Federal Republic of Germany', '2025-06-18 18:43:12'),
(998, 'Pictures from Living Past', '2025-06-18 18:43:12'),
(999, 'East African Law Journal ; Rich Man\'s Harvest Tanzania: Socialist Problems Communication in East Africa', '2025-06-18 18:43:12'),
(1000, 'East African Jounal;Literary Vacuum in East Africa', '2025-06-18 18:43:12'),
(1001, 'CDR Working Programme 1991;CDR Annual Report 1990', '2025-06-18 18:43:12'),
(1002, 'East African Jounal;Communication in East Africa', '2025-06-18 18:43:12'),
(1003, 'El Arte Rupestre Aragones', '2025-06-18 18:43:12'),
(1004, 'Kenya 25th Independence Annivesary 1963-1988', '2025-06-18 18:43:12'),
(1005, 'Intagible Cultural Heritage Domains', '2025-06-18 18:43:12'),
(1006, 'The Convention for the Safeguarding of the Intangible Cultural Heritage', '2025-06-18 18:43:12'),
(1007, 'Identifying and Inventorying Intangible Cultural Heritage', '2025-06-18 18:43:12'),
(1008, 'Implementing the Convetion for the Safeguarding of ICH', '2025-06-18 18:43:12'),
(1009, 'What is Intangible Cultural Heritage', '2025-06-18 18:43:12'),
(1010, 'Working Towards a Convention', '2025-06-18 18:43:12'),
(1011, 'Questions & Answers', '2025-06-18 18:43:12'),
(1012, 'We the People;The constitution of America', '2025-06-18 18:43:12'),
(1013, 'Kweli za Maisha Changamoto ya Mawasiliano', '2025-06-18 18:43:12'),
(1014, 'Rafiki wa Fasihi Vol. 1 No. 1', '2025-06-18 18:43:12'),
(1015, 'A Resource book for Facts for Life;All for Health', '2025-06-18 18:43:12'),
(1016, 'Afro-Arab Cultural Studies & Researches', '2025-06-18 18:43:12'),
(1017, 'Afro-Arab Cultural Institute Heritage of African Languages Manuscripts (Ajami)', '2025-06-18 18:43:12'),
(1018, 'Mbalamwezi in Black Mamba', '2025-06-18 18:43:12'),
(1019, 'Kifungo cha Obatala na Michezo Mingine', '2025-06-18 18:43:13'),
(1020, 'In Remembranceof a King;Frederick II of Prussia 1712-1786', '2025-06-18 18:43:13'),
(1021, 'Dust and the Shadow', '2025-06-18 18:43:13'),
(1022, 'The Federal Republic of Germany: A Land of Top-Ranking Research', '2025-06-18 18:43:13'),
(1023, 'i Fara-Osy sy Ravavimatoa', '2025-06-18 18:43:13'),
(1024, 'Amaica traditional Food Festival with Royco', '2025-06-18 18:43:13'),
(1025, 'insieme Estate', '2025-06-18 18:43:13'),
(1026, 'Museums the Real Thing', '2025-06-18 18:43:13'),
(1027, 'Service Charter;Deparment of Culture', '2025-06-18 18:43:13'),
(1028, 'Nyero & Other Rock Art Sites in Eastern Uganda', '2025-06-18 18:43:13'),
(1029, 'The Status of Women;An Annotated Biography 1990-1995', '2025-06-18 18:43:13'),
(1030, 'Kimo cha Uguzi', '2025-06-18 18:43:13'),
(1031, 'Danida\'s Plan of Action for Development Assistance to Women;County Programme', '2025-06-18 18:43:13'),
(1032, 'Assignment Children;Vitamin a deficiency and xerophthalmia', '2025-06-18 18:43:13'),
(1033, 'Race Mixture', '2025-06-18 18:43:13'),
(1034, 'Tribe Z Battle for Land and Language', '2025-06-18 18:43:13'),
(1035, 'Vocational Assessment and Work Preparation Centres for the Disabled', '2025-06-18 18:43:13'),
(1036, 'Kustler der Welt', '2025-06-18 18:43:13'),
(1037, 'East Africa Jounal;Commentry thought on Kenya Research in African Music, Somali Irredentism', '2025-06-18 18:43:13'),
(1038, 'Development Dialogue', '2025-06-18 18:43:13'),
(1039, 'Prince Claus Fund Jounal;Special issue on Asylum & Migration', '2025-06-18 18:43:13'),
(1040, 'Mikarire na Mituurire ya Amiru', '2025-06-18 18:43:13'),
(1041, 'The Indigenous Knowlege of the Ameru of Kenya', '2025-06-18 18:43:13'),
(1042, 'Chronology Migration and drought in interlacustrine Africa', '2025-06-18 18:43:13'),
(1043, 'The planning of library and documentation services', '2025-06-18 18:43:13'),
(1044, 'The Role of Libraries in promoting Awareness on Environmental Problems', '2025-06-18 18:43:13'),
(1045, 'Experimental period of the International Baccalaureate: objectives and results', '2025-06-18 18:43:13'),
(1046, 'JOLISO', '2025-06-18 18:43:13'),
(1047, 'what now', '2025-06-18 18:43:13'),
(1048, 'AZANIA', '2025-06-18 18:43:13'),
(1049, 'AJANTA', '2025-06-18 18:43:13'),
(1050, 'African Writers on the Air', '2025-06-18 18:43:13'),
(1051, 'A demographic Analysis of East Africa', '2025-06-18 18:43:13'),
(1052, 'Thought and Practice', '2025-06-18 18:43:13'),
(1053, 'Population Bulletin', '2025-06-18 18:43:13'),
(1054, 'The African Iron Age', '2025-06-18 18:43:13'),
(1055, 'Culture the way to solidarity in development', '2025-06-18 18:43:13'),
(1056, 'International cooperation and partnership', '2025-06-18 18:43:13'),
(1057, 'Zimwi la Ukimwi', '2025-06-18 18:43:13'),
(1058, 'The use of analog and digital computers in hydrology', '2025-06-18 18:43:13'),
(1059, 'A manual on mass media in population and development', '2025-06-18 18:43:13'),
(1060, 'The use of folk media for community motivation', '2025-06-18 18:43:13'),
(1061, 'The Kuliak Languages of Eastern Uganda', '2025-06-18 18:43:13'),
(1062, 'Inter-Regional Migration in Tropical Africa;London Institute of British Geographers Special Publication No. 8', '2025-06-18 18:43:13'),
(1063, 'New Technologies for the Third world', '2025-06-18 18:43:13'),
(1064, 'Earliest Civilizations of Near East', '2025-06-18 18:43:13'),
(1065, 'India 1993', '2025-06-18 18:43:13'),
(1066, 'Fourth Triennale-India 1978', '2025-06-18 18:43:13'),
(1067, 'Programmes and priorities', '2025-06-18 18:43:13'),
(1068, 'Properties of Building Materials', '2025-06-18 18:43:13'),
(1069, 'Golgenin Renkleri', '2025-06-18 18:43:13'),
(1070, 'Chile cultural', '2025-06-18 18:43:13'),
(1071, 'Polymers in Concrete', '2025-06-18 18:43:13'),
(1072, 'African Exploration', '2025-06-18 18:43:13'),
(1073, 'Busara', '2025-06-18 18:43:13'),
(1074, 'Management of natural resources in Africa', '2025-06-18 18:43:13'),
(1075, 'Resolutions', '2025-06-18 18:43:13'),
(1076, 'Traumzeichen', '2025-06-18 18:43:13'),
(1077, 'About Kenya', '2025-06-18 18:43:13'),
(1078, 'Oriental Rugs and Carpets', '2025-06-18 18:43:13'),
(1079, 'Theater Theater', '2025-06-18 18:43:13'),
(1080, 'Cultural Policy in Colombia; Studies on Cultural Policies', '2025-06-18 18:43:13'),
(1081, 'Cultural Policy in Coasta Rica; Studies on Cultural Policies', '2025-06-18 18:43:14'),
(1082, 'Bibliographical Services throughout the world 1970-74', '2025-06-18 18:43:14'),
(1083, 'The Zambezian Pasy Studies in Central African History', '2025-06-18 18:43:14'),
(1084, 'Pastrolism in Tropical Africa', '2025-06-18 18:43:14'),
(1085, 'Terra Mandre; 1,200 World Food Communities', '2025-06-18 18:43:14'),
(1086, 'Culture, Trade and Globalisation;Questions and Answers', '2025-06-18 18:43:14'),
(1087, 'Mission to Repress; Torture,Illegal Detentions and Extra-Judicial Killings by the Kenyan Police', '2025-06-18 18:43:14'),
(1088, 'Mau Mau Kizuizini', '2025-06-18 18:43:14'),
(1089, 'The making of Man and Woman Under Abagusii Customary Laws', '2025-06-18 18:43:14'),
(1090, 'Foreign ViewPoints;Multicultural Literature in Germany', '2025-06-18 18:43:14'),
(1091, '4th International Congress of Culture and Development;Thinking the World from Culture: towards Peace, Trith, and Human Emancipation', '2025-06-18 18:43:14'),
(1092, 'See Us Telling Our Creative story', '2025-06-18 18:43:14'),
(1093, 'Wanhao Cartoon', '2025-06-18 18:43:14'),
(1094, 'Renewed Growth through the Co-operative Movement;Sessional Paper No.4 of 1987', '2025-06-18 18:43:14'),
(1095, 'Kenya Yearbook 1977;Uhuru 13', '2025-06-18 18:43:14'),
(1096, 'Kenya Efforts to Conserve soil, Water and forests in 1983', '2025-06-18 18:43:14'),
(1097, 'Kenya 79;Uhuru 15', '2025-06-18 18:43:14'),
(1098, 'Gender-Sensitive education statistics and Indicators; a Practical guide', '2025-06-18 18:43:14'),
(1099, 'Intergrated Project in Arid Lands (IPAL);IPAL Technical Report No. A-2 background History of Mt. Kulal Region of Kenya', '2025-06-18 18:43:14'),
(1100, 'Intergrated Project in Arid Lands (IPAL);IPAL Technical Report No. F-1 background History of Mt. Kulal Region of Kenya', '2025-06-18 18:43:14'),
(1101, 'The State of the World\'s Children 2004; For Every Child Health, Education, Equality, Protection Aadvance Humanity', '2025-06-18 18:43:14'),
(1102, 'The State of the World\'s Children 1993', '2025-06-18 18:43:14'),
(1103, 'Afro Asia Culture Studies;The Soviet Union/Sub-Saharan Africa/ The Middle East China/India and Pakistan/Southeast Asia/Japan', '2025-06-18 18:43:14'),
(1104, 'Symposium on Investigations and Resources of the Carribean Sea and Adjacent Regions', '2025-06-18 18:43:14'),
(1105, 'Summary of Chapter Four on the characteristics of chronically Poor Households', '2025-06-18 18:43:14'),
(1106, 'Chronic Poverty Among the Elderly in Uganda:Perceptions, Experiences and Policy Issues', '2025-06-18 18:43:14'),
(1107, 'Ant by Sironka Proposal', '2025-06-18 18:43:14'),
(1108, 'Can Universal Pension help in Reducing Poverty in old age in Kenya;Policy working Paper', '2025-06-18 18:43:14'),
(1109, 'Chronic Poverty and Older People in the Developing World', '2025-06-18 18:43:14'),
(1110, 'Off the Margins: Older People, Human Rights and Poverty Reduction in Africa in the 21st Century; Linking ageing to national Poverty Policies, the PRSPs and the Millenium Development Goals', '2025-06-18 18:43:14'),
(1111, 'Chronic Poverty and Older People in South Africa', '2025-06-18 18:43:14'),
(1112, 'Carbon and Nitrogen Partitioning in Potted Orange (Citrus sinensis) Buildings as Influenced by Shade,Watering Frequency and Fertigation Nitrogen Concentration', '2025-06-18 18:43:14'),
(1113, 'A Revitalization Proposal Document', '2025-06-18 18:43:14'),
(1114, 'Female Educational Attainment labour Force Participation and Fertiity in Kenya', '2025-06-18 18:43:14'),
(1115, 'Project presentation', '2025-06-18 18:43:14'),
(1116, 'Recommendations and Plan of Action adopted by the National Seminar on Networking of science and Technology Information Systems', '2025-06-18 18:43:14'),
(1117, 'Mwenge jarida la Chama cha Kiswahili cha Chuo cha Kisii (KISCO)', '2025-06-18 18:43:14'),
(1118, 'KIE Research Report Series No 64: executive Summaryy on the Needs Assessment for the Secondary Educational curriculum', '2025-06-18 18:43:14'),
(1119, 'Study of the Atr-Ugikuyu', '2025-06-18 18:43:14'),
(1120, 'In-Country Technical assistace for Establishment of an Institute of Traditional medicine', '2025-06-18 18:43:14'),
(1121, 'Ethiopian hancrafts Center', '2025-06-18 18:43:14'),
(1122, '15th Ordinary Session of the ICA Executive Council', '2025-06-18 18:43:14'),
(1123, 'Periodic report 2004 Latin America and the Caribbean', '2025-06-18 18:43:14'),
(1124, 'Researchers and Inventors of Science and Technology in the German Museum', '2025-06-18 18:43:14'),
(1125, 'Fibre Reinforced Cement and Concrete Vol. 2', '2025-06-18 18:43:14'),
(1126, 'The Progress of the Nations', '2025-06-18 18:43:14'),
(1127, 'Strategy for Improved Nutrition of Children and Women in Developing Countries', '2025-06-18 18:43:14'),
(1128, 'Government of Kenya/Unicef Programme of Cooperation for hild Survival and Development Preview Meeting', '2025-06-18 18:43:14'),
(1129, 'Consequatur Fugiat', '2025-06-18 18:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `resource` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tasks` text NOT NULL,
  `recommended_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `resource`, `description`, `tasks`, `recommended_by`, `created_at`) VALUES
(1, 'Microsoft word', 'Used to prepare word documents', 'For preparation of word documents', 'wilfred omwoyo', '2025-04-11 22:26:05'),
(2, 'Chantale Ratliff', 'Incididunt facilis v', 'Exercitation quia di', 'Voluptas sunt aliqua', '2025-04-11 22:32:04'),
(3, 'Amal Rich', 'Ullam qui inventore ', 'Aut vel nostrum et e', 'Ex cumque rerum nisi', '2025-04-11 22:36:16'),
(4, 'Nero Dorsey', 'Quis rerum optio il', 'Sed corporis nobis e', 'Sunt non non omnis s', '2025-04-11 22:36:47'),
(5, 'Kyla Santos', 'Veniam sint sed nob', 'Dolore non ex id in', 'Delectus tempor ut ', '2025-04-11 22:41:28'),
(7, 'Stella George', 'Quam numquam expedit', 'Exercitationem recus', 'Qui vel quis possimu', '2025-04-11 22:42:15'),
(15, 'Matthew Logan', 'Reiciendis dolore iu', 'Non impedit incidun', 'Dolorum dignissimos ', '2025-04-11 23:24:08'),
(16, 'Quentin Luna', 'Quis sequi pariatur', 'Sed voluptate aspern', 'Earum dolor laudanti', '2025-04-11 23:24:23'),
(17, 'Anika Huffman', 'Dignissimos dolorem ', 'Sint consequatur Ma', 'Temporibus adipisci ', '2025-04-11 23:24:34'),
(18, 'Gwendolyn Terry', 'Ipsa ea rerum simil', 'Veritatis reiciendis', 'Aut modi facere exce', '2025-04-11 23:24:48'),
(19, 'Sara Mcclure', 'Esse fuga Fuga Vi', 'Aliqua Explicabo A', 'Aut mollit architect', '2025-04-11 23:28:43'),
(20, 'Xanthus Spence', 'Facilis iusto fugiat', 'Odit non totam tempo', 'Sunt asperiores id ', '2025-04-11 23:29:00'),
(21, 'Macaulay Walters', 'Vero corrupti accus', 'Quos rerum ut eligen', 'Sit qui nostrum sit', '2025-04-11 23:31:23'),
(22, 'Colorado Jimenez', 'Natus iste sit est ', 'Repellendus Recusan', 'Error nulla maxime n', '2025-04-12 01:39:55'),
(23, 'Macaulay Bryan', 'Aut ullam dolorem no', 'Qui consequatur comm', 'Sit quis id nihil cu', '2025-04-12 18:29:47'),
(24, 'Emi Nicholson', 'Nostrud sunt id tem', 'Corrupti sint vel a', 'Justus', '2025-04-14 19:21:37'),
(25, 'Candace Stout', 'In iste ea qui est a', 'Quo velit ipsam labo', 'In cillum non veniam', '2025-04-14 21:59:56'),
(26, 'Garth Mccormick', 'Quos amet quia ipsa', 'Qui libero sunt off', 'Consequatur Optio ', '2025-04-14 22:02:06'),
(28, 'Stacy Dixon', 'Ea labore natus odio', 'Eu velit sit ab nisi', 'Nihil id architecto ', '2025-04-14 22:16:43'),
(29, 'Boris Gibson', 'Eum nostrud et corpo', 'Aliqua Iusto facili', 'Natus officiis quibu', '2025-04-14 22:17:08'),
(30, 'Chava Sosa', 'Est consequatur ame', 'Adipisci sunt sunt ', 'Aliquip earum ullamc', '2025-04-14 22:32:20'),
(31, 'Lewis Haynes', 'Fugiat sint exceptu', 'Provident reprehend', 'Aut dolorem quae quo', '2025-04-14 22:33:31'),
(32, 'Nolan Mooney', 'Temporibus consectet', 'Vel qui non similiqu', 'Quae rerum aut beata', '2025-04-14 22:38:18'),
(33, 'Garrison Downs', 'Sint irure voluptate', 'Accusamus eos asperi', 'Distinctio Harum et', '2025-04-14 22:43:49'),
(35, 'Lee Stark', 'Dicta quos duis occa', 'Qui sit odio eiusmo', 'Autem beatae consequ', '2025-04-14 23:31:37'),
(36, 'Bertha Lamb', 'Nihil perferendis po', 'Quos laborum Id con', 'Ipsa ad a aliquid d', '2025-04-14 23:35:59'),
(37, 'Elton Perkins', 'Obcaecati aut non nu', 'Incidunt voluptate ', 'Ipsum mollitia reru', '2025-04-16 03:38:38'),
(38, 'Jemima Guzman', 'Quo aliqua Esse re', 'Illo sunt nulla vero', 'Duis facilis veniam', '2025-04-16 03:40:28'),
(39, 'Cynthia Nichols', 'Similique voluptate ', 'Tenetur quos dolor q', 'Accusantium aliquam ', '2025-04-24 23:10:40'),
(40, 'Cynthia Nichols', 'Similique voluptate ', 'Tenetur quos dolor q', 'Accusantium aliquam ', '2025-04-24 23:10:40'),
(41, 'Cynthia Nichols', 'Similique voluptate ', 'Tenetur quos dolor q', 'Accusantium aliquam ', '2025-04-24 23:10:40'),
(42, 'Ila Barron', 'Velit dolor quis qui', 'Explicabo Quo liber', 'Magnam molestias nis', '2025-04-24 23:11:14'),
(43, 'Illustrator', 'sjsijnnmfe', 'efefjheiejkek', 'wachuka', '2025-04-28 16:42:59'),
(44, 'Jarrod English', 'Fuga Culpa sed nih', 'Voluptas magnam ex v', 'Est proident nostr', '2025-05-09 18:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `password_changed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `department_id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `date_created`, `password_changed`) VALUES
(2, 8, 'Lynn', 'Adhiambo', '', '1111111111', 'Nairobi,Kenya', 'lynn@gmail.com', '1bbd886460827015e5d605ed44252251', '2025-04-07 16:29:09', 0),
(4, 8, 'Ken', 'Lorry', '', '07878765545', '5th', 'lorry@gmail.com', '1bbd886460827015e5d605ed44252251', '2025-04-09 14:55:36', 0),
(9, 12, 'Buckminsteraaa', 'Simonaaa', '', '', '', 'tokehemo@mailinator.com', '1bbd886460827015e5d605ed44252251', '2025-04-11 09:26:00', 0),
(13, 8, 'John', 'Getty', '', '', '', 'john@gmail.com', '1bbd886460827015e5d605ed44252251', '2025-04-11 13:45:51', 0),
(14, 8, 'Mercy', 'Wachuka', '', '', '', 'wachuka@gmail.com', 'b97aad9c86da56bd52f2462ddc8469e9', '2025-04-28 09:36:01', NULL),
(15, 21, 'Daphne', 'Ball', '', '', '', 'kufide@mailinator.com', 'dd4b21e9ef71e1291183a46b913ae6f2', '2025-05-09 12:42:48', NULL),
(16, 23, 'Kelly', 'Gonzales', '', '', '', 'vidy@mailinator.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '2025-06-13 11:45:42', NULL),
(17, 12, 'Candace', 'David', '', '', '', 'lyqori@mailinator.com', 'bae5e3208a3c700e3db642b6631e95b9', '2025-06-13 11:48:31', NULL),
(18, 13, 'Jane', 'Mwiti', '', '', '', 'mwiti@gmail.com', '3d2172418ce305c7d16d4b05597c6a59', '2025-06-13 13:08:27', NULL),
(19, 21, 'Lacky', 'Dube', '', '', '', 'lucky@gmail.com', '96e79218965eb72c92a549dd5a330112', '2025-06-16 14:38:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(30) NOT NULL,
  `subject` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Pending,1=on process,2= Closed',
  `department_id` int(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `staff_id` int(30) NOT NULL,
  `admin_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `assigned_to` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `user` varchar(50) NOT NULL,
  `ticket_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `description`, `status`, `department_id`, `customer_id`, `staff_id`, `admin_id`, `date_created`, `assigned_to`, `user`, `ticket_number`) VALUES
(1, 'Sample ticket', '&lt;h3 style=&quot;font-family: &amp;quot;Source Sans Pro&amp;quot;, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; color: rgb(33, 37, 41);&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Software Bug&amp;nbsp;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin accumsan velit, et aliquam mi mollis vitae. Vivamus pellentesque placerat vehicula. Pellentesque vulputate diam nisi, bibendum pharetra lectus ultrices vel. Ut in ipsum tristique, iaculis velit id, convallis justo. Donec aliquam justo quis purus consequat rutrum. Sed sed velit at ante tincidunt dictum id eget ipsum. Proin a tellus felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis sagittis urna nec lorem pharetra, quis commodo libero efficitur. Ut odio lectus, blandit nec dapibus nec, scelerisque a lectus. In hac habitasse platea dictumst.&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Test&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;sample&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;bug&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ol&gt;', 1, 1, 2, 1, 1, '2020-11-09 13:44:43', '4', '', NULL),
(3, 'Printer not working', '&lt;p&gt;Please help me solve this.&lt;/p&gt;', 1, 2, 3, 0, 1, '2025-04-04 20:58:31', '13', '', NULL),
(4, 'Network not working', '&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-family: Helvetica;&quot;&gt;Please help me resolve my network issues.&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;', 2, 2, 4, 0, 0, '2025-04-04 21:03:04', '15', '', NULL),
(5, 'Ut et sit quia quas', '', 2, 2, 3, 0, 1, '2025-04-07 10:45:24', '4', '', NULL),
(9, 'Printer not working', '&lt;p&gt;Please help out. Thank you.&lt;/p&gt;', 2, 12, 5, 0, 0, '2025-04-07 16:34:00', '', '', NULL),
(10, 'Network not working', 'No internet in my office. Please help.', 1, 28, 5, 0, 0, '2025-04-08 10:52:19', '', '', NULL),
(11, 'Printer not working', 'fhj jdgkgjkfjkfkvfjvvj', 0, 13, 3, 0, 1, '2025-04-09 13:47:39', '', '', NULL),
(12, 'Computer not working', '', 0, 19, 6, 0, 0, '2025-04-09 13:49:25', '', '', NULL),
(13, 'Computer not working', '&lt;p&gt;yyyyyy&lt;/p&gt;', 0, 13, 6, 0, 0, '2025-04-09 13:50:20', '', '', NULL),
(14, 'internet not working', '&lt;p&gt;no cables.&lt;/p&gt;', 2, 28, 7, 0, 0, '2025-04-09 14:51:41', '2', '', NULL),
(15, 'Fugit et ullamco ir', '', 2, 26, 5, 0, 0, '2025-04-10 15:52:24', '4', '', NULL),
(16, 'Qui porro omnis recu', '', 0, 13, 5, 0, 0, '2025-04-10 15:52:51', '', '', NULL),
(17, 'Beatae esse aut a qu', '', 1, 29, 5, 0, 0, '2025-04-10 15:54:56', '', '', NULL),
(18, 'Consequatur voluptat', '', 2, 22, 5, 0, 0, '2025-04-10 15:55:57', '15', '', NULL),
(19, 'Network not working', '&lt;p&gt;please help me.&lt;/p&gt;', 1, 29, 5, 0, 0, '2025-04-10 15:59:48', '14', '', NULL),
(20, 'Soluta placeat ab c', '', 2, 19, 9, 0, 0, '2025-04-11 09:36:39', '13', '', NULL),
(21, 'Adipisci cupidatat a', 'I am stuck.', 2, 23, 7, 0, 0, '2025-04-11 09:37:26', '4', '', NULL),
(22, 'Printer not working Today', '&lt;p&gt;Please Come Now.&lt;/p&gt;', 2, 22, 8, 0, 0, '2025-04-11 11:37:03', '9', '', NULL),
(23, 'Monitor affected', '&lt;p&gt;Monitor not working.&lt;/p&gt;', 1, 28, 6, 0, 1, '2025-04-11 11:45:30', '4', '', NULL),
(24, 'Dirty Computer', 'please come now.', 2, 20, 10, 0, 0, '2025-04-11 12:19:05', '4', '', NULL),
(25, 'Power Issues', '&lt;p&gt;Power issues here.&lt;/p&gt;', 2, 19, 7, 0, 0, '2025-04-11 13:49:52', '9', '', NULL),
(26, 'Recusandae Voluptat', '', 1, 26, 7, 0, 0, '2025-04-12 11:14:02', '4', '', NULL),
(27, 'Ad quisquam modi obc', 'goood', 2, 27, 6, 0, 0, '2025-04-12 11:14:29', '2', '', NULL),
(28, 'Est dolor eum ipsa', 'great solving.', 1, 23, 5, 0, 0, '2025-04-12 11:14:55', '4', '', NULL),
(29, 'Hic laborum ea est ', 'kkkkkkkk', 0, 27, 9, 0, 1, '2025-04-12 11:19:05', '4', '', NULL),
(30, 'Mollit cum est imped', 'great', 1, 22, 6, 0, 0, '2025-04-12 11:19:51', '9', '', NULL),
(31, 'Et reiciendis velit ', 'goood', 2, 29, 10, 0, 0, '2025-04-12 11:21:28', '4', '', NULL),
(32, 'Velit ex sit reprehe', 'gggggg', 2, 29, 10, 0, 0, '2025-04-12 11:22:19', '2', '', NULL),
(33, 'Sint repudiandae ess', 'ggggggg', 2, 28, 5, 0, 0, '2025-04-12 11:22:49', '14', '', NULL),
(34, 'Laudantium atque do', 'eeeeeeee', 2, 18, 10, 0, 0, '2025-04-14 12:30:04', '10', '', NULL),
(35, 'Network not working', '&lt;p&gt;hhkjfdfh&lt;/p&gt;', 2, 19, 16, 0, 0, '2025-04-28 09:34:07', '2', '', NULL),
(36, 'Printer not working', '&lt;p&gt;Please help now.&lt;/p&gt;', 1, 8, 16, 0, 0, '2025-05-05 15:46:08', '13', 'Victor Kirwa', NULL),
(37, 'Network Issue', '&lt;p&gt;please come now.&lt;/p&gt;', 0, 13, 16, 0, 0, '2025-05-06 09:41:17', '9', 'Victor Kirwa', NULL),
(38, 'Office related problems', '&lt;p&gt;Office not working, please help me now&lt;/p&gt;', 0, 22, 16, 0, 0, '2025-05-06 09:57:09', '4', 'Victor Kirwa', NULL),
(39, 'Other', '&lt;p&gt;Email issues.&lt;/p&gt;', 1, 26, 16, 0, 0, '2025-05-06 10:02:26', '2', 'Victor Kirwa', NULL),
(40, 'Network Issue', '&lt;p&gt;ttttttt&lt;/p&gt;', 0, 18, 17, 0, 0, '2025-05-08 09:09:26', '2', 'Teresia Teresia', NULL),
(41, 'Other', 'good', 2, 22, 1, 0, 1, '2025-05-08 16:03:30', '14', 'Administrator ', NULL),
(42, 'Other', 'good.', 0, 22, 1, 0, 1, '2025-05-08 16:07:59', '10', 'Administrator ', NULL),
(43, 'Zimbra', '', 2, 22, 1, 0, 1, '2025-05-08 16:22:07', '13', 'Administrator ', NULL),
(44, 'Other', 'Come now and help Please.', 0, 22, 1, 0, 1, '2025-05-08 16:30:14', '14', 'Administrator ', NULL),
(45, 'System Crash', '', 2, 28, 16, 0, 0, '2025-05-08 16:33:07', '13', 'Victor Kirwa', NULL),
(46, 'System Crash', '', 0, 17, 18, 0, 0, '2025-05-09 11:47:55', '14', 'Brenda  Chemutai', NULL),
(47, 'Other', '', 2, 22, 1, 0, 1, '2025-05-09 11:56:30', '15', 'Administrator ', NULL),
(48, 'System Crash', '', 2, 28, 19, 0, 0, '2025-05-09 11:58:16', '14', 'Enos  Mokaya', NULL),
(49, 'Software Installation', '', 2, 21, 16, 0, 0, '2025-05-09 14:23:48', '9', 'Victor Kirwa', NULL),
(50, 'Office related problems', '', 2, 8, 21, 0, 0, '2025-05-09 14:32:29', '9', 'Jael Mcconnell', NULL),
(51, 'Zimbra', '', 1, 28, 16, 0, 0, '2025-05-13 11:10:18', '2', 'Victor Kirwa', NULL),
(52, 'Office related problems', '', 1, 13, 16, 0, 0, '2025-05-13 11:14:30', '9', 'Victor Kirwa', NULL),
(53, 'Network Issue', '', 0, 13, 22, 0, 0, '2025-05-14 08:45:24', '', 'Stephen  Kikuvi', NULL),
(54, 'Other', 'please help.', 1, 13, 22, 0, 0, '2025-05-14 08:46:06', '2', 'Stephen  Kikuvi', NULL),
(55, 'Software Installation', '', 2, 22, 19, 0, 0, '2025-05-26 10:47:42', '4', 'Enos  Mokaya', NULL),
(56, 'Zimbra', '', 2, 22, 2, 0, 0, '2025-06-10 12:44:57', '2', 'Lynn Adhiambo', NULL),
(57, 'Software Installation', '', 0, 13, 2, 0, 0, '2025-06-10 14:03:51', '', 'Lynn Adhiambo', NULL),
(58, 'Network Issue', '', 0, 13, 18, 0, 0, '2025-06-10 14:04:41', '', 'Brenda  Chemutai', NULL),
(59, 'System Crash', '', 0, 22, 18, 0, 0, '2025-06-10 14:14:24', '', 'Brenda  Chemutai', NULL),
(60, 'Software Installation', '', 0, 19, 18, 0, 0, '2025-06-10 14:14:52', '', 'Brenda  Chemutai', NULL),
(61, 'System Crash', '', 0, 22, 18, 0, 0, '2025-06-10 14:16:40', '', 'Brenda  Chemutai', NULL),
(62, 'Software Installation', '', 0, 22, 18, 0, 0, '2025-06-10 14:17:59', '', 'Brenda  Chemutai', NULL),
(63, 'System Crash', '', 0, 13, 18, 0, 0, '2025-06-10 14:18:20', '', 'Brenda  Chemutai', NULL),
(64, 'Zimbra', '', 0, 19, 18, 0, 0, '2025-06-10 14:19:01', '', 'Brenda  Chemutai', NULL),
(65, 'Software Installation', '', 0, 24, 18, 0, 0, '2025-06-10 14:22:23', '', 'Brenda  Chemutai', NULL),
(66, 'System Crash', '', 0, 13, 18, 0, 0, '2025-06-10 14:22:57', '', 'Brenda  Chemutai', NULL),
(67, 'Zimbra', '', 0, 22, 18, 0, 0, '2025-06-10 14:23:37', '', 'Brenda  Chemutai', NULL),
(68, 'System Crash', '', 0, 22, 18, 0, 0, '2025-06-10 14:27:46', '', 'Brenda  Chemutai', NULL),
(69, 'Network Issue', '', 0, 29, 18, 0, 0, '2025-06-10 14:30:35', '', 'Brenda  Chemutai', NULL),
(70, 'System Crash', '', 2, 13, 18, 0, 0, '2025-06-10 14:31:03', '13', 'Brenda  Chemutai', NULL),
(71, 'System Crash', '', 0, 29, 1, 0, 1, '2025-06-11 11:08:28', '2', 'Administrator ', NULL),
(72, 'Network Issue', '', 1, 20, 18, 0, 0, '2025-06-11 11:11:12', '2', 'Brenda  Chemutai', NULL),
(73, 'Network Issue', '', 2, 22, 18, 0, 0, '2025-06-12 09:25:34', '2', 'Brenda  Chemutai', NULL),
(74, 'System Crash', '', 1, 22, 23, 0, 0, '2025-06-12 13:06:43', '2', 'Moses Chege', NULL),
(75, 'System Crash', '', 0, 22, 1, 0, 1, '2025-06-13 11:49:26', '', 'Administrator ', NULL),
(76, 'Software Installation', '', 2, 32, 23, 0, 0, '2025-06-13 11:57:52', '2', 'Moses Chege', NULL),
(77, 'System Crash', '', 0, 22, 25, 0, 0, '2025-06-13 13:10:48', '', 'Mumo Francis', NULL),
(78, 'Other', 'os problems', 1, 22, 25, 0, 0, '2025-06-13 13:11:45', '18', 'Mumo Francis', NULL),
(79, 'Software Installation', '', 2, 13, 25, 0, 0, '2025-06-16 12:20:40', '2', 'Mumo Francis', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `name`, `created_at`) VALUES
(423, 'GOK', '2025-06-18 18:43:06'),
(424, 'Margaret Strobel', '2025-06-18 18:43:06'),
(425, 'Sony Cororation', '2025-06-18 18:43:06'),
(426, 'Gikuyu Journal', '2025-06-18 18:43:06'),
(427, 'Zheng Lei', '2025-06-18 18:43:06'),
(428, 'Ministry of Sports and Heritage', '2025-06-18 18:43:06'),
(429, 'UNESCO', '2025-06-18 18:43:06'),
(430, 'Office of the President, Ministry of State Department for National Heritage and Culture', '2025-06-18 18:43:06'),
(431, 'Beijing International Chinese College', '2025-06-18 18:43:06'),
(432, 'Indigenous Information Network', '2025-06-18 18:43:06'),
(433, 'Jill Carino', '2025-06-18 18:43:06'),
(434, 'World intellectual property organization', '2025-06-18 18:43:06'),
(435, 'Dr. Sekundu Morgan', '2025-06-18 18:43:06'),
(436, 'ministry of sports,culture and the Arts', '2025-06-18 18:43:06'),
(437, 'Indigenous Network', '2025-06-18 18:43:06'),
(438, 'Dr Sekundu Morgan', '2025-06-18 18:43:07'),
(439, 'N/A', '2025-06-18 18:43:07'),
(440, 'John Mbaria &Mordecai Ogada', '2025-06-18 18:43:07'),
(441, 'Dr.Sekundu Morgan', '2025-06-18 18:43:07'),
(442, 'Sekretariati ya Time ya Ushirikiano wa Afrika Mashariki', '2025-06-18 18:43:07'),
(443, 'Benson Alumasa', '2025-06-18 18:43:07'),
(444, 'Onchoka Ongoro', '2025-06-18 18:43:07'),
(445, 'Chi Filin', '2025-06-18 18:43:07'),
(446, 'Vic Munala', '2025-06-18 18:43:07'),
(447, 'Andrew Maina', '2025-06-18 18:43:07'),
(448, 'Muthoni Likimani', '2025-06-18 18:43:07'),
(449, 'Natasha Mwarwa', '2025-06-18 18:43:07'),
(450, 'Adam Shafi', '2025-06-18 18:43:07'),
(451, 'Huseyn Hilmi Isik', '2025-06-18 18:43:07'),
(452, 'Msafiri Hassan Adam', '2025-06-18 18:43:07'),
(453, 'ACALAN Journal', '2025-06-18 18:43:07'),
(454, 'EAKC', '2025-06-18 18:43:07'),
(455, 'Lamini H. Omar', '2025-06-18 18:43:07'),
(456, 'Mfasiri Hassan Adam', '2025-06-18 18:43:07'),
(457, 'Gideon Nyakiongora', '2025-06-18 18:43:07'),
(458, 'Unicef', '2025-06-18 18:43:07'),
(459, 'Kimani Njogu', '2025-06-18 18:43:07'),
(460, 'Njuguna Wa Kimunya', '2025-06-18 18:43:07'),
(461, 'Inyani Simala,Leonard Chacha na Miriam Osore', '2025-06-18 18:43:07'),
(462, 'Christopher Conte', '2025-06-18 18:43:07'),
(463, 'Njue Kamunde', '2025-06-18 18:43:07'),
(464, 'Ahmed Sheikh Nabhany, Ibrahim Noor Shariff and Jan Feidel', '2025-06-18 18:43:07'),
(465, 'Agikuyu Peace Museum', '2025-06-18 18:43:07'),
(466, 'Susan George', '2025-06-18 18:43:07'),
(467, 'Winona LaDuke and Sarah Alexander', '2025-06-18 18:43:07'),
(468, 'George Orwell', '2025-06-18 18:43:07'),
(469, 'Wenday Kamau', '2025-06-18 18:43:07'),
(470, 'Josiah Mwangi Kariuki', '2025-06-18 18:43:07'),
(471, 'Mutea Rukwaru', '2025-06-18 18:43:07'),
(472, 'Ministry of Agriculture', '2025-06-18 18:43:07'),
(473, 'Pepe Minambo', '2025-06-18 18:43:07'),
(474, 'Swidish Institute', '2025-06-18 18:43:07'),
(475, 'Godfrey S. Mse', '2025-06-18 18:43:07'),
(476, 'Will Burnham', '2025-06-18 18:43:07'),
(477, 'Oketch Owiti', '2025-06-18 18:43:07'),
(478, 'James N Mburu', '2025-06-18 18:43:07'),
(479, 'EAC', '2025-06-18 18:43:07'),
(480, 'Herman M. Asava', '2025-06-18 18:43:07'),
(481, 'kenya copyright board', '2025-06-18 18:43:07'),
(482, 'festival information booklet', '2025-06-18 18:43:07'),
(483, 'Department of culture', '2025-06-18 18:43:07'),
(484, 'Don Hinkelman', '2025-06-18 18:43:07'),
(485, 'East African Community', '2025-06-18 18:43:07'),
(486, 'Department of social affairs AU', '2025-06-18 18:43:07'),
(487, 'Zanzibar Eacrotanal', '2025-06-18 18:43:07'),
(488, 'Tamarind', '2025-06-18 18:43:07'),
(489, 'OAU', '2025-06-18 18:43:07'),
(490, 'Mark Radoli', '2025-06-18 18:43:07'),
(491, 'Tim Gammell', '2025-06-18 18:43:07'),
(492, 'Kitula G. King\'ei', '2025-06-18 18:43:07'),
(493, 'William Pen College', '2025-06-18 18:43:07'),
(494, 'Musatsa na Herman', '2025-06-18 18:43:07'),
(495, 'Herman Asava', '2025-06-18 18:43:07'),
(496, 'Babusa H. Omar', '2025-06-18 18:43:07'),
(497, 'Commomwealth Secretariat', '2025-06-18 18:43:07'),
(498, 'International labour Office', '2025-06-18 18:43:07'),
(499, 'G.M Coverdale', '2025-06-18 18:43:08'),
(500, 'Herman Mulinya', '2025-06-18 18:43:08'),
(501, 'Adam N. Simbeye', '2025-06-18 18:43:08'),
(502, 'Danida', '2025-06-18 18:43:08'),
(503, 'Eastern and Southern African management Institute', '2025-06-18 18:43:08'),
(504, 'United nations', '2025-06-18 18:43:08'),
(505, 'BK Jayanti Kirpq', '2025-06-18 18:43:08'),
(506, 'German Studies', '2025-06-18 18:43:08'),
(507, 'Foreign Languages press beijing', '2025-06-18 18:43:08'),
(508, 'Reza Abedini', '2025-06-18 18:43:08'),
(509, 'Fu Jun', '2025-06-18 18:43:08'),
(510, 'Brittany\'s leisure guide', '2025-06-18 18:43:08'),
(511, 'Government of Slovenia', '2025-06-18 18:43:08'),
(512, 'Hermann Glaser', '2025-06-18 18:43:08'),
(513, 'Cultural Council of the Embassy of I.R. Iran, Nairobi', '2025-06-18 18:43:08'),
(514, 'Inter Nations Bonn', '2025-06-18 18:43:08'),
(515, 'Eva and Rainer', '2025-06-18 18:43:08'),
(516, 'Frans', '2025-06-18 18:43:08'),
(517, 'Mariano Baptista Gumucio', '2025-06-18 18:43:08'),
(518, 'Public law institute', '2025-06-18 18:43:08'),
(519, 'A. A. Zvorykin', '2025-06-18 18:43:08'),
(520, 'Robert Martin', '2025-06-18 18:43:08'),
(521, 'Asher', '2025-06-18 18:43:08'),
(522, 'Abelto Carrizosa Alajmo', '2025-06-18 18:43:08'),
(523, 'Rene Jean and Gregory', '2025-06-18 18:43:08'),
(524, 'LEMPERTZ', '2025-06-18 18:43:08'),
(525, 'Government of Germany', '2025-06-18 18:43:08'),
(526, 'S. Rajagopalan', '2025-06-18 18:43:08'),
(527, 'EAISCA', '2025-06-18 18:43:08'),
(528, 'M. B. Mkelle', '2025-06-18 18:43:08'),
(529, 'A. R. Sharif', '2025-06-18 18:43:08'),
(530, 'Ian Dodu', '2025-06-18 18:43:08'),
(531, 'Directorate-General of Culture Indonesia', '2025-06-18 18:43:08'),
(532, 'Henri Rahaingoson', '2025-06-18 18:43:08'),
(533, 'Scottish Development Agency', '2025-06-18 18:43:08'),
(534, 'Ministry of Culture and Social Services', '2025-06-18 18:43:08'),
(535, 'Slovenj Grade', '2025-06-18 18:43:08'),
(536, 'Hans Werner Klein', '2025-06-18 18:43:08'),
(537, 'Fernado Botero', '2025-06-18 18:43:08'),
(538, 'Marc and Evelyne Bernheim', '2025-06-18 18:43:08'),
(539, 'China Statistis Press', '2025-06-18 18:43:08'),
(540, 'Maitai Karimi', '2025-06-18 18:43:08'),
(541, 'Albert Baez', '2025-06-18 18:43:08'),
(542, 'SIDA', '2025-06-18 18:43:08'),
(543, 'John Bigala', '2025-06-18 18:43:09'),
(544, 'Ta Ngoc Chau', '2025-06-18 18:43:09'),
(545, 'Wolfgang', '2025-06-18 18:43:09'),
(546, 'ILO', '2025-06-18 18:43:09'),
(547, 'H. Martyn Cundy', '2025-06-18 18:43:09'),
(548, 'Joseph O. Toluhi', '2025-06-18 18:43:09'),
(549, 'J.N. Kuria and Nelson G. Muchemi', '2025-06-18 18:43:09'),
(550, 'Kitula Kingei', '2025-06-18 18:43:09'),
(551, 'Nelson Muchemi', '2025-06-18 18:43:09'),
(552, 'Fred M. Omwoyo', '2025-06-18 18:43:09'),
(553, 'German studies section1', '2025-06-18 18:43:09'),
(554, 'Government', '2025-06-18 18:43:09'),
(555, 'Saiyid Athar', '2025-06-18 18:43:09'),
(556, 'Wilson Kaiga', '2025-06-18 18:43:09'),
(557, 'Mwakio Ndau', '2025-06-18 18:43:09'),
(558, 'Bethwell Ogot', '2025-06-18 18:43:09'),
(559, 'Cleophas Ondieki', '2025-06-18 18:43:09'),
(560, 'Roland Oliver', '2025-06-18 18:43:09'),
(561, 'Heribert Hinzen', '2025-06-18 18:43:09'),
(562, 'Adimola Ocitti', '2025-06-18 18:43:09'),
(563, 'Ibedata/Unesco', '2025-06-18 18:43:09'),
(564, 'Unesco/IBE', '2025-06-18 18:43:09'),
(565, 'Arieh Lewy', '2025-06-18 18:43:09'),
(566, 'W. Servais and T. Varga', '2025-06-18 18:43:09'),
(567, 'Edward J. Kormondy', '2025-06-18 18:43:09'),
(568, 'William Ochieng', '2025-06-18 18:43:09'),
(569, 'Jean Guiton', '2025-06-18 18:43:09'),
(570, 'Sorobeo Nyachieo', '2025-06-18 18:43:09'),
(571, 'Kenya Institute of Education', '2025-06-18 18:43:09'),
(572, 'Kirsten Alsaker', '2025-06-18 18:43:09'),
(573, 'Suzette Heald', '2025-06-18 18:43:09'),
(574, 'Wangombe C.R', '2025-06-18 18:43:09'),
(575, 'David Johnson', '2025-06-18 18:43:09'),
(576, 'Liang', '2025-06-18 18:43:09'),
(577, 'kenya national bureau of statistics', '2025-06-18 18:43:09'),
(578, 'Kilesi Jemima', '2025-06-18 18:43:09'),
(579, 'Peter Matlon', '2025-06-18 18:43:09'),
(580, 'KLB', '2025-06-18 18:43:09'),
(581, 'Joyce Olenja', '2025-06-18 18:43:09'),
(582, 'Ambrose Keitany', '2025-06-18 18:43:09'),
(583, 'J.R Newman', '2025-06-18 18:43:09'),
(584, 'Michael H. Day', '2025-06-18 18:43:09'),
(585, 'D. C. Money', '2025-06-18 18:43:09'),
(586, 'Francois Ascher', '2025-06-18 18:43:09'),
(587, 'Conant Brodribb', '2025-06-18 18:43:09'),
(588, 'Adam Kuper', '2025-06-18 18:43:09'),
(589, 'Scottish Arts Council', '2025-06-18 18:43:09'),
(590, 'Cyril S. Belshaw', '2025-06-18 18:43:09'),
(591, 'Wenner Gren Foundation', '2025-06-18 18:43:09'),
(592, 'Scientific American', '2025-06-18 18:43:09'),
(593, 'Pernille Askerud and Ettienne Clement', '2025-06-18 18:43:09'),
(594, 'KIPPRA', '2025-06-18 18:43:10'),
(595, 'Emily Mukomunene', '2025-06-18 18:43:10'),
(596, 'Daniel Munke Nchorira Naikuni', '2025-06-18 18:43:10'),
(597, 'M.A. Iravo', '2025-06-18 18:43:10'),
(598, 'Magical Kenya', '2025-06-18 18:43:10'),
(599, 'Njuguna Gichere', '2025-06-18 18:43:10'),
(600, 'Otieno Ogai', '2025-06-18 18:43:10'),
(601, 'Basil Davidson', '2025-06-18 18:43:10'),
(602, 'Eugen', '2025-06-18 18:43:10'),
(603, 'Fortunatus', '2025-06-18 18:43:10'),
(604, 'Kenya Anticorruption commission', '2025-06-18 18:43:10'),
(605, 'John julius', '2025-06-18 18:43:10'),
(606, 'John Kamenyi', '2025-06-18 18:43:10'),
(607, 'Andrew and Cynthia', '2025-06-18 18:43:10'),
(608, 'Kul bhushan', '2025-06-18 18:43:10'),
(609, 'Usam', '2025-06-18 18:43:10'),
(610, 'Gideon Were', '2025-06-18 18:43:10'),
(611, 'GH Mungeam', '2025-06-18 18:43:10'),
(612, 'PPMC', '2025-06-18 18:43:10'),
(613, 'DR. A. W. Inambao', '2025-06-18 18:43:10'),
(614, 'Rudder and Finn', '2025-06-18 18:43:10'),
(615, 'Robert White', '2025-06-18 18:43:10'),
(616, 'Arts Council Funded', '2025-06-18 18:43:10'),
(617, 'African Union', '2025-06-18 18:43:10'),
(618, 'Rusinga Festival', '2025-06-18 18:43:10'),
(619, 'Mwahunga Julius Shoboi', '2025-06-18 18:43:10'),
(620, 'KNAD', '2025-06-18 18:43:10'),
(621, 'Oduogi Mionwa', '2025-06-18 18:43:10'),
(622, 'EAC Secretariat', '2025-06-18 18:43:10'),
(623, 'Ministry of Public Service', '2025-06-18 18:43:10'),
(624, 'ACBF/CIPE', '2025-06-18 18:43:10'),
(625, 'Romeo B. Ocampo', '2025-06-18 18:43:10'),
(626, 'J. A. Jacobs', '2025-06-18 18:43:10'),
(627, 'Kobina Sekyi', '2025-06-18 18:43:10'),
(628, 'Elizabeth Isichei', '2025-06-18 18:43:10'),
(629, 'Mazingira Institute', '2025-06-18 18:43:10'),
(630, 'Y. Tandon', '2025-06-18 18:43:10'),
(631, 'Franek', '2025-06-18 18:43:10'),
(632, 'Moses Hogan', '2025-06-18 18:43:10'),
(633, 'Harvard School of Public Health', '2025-06-18 18:43:10'),
(634, 'Ruder and Finn', '2025-06-18 18:43:11'),
(635, 'Tony Johnston', '2025-06-18 18:43:11'),
(636, 'Unicef/WHO', '2025-06-18 18:43:11'),
(637, 'Mutual Rukwaru', '2025-06-18 18:43:11'),
(638, 'Caltex', '2025-06-18 18:43:11'),
(639, 'WHO', '2025-06-18 18:43:11'),
(640, 'Marie jahoda', '2025-06-18 18:43:11'),
(641, 'Ford Foundation', '2025-06-18 18:43:11'),
(642, 'Ministry of public works and Housing', '2025-06-18 18:43:11'),
(643, 'East African medical Research Council', '2025-06-18 18:43:11'),
(644, 'David robinson and Douglas Smith', '2025-06-18 18:43:11'),
(645, 'M. R. Rixom', '2025-06-18 18:43:11'),
(646, 'Leakey', '2025-06-18 18:43:11'),
(647, 'Christopher Kamlongera', '2025-06-18 18:43:11'),
(648, 'Cesar', '2025-06-18 18:43:11'),
(649, 'UNIDO', '2025-06-18 18:43:11'),
(650, 'ADB/ADF', '2025-06-18 18:43:11'),
(651, 'Joseph crebanier', '2025-06-18 18:43:11'),
(652, 'Daniel Rhodes', '2025-06-18 18:43:11'),
(653, 'Semakula M.M. kiwanuka', '2025-06-18 18:43:11'),
(654, 'Aubereuropaische Kulturen', '2025-06-18 18:43:11'),
(655, 'Co-Operative Bank of Kenya Ltd', '2025-06-18 18:43:11'),
(656, 'Institution of Justice and Reconciliation, Folke Bernadotte Academy and the National Cohesion and Integration Commission', '2025-06-18 18:43:11'),
(657, 'Kenya Yearbook Editorial', '2025-06-18 18:43:11'),
(658, 'Robert Gooden', '2025-06-18 18:43:11'),
(659, 'Lawrence E.Y. Mbogoni', '2025-06-18 18:43:11'),
(660, 'International Development Research Centre', '2025-06-18 18:43:11'),
(661, 'development expenditures', '2025-06-18 18:43:11'),
(662, 'Recurrent expenditures', '2025-06-18 18:43:11'),
(663, 'Luciano', '2025-06-18 18:43:11'),
(664, 'Raymond E. Chaplin', '2025-06-18 18:43:11'),
(665, 'Messingstadt', '2025-06-18 18:43:11'),
(666, 'Mary Leakey', '2025-06-18 18:43:11'),
(667, 'Ngwabi Bhebe', '2025-06-18 18:43:11'),
(668, 'Kirsten Alsaker Kjerland', '2025-06-18 18:43:11'),
(669, 'Joseph Olindo Ndanyi', '2025-06-18 18:43:11'),
(670, 'William M. Ochieng', '2025-06-18 18:43:11'),
(671, 'National Cohesion and intergration Commission', '2025-06-18 18:43:11'),
(672, 'Samuel A. Otieno', '2025-06-18 18:43:11'),
(673, 'Institute of Primate Research', '2025-06-18 18:43:11'),
(674, 'Kenya Publishers Association', '2025-06-18 18:43:11'),
(675, 'SDA', '2025-06-18 18:43:11'),
(676, 'Guy Arnold', '2025-06-18 18:43:11'),
(677, 'Basil', '2025-06-18 18:43:11'),
(678, 'Dasmann', '2025-06-18 18:43:11'),
(679, 'Moses Wekesa', '2025-06-18 18:43:11'),
(680, 'Recurrent expenditure', '2025-06-18 18:43:11'),
(681, 'Nation', '2025-06-18 18:43:11'),
(682, 'Ministry of Finance', '2025-06-18 18:43:12'),
(683, 'Prof. A. M Ahuwan', '2025-06-18 18:43:12'),
(684, 'Ministry of Gender, Sports, Culture and Social Services', '2025-06-18 18:43:12'),
(685, 'KASNEB', '2025-06-18 18:43:12'),
(686, 'National Museums of Kenya', '2025-06-18 18:43:12'),
(687, 'State Department of Culture & Heritage', '2025-06-18 18:43:12'),
(688, 'Kenya Publishers Association Publiction', '2025-06-18 18:43:12'),
(689, 'MONH & C', '2025-06-18 18:43:12'),
(690, 'Min ON', '2025-06-18 18:43:12'),
(691, 'Posts and Telecommunication Corporation', '2025-06-18 18:43:12'),
(692, 'Pan Africa', '2025-06-18 18:43:12'),
(693, 'P.H Okondo', '2025-06-18 18:43:12'),
(694, 'Kihumbu', '2025-06-18 18:43:12'),
(695, 'Ministry of foreign affairs', '2025-06-18 18:43:12'),
(696, 'Suzette', '2025-06-18 18:43:12'),
(697, 'Herman', '2025-06-18 18:43:12'),
(698, 'Joseph', '2025-06-18 18:43:12'),
(699, 'Kemri', '2025-06-18 18:43:12'),
(700, 'Gideon', '2025-06-18 18:43:12'),
(701, 'Benson', '2025-06-18 18:43:12'),
(702, 'P Wachege', '2025-06-18 18:43:12'),
(703, 'Konczacki', '2025-06-18 18:43:12'),
(704, 'Richard c Jeffrey', '2025-06-18 18:43:12'),
(705, 'Purushottam', '2025-06-18 18:43:12'),
(706, 'institute for scientific cooperation', '2025-06-18 18:43:12'),
(707, 'P.N. Wachege', '2025-06-18 18:43:12'),
(708, 'KU', '2025-06-18 18:43:12'),
(709, 'Kihumbi Thairu', '2025-06-18 18:43:12'),
(710, 'Okondo', '2025-06-18 18:43:12'),
(711, 'Liang Minling', '2025-06-18 18:43:12'),
(712, 'Kim Yersu', '2025-06-18 18:43:12'),
(713, 'Shen Fuwei', '2025-06-18 18:43:12'),
(714, 'Rehabilitation International', '2025-06-18 18:43:12'),
(715, 'Valentin von Massow', '2025-06-18 18:43:12'),
(716, 'East African Institute of Social and Cultural Affairs', '2025-06-18 18:43:12'),
(717, 'Center for Development Research', '2025-06-18 18:43:12'),
(718, 'Antonio Beltran', '2025-06-18 18:43:12'),
(719, 'ICH Unesco', '2025-06-18 18:43:12'),
(720, 'US', '2025-06-18 18:43:12'),
(721, 'The Literary Friend', '2025-06-18 18:43:12'),
(722, 'Glen Williams', '2025-06-18 18:43:12'),
(723, 'Afro-Arab Cultural Institute', '2025-06-18 18:43:12'),
(724, 'Helmi Sharawy', '2025-06-18 18:43:12'),
(725, 'Obotunde Ijimere', '2025-06-18 18:43:13'),
(726, 'Inter Nationes', '2025-06-18 18:43:13'),
(727, 'Valerie Cuthbert', '2025-06-18 18:43:13'),
(728, 'Karl-Heinz and Rolf H. Simen', '2025-06-18 18:43:13'),
(729, 'Fara-Mbuzi', '2025-06-18 18:43:13'),
(730, 'China Centre', '2025-06-18 18:43:13'),
(731, 'Cortona', '2025-06-18 18:43:13'),
(732, 'KZN Museums', '2025-06-18 18:43:13'),
(733, 'Department of Museums and Monuments', '2025-06-18 18:43:13'),
(734, 'Onesmus Njoroge', '2025-06-18 18:43:13'),
(735, 'Danida Ministry of Foreign Affairs', '2025-06-18 18:43:13'),
(736, 'Susan j. Eastman', '2025-06-18 18:43:13'),
(737, 'Harry L. Shapiro', '2025-06-18 18:43:13'),
(738, 'Hugh Brody', '2025-06-18 18:43:13'),
(739, 'Jimmy Pike', '2025-06-18 18:43:13'),
(740, 'The East African Institute of Social and Cultural Affairs', '2025-06-18 18:43:13'),
(741, 'International Development Cooperation', '2025-06-18 18:43:13'),
(742, 'ACROTANAL', '2025-06-18 18:43:13'),
(743, 'C Fonds', '2025-06-18 18:43:13'),
(744, 'Fr. Nyaga', '2025-06-18 18:43:13'),
(745, 'J. B. Webster', '2025-06-18 18:43:13'),
(746, 'ICCROM', '2025-06-18 18:43:13'),
(747, 'G.V .Penna', '2025-06-18 18:43:13'),
(748, 'Chris Wanjala', '2025-06-18 18:43:13'),
(749, 'Dag Hammarskjold', '2025-06-18 18:43:13'),
(750, 'Debatable Mitra', '2025-06-18 18:43:13'),
(751, 'DW Dokumente', '2025-06-18 18:43:13'),
(752, 'Mette Monsted', '2025-06-18 18:43:13'),
(753, 'Odera Oruka', '2025-06-18 18:43:13'),
(754, 'Shinnie', '2025-06-18 18:43:13'),
(755, 'Cardinal Poupard', '2025-06-18 18:43:13'),
(756, 'Konrad', '2025-06-18 18:43:13'),
(757, 'Sekundu Morgan', '2025-06-18 18:43:13'),
(758, 'Crispin', '2025-06-18 18:43:13'),
(759, 'Bernd Heine', '2025-06-18 18:43:13'),
(760, 'I. Masser , W. Gould', '2025-06-18 18:43:13'),
(761, 'Der Bundesminister fur Forschung und Technologie', '2025-06-18 18:43:13'),
(762, 'james Mellaart', '2025-06-18 18:43:13'),
(763, 'Research and References', '2025-06-18 18:43:13'),
(764, 'G. R. Santosh', '2025-06-18 18:43:13'),
(765, 'H.J Eldridge', '2025-06-18 18:43:13'),
(766, 'Ministry of culture and Tourism', '2025-06-18 18:43:13'),
(767, 'The concrete society', '2025-06-18 18:43:13'),
(768, 'David Mountfield', '2025-06-18 18:43:13'),
(769, 'Kimani Gecau', '2025-06-18 18:43:13'),
(770, 'Kenya Tourism Federation', '2025-06-18 18:43:13'),
(771, 'Fabio', '2025-06-18 18:43:13'),
(772, 'Manfred', '2025-06-18 18:43:13'),
(773, 'Jorge Eliecer Ruiz', '2025-06-18 18:43:13'),
(774, 'Samuel Rovinski', '2025-06-18 18:43:14'),
(775, 'Marcelle Beaudiquez', '2025-06-18 18:43:14'),
(776, 'Eric Stokes and Richard Brown', '2025-06-18 18:43:14'),
(777, 'Theodore Monod', '2025-06-18 18:43:14'),
(778, 'Fabio bailo', '2025-06-18 18:43:14'),
(779, 'Kenya Human Rights Commission', '2025-06-18 18:43:14'),
(780, 'Ruth Wambui', '2025-06-18 18:43:14'),
(781, 'N.K. nyang\'era', '2025-06-18 18:43:14'),
(782, 'Irmgard Ackermann', '2025-06-18 18:43:14'),
(783, 'Palcogra', '2025-06-18 18:43:14'),
(784, 'Kenneth Fowler', '2025-06-18 18:43:14'),
(785, 'Wanhao Cartoon', '2025-06-18 18:43:14'),
(786, 'Ministry of Co-operative Development', '2025-06-18 18:43:14'),
(787, 'MAB/Unep', '2025-06-18 18:43:14'),
(788, 'Erwin Rosenfeld and Harriet', '2025-06-18 18:43:14'),
(789, 'CICAR/Unesco/FAO', '2025-06-18 18:43:14'),
(790, 'Prof. Charles o. Okidi and Dr. Rosemary Atieno', '2025-06-18 18:43:14'),
(791, 'Innocent Najjumba Mulindwa', '2025-06-18 18:43:14'),
(792, 'Sironka', '2025-06-18 18:43:14'),
(793, 'Lazarus Ksia Keizi', '2025-06-18 18:43:14'),
(794, 'Amanda Heslop and Mark Gorman', '2025-06-18 18:43:14'),
(795, 'HelpAge International', '2025-06-18 18:43:14'),
(796, 'Julian May', '2025-06-18 18:43:14'),
(797, 'Jabez Cheruyoit Buigutt', '2025-06-18 18:43:14'),
(798, 'E. P. Nakitare', '2025-06-18 18:43:14'),
(799, 'Odege Dorcas Williams', '2025-06-18 18:43:14'),
(800, 'Anne W Kahembe', '2025-06-18 18:43:14'),
(801, 'J.K.Chepkwony', '2025-06-18 18:43:14'),
(802, 'Joseph mburu', '2025-06-18 18:43:14'),
(803, 'KIE', '2025-06-18 18:43:14'),
(804, 'Peter Kiarie Njoroge', '2025-06-18 18:43:14'),
(805, 'BeFekadu Terefe', '2025-06-18 18:43:14'),
(806, 'African Cultural Institute', '2025-06-18 18:43:14'),
(807, 'Adam Neville', '2025-06-18 18:43:14'),
(808, 'Ut aliquid magnam au', '2025-06-18 18:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `role` tinyint(1) NOT NULL COMMENT '1 = Admin,2=support',
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` int(11) NOT NULL,
  `password_changed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `role`, `username`, `password`, `date_created`, `password_changed`) VALUES
(1, 'Administrator', '', '', 1, 'admin', '0192023a7bbd73250516f069df18b500', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `years_published`
--

CREATE TABLE `years_published` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL CHECK (`year` between 1000 and 9999),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `years_published`
--

INSERT INTO `years_published` (`id`, `year`, `created_at`) VALUES
(128, 2000, '2025-06-18 18:50:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asset_tag` (`asset_tag`);

--
-- Indexes for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `bookpreset`
--
ALTER TABLE `bookpreset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_ids`
--
ALTER TABLE `book_ids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `borrower_id` (`borrower_id`);

--
-- Indexes for table `clients_tickets_list`
--
ALTER TABLE `clients_tickets_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_number` (`ticket_number`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years_published`
--
ALTER TABLE `years_published`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `asset_categories`
--
ALTER TABLE `asset_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `bookpreset`
--
ALTER TABLE `bookpreset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3663;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `book_ids`
--
ALTER TABLE `book_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `clients_tickets_list`
--
ALTER TABLE `clients_tickets_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2473;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1130;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=809;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `years_published`
--
ALTER TABLE `years_published`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offices`
--
ALTER TABLE `offices`
  ADD CONSTRAINT `offices_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
