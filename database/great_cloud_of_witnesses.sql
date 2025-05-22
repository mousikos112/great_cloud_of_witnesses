-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2025 at 04:01 PM
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
-- Database: `great_cloud_of_witnesses`
--

-- --------------------------------------------------------

--
-- Table structure for table `anthems`
--

CREATE TABLE `anthems` (
  `anthemID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `typeID` int(11) NOT NULL,
  `composerID` int(11) NOT NULL,
  `voicingID` int(11) DEFAULT NULL,
  `publisherID` int(11) DEFAULT NULL,
  `instrument` varchar(50) DEFAULT NULL,
  `solos` varchar(50) DEFAULT NULL,
  `languageID` int(11) DEFAULT NULL,
  `textID` int(11) DEFAULT NULL,
  `scoreLink` varchar(175) DEFAULT NULL,
  `difficulty` varchar(10) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `recordingLink` varchar(150) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anthems`
--

INSERT INTO `anthems` (`anthemID`, `title`, `typeID`, `composerID`, `voicingID`, `publisherID`, `instrument`, `solos`, `languageID`, `textID`, `scoreLink`, `difficulty`, `duration`, `recordingLink`, `notes`) VALUES
(1, 'Blessed Is the Man', 1, 1, 2, 1, 'organ', NULL, 2, NULL, 'https://www.jwpepper.com/blessed-is-the-man-1482165-947166/p#.YKKNSmZKijA', '2', '3:00', NULL, NULL),
(2, 'Ave generosa', 1, 2, 1, NULL, NULL, NULL, 1, NULL, 'https://imslp.org/wiki/Ave_generosa_(Hildegard)', '4', '6:00', 'https://youtu.be/2fRN7Czrs8Q', NULL),
(3, 'Nolo mortem peccatoris', 1, 23, 2, 2, NULL, NULL, 3, NULL, 'https://paracletesheetmusic.com/product/nolo-mortem-peccatoris/', '2', '3:30', NULL, NULL),
(4, 'VII. Invocation', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43', '1', '1:30', NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ninscription is \"à Sr. Estelle Vaillancourt, S.C.O.\"\r\nplayable on pretty much any organ'),
(5, 'Jubilate Deo in C', 3, 24, 2, 6, 'organ', NULL, 2, NULL, 'https://www.sheetmusicplus.com/en/product/jubilate-deo-in-c-major-19506427.html?aff_id=672721#_ga=2.172733408.2119544277.1744034729-453873595.1744034724', '3', '3:00', 'https://youtu.be/t29pAn36lfY?si=tOGj8hVFQOl4LfBa', NULL),
(6, 'Rejoice in the Lamb', 7, 24, 2, 3, 'organ', 'S, A, T, B', 2, NULL, 'https://www.ficksmusic.com/products/britten-rejoice-in-the-lamb-op-30-boosey?sca_ref=6782268.iMbswcWNqFpG5', '4', '17:00', 'https://youtu.be/t7Oxd6z2aDU?si=tU8tbCRsOK4qc7HB', 'Contains hallelujahs.\r\nGreat for teaching mixed meter.\r\nText writer suffered from mental illness.'),
(7, 'We Shall Walk Through the Valley', 1, 27, 2, 8, NULL, NULL, 2, NULL, 'https://giamusic.com/resource/we-shall-walk-through-the-valley-print-g6434', '1', '3:00', 'https://youtu.be/3ItO8m2eCCI?si=eog-o1VG2xBp3yFA', NULL),
(8, 'Oh, What a Beautiful City', 1, 30, 2, 8, NULL, 'S', 2, NULL, 'https://giamusic.com/resource/oh-what-a-beautiful-city-print-g10203', '2', '3:30', 'https://youtu.be/2SOr4icFmUY?si=OxTElHWiMNJU5XwQ', 'needs a gospel soloist'),
(9, 'He Never Failed Me Yet', 1, 31, 2, 10, 'piano, gospel combo (opt.)', 'S or T', 2, NULL, 'https://www.jwpepper.com/he-never-failed-me-yet-1424092-863794/p', '2', '5:00', 'https://youtu.be/_DlV-F_iMOw?si=R_zL0yYNbTbkmjQY', 'requires a gospel soloist'),
(10, 'Gospel Mass', 7, 31, 2, 10, 'piano, gospel combo', 'S, T', 2, NULL, 'https://www.jwpepper.com/gospel-mass-1406404-838201/p', '3', '26:00', 'https://youtu.be/7Ypq0E9K_0w?si=4fwwVIKuyQeNksmg', NULL),
(11, 'O Sorrow Deep!', 1, 11, 2, 12, NULL, NULL, 2, NULL, 'https://www.selahpub.com/Choral/ChoralTitles/405-436-OSorrowDeep.html', '2', '3:00', 'https://youtu.be/jOcOZVpY-zc?si=v6HyS0YnXLCayUPj', NULL),
(12, 'Hear My Prayer', 1, 14, 9, 10, NULL, NULL, 2, NULL, 'https://www.jwpepper.com/hear-my-prayer-3289634/p?srsltid=AfmBOoqznAM48nOj61_XEGr8bwz_5_xn5s7SKULikvoI2MwaYrMrOC7i', '1', '3:00', 'https://youtu.be/p70l3YCVmrY?si=-6rWTtDBoujxOhrH', NULL),
(13, 'Adoration', 6, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '4:00', 'https://youtu.be/Iy-0DP3WF5U?si=6Gq-Zuztem3ZcHi4', NULL),
(14, 'Cantilena', 6, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2:00', 'https://youtu.be/vpEIZvYm7cQ?si=c5BXuHF27QCSyO-t', NULL),
(15, 'A Christmas Canticle', 1, 18, 2, NULL, NULL, NULL, 2, NULL, 'https://www.jwpepper.com/christmas-canticle-3700862-1169634/p?srsltid=AfmBOorf0SXGvIliQ9uk7mryGk4pBLusrw0XJbJFTluidlmUolSVWNZu', '3', '3:00', NULL, NULL),
(16, 'I Believe', 1, 9, 2, 7, 'piano', 'any voice', 2, NULL, NULL, '1', '3:00', NULL, NULL),
(17, 'Preces and Responses', 5, 6, 2, 13, NULL, NULL, 2, NULL, NULL, '3', NULL, NULL, NULL),
(18, 'Exsultet', 6, 3, NULL, 13, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'based on the Exsultet chant on Easter Vigil'),
(19, 'Suite for Organ', 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL),
(20, 'Improvisation on We Shall Overcome', 6, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '5:30', 'https://youtu.be/y1pvdAzd_os?si=67sso_c_T5meMgsk', 'great for services focusing on social justice, and especially racial justice'),
(21, 'Child of God', 1, 9, 2, 7, 'piano', 'any voice', 2, NULL, NULL, '1', NULL, NULL, 'good for confirmation, baptism, or queer affirmation'),
(22, 'Christ has Broken Down the Wall', 1, 9, 2, 7, 'piano', 'any voice', 2, NULL, NULL, '1', NULL, NULL, NULL),
(23, 'Alleluia', 1, 28, 13, 8, NULL, NULL, 2, NULL, NULL, NULL, '5:00', NULL, NULL),
(24, 'Hodie Christus natus est', 1, 22, 13, 15, NULL, NULL, 1, NULL, NULL, '4', NULL, NULL, 'https://www.jwpepper.com/hodie-christus-natus-est-10492344/p?srsltid=AfmBOorI09LuPfg51udzic0Qc_UGsrE9zLJmdxyhCtFQuPyHneh2lLKq'),
(25, 'O magnum mysterium', 1, 22, 2, 15, NULL, NULL, 1, NULL, 'https://www.jwpepper.com/o-magnum-mysterium-4802799/p?srsltid=AfmBOooS8THsRfKOdJNABhf7dj53_R4eDLBNY0hfYgA2zydK494rvk-l', '4', NULL, NULL, NULL),
(26, 'Quem vidistis pastores', 1, 22, NULL, 15, NULL, NULL, 1, NULL, 'https://www.jwpepper.com/s?q=poulenc+quem+vidistis&sort=score_desc&page=0', '4', NULL, NULL, NULL),
(27, 'Psalm 121', 1, 34, 13, 12, 'organ', NULL, NULL, NULL, 'https://www.selahpub.com/Choral/ChoralTitles/410-805-ILiftUpMyEyes.html', NULL, NULL, NULL, 'the only divisi is in the bass, and it\'s just 1 note'),
(28, 'Preces and Responses', 5, 34, 13, 12, NULL, NULL, 2, NULL, 'https://www.selahpub.com/Choral/ChoralTitles/410-952-PrecesResponses-Burk.html', '3', NULL, NULL, 'minimal divisi in all voices'),
(29, 'There is no rose', 1, 34, 14, 12, NULL, NULL, 3, NULL, 'https://www.selahpub.com/Choral/ChoralTitles/405-229-ThereIsNoRose-Burk.html', '2', NULL, NULL, NULL),
(30, 'What Wondrous Love', 1, 35, 15, 12, 'piano, handbells (opt.)', 'any voice', 2, NULL, 'https://www.selahpub.com/Choral/ChoralTitles/405-463-WondrousLove.html', '1', NULL, NULL, NULL),
(31, 'I wonder as I wander', 1, 35, 7, 8, NULL, 'mezzo-soprano', 2, NULL, 'https://giamusic.com/resource/i-wonder-as-i-wander-print-g5933', '3', NULL, NULL, NULL),
(32, 'The Coventry Carol', 1, 35, 13, 8, 'handbells (optional)', NULL, 2, NULL, 'https://giamusic.com/resource/the-coventry-carol-print-g6102', '3', '3:00', NULL, NULL),
(33, 'Miserere mei, Deus', 1, 41, 9, 16, NULL, NULL, 1, NULL, NULL, '3', '4:30', NULL, NULL),
(34, 'Hymn to God', 1, 36, 2, 17, NULL, NULL, NULL, NULL, NULL, '3', '4:00', NULL, NULL),
(35, 'Hear My Prayer (after Purcell)', 1, 41, 7, 14, NULL, NULL, NULL, NULL, NULL, '4', '6:00', 'https://youtu.be/J_7dKuLzago?si=v2AXU46W8MdsVy-S', NULL),
(36, 'Media vita', 1, 41, 13, 3, NULL, NULL, NULL, NULL, NULL, '4', '3:00', NULL, NULL),
(37, 'Let this mind be in you', 1, 43, 2, 16, 'organ', 'S, B', 2, NULL, NULL, '3', '7:30', NULL, NULL),
(38, 'Upon your heart', 1, 36, 2, 17, NULL, NULL, 2, NULL, NULL, '3', '4:00', NULL, NULL),
(39, 'Chichester Psalms', 7, 48, 13, 3, 'organ, harp OR orchestra', 'S, A, T, B, boy treble', 4, NULL, 'https://www.ficksmusic.com/products/bernstein-chichester-psalms-boosey?variant=31342151368783&sca_ref=6782268.iMbswcWNqFpG5', '4', '20:00', 'https://youtu.be/WtLZHasCrn4?si=UZDpletx9uobfo1r', 'very sectional - TB work together, SA work together'),
(40, 'A Wedding Anthem', 1, 24, 2, 3, 'organ', 'S, T', 3, NULL, NULL, '4', '9:00', 'https://youtu.be/UPXWFDFuJZY?si=dzN7vQ4P6Ta0TkUW', 'very good for gay church weddings in particular'),
(41, 'Hymn to St. Cecilia', 7, 24, 9, 3, NULL, 'S, S, A, T, B', 2, NULL, NULL, '4', '10:30', 'https://youtu.be/STXkJbRCjes?si=2qHo80nkg8yCmtKy', 'Good for any celebrations of music'),
(42, 'Double Chant in D Major', 4, 4, 2, 14, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'email the composer for the score'),
(43, 'Double Chant in G minor', 4, 4, 2, 14, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'email the composer for the score'),
(44, 'Double Chant in A minor and C Major', 4, 4, 2, 14, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'email the composer for the score'),
(45, 'Double Chant in F Major', 4, 4, 2, 14, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'email the composer for the score'),
(46, 'Oratorio de Noël', 7, 50, 2, 16, 'string quintet (or string orchestra), harp, organ', 'S, MS, A, T, B', 1, NULL, NULL, '2', '35:00', 'https://www.youtube.com/watch?v=NVJL3tHATmQ&list=PLd1VNg1An5uS3uLm7DR_Ya0LgBd-vzckY&pp=0gcJCV8EOCosWNin', 'Very accessible for volunteer choirs with pros singing the solos\r\nSome of the solos are accessible for very good amateur singers'),
(47, 'Wondrous Love: Variations on a Shape Note Tune', 6, 51, NULL, 18, NULL, NULL, NULL, NULL, 'https://www.jwpepper.com/wondrous-love-7149420-1426239/p', '2', '9:00', 'https://www.jwpepper.com/wondrous-love-7149420-1426239/p', 'Some variations are excerptible and would make good Lenten voluntaries '),
(48, 'Mass in G Major', 2, 22, 13, 13, NULL, 'S', 1, NULL, '', '5', '18:30', 'https://youtu.be/sXJson0oiLU?si=RvHcZUCkhRAMT8Uq', 'technically a missa brevis (no credo)'),
(49, 'Mass in D Major', 2, 26, 13, 16, 'orchestra', 'S, A, T, B', 1, NULL, NULL, NULL, '1:00:00', 'https://youtu.be/IVSpw3srMbc?si=Sv8yr4XU5pLtvJls', 'Smyth prefers the Gloria to be the final movement (Kyrie, Credo, Sanctus, Benedictus, Agnus Dei, Gloria)'),
(50, 'Messe Solenelle in C# minor, Op. 16', 2, 46, 13, 16, '2 organs (later adapted for 1 organ)', NULL, 1, NULL, 'https://imslp.org/wiki/Messe_solennelle,_Op.16_(Vierne,_Louis)', '4', '25:00', 'https://youtu.be/-zjlRHP0tjk?si=NkwvS2ydp5DdTWHJ', NULL),
(51, 'Prélude in F# minor', 6, 46, NULL, 16, NULL, NULL, NULL, NULL, 'https://imslp.org/wiki/Prélude_in_F-sharp_minor_(Vierne,_Louis)', NULL, '3:00', 'https://youtu.be/Ojv3izOxbp0?si=PgyCE3yyD3Tj1l6q', NULL),
(52, 'Double Chant in F Major (after Gibbons)', 4, 11, 2, 19, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL),
(53, 'Double Chant in B minor', 4, 11, 2, 16, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL),
(54, 'Double Chant in G Major', 4, 11, 2, 19, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'in the Anglican Chant Psalter'),
(55, 'Double Chant in F Major', 4, 11, 2, 19, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'in the Anglican Chant Psalter'),
(56, 'Double Chant in E minor and G Major', 4, 49, 2, 19, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'in the Anglican Chant Psalter'),
(57, 'Double Chant in A-flat Major', 4, 34, 2, 14, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'A Great Host of Composers has the scores in their database.'),
(58, 'Double Chant in G minor and B-flat Major', 4, 34, 2, 14, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'A Great Host of Composers has the score in their database.'),
(59, 'Double Chant in E-flat Major', 4, 34, 2, 14, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, 'A Great Host of Composers has the score in their database.'),
(60, 'XV. Prière', 6, 47, NULL, 16, NULL, NULL, NULL, NULL, NULL, '1', '3:00', NULL, 'from Vingt-quatre pièces pour harmonium ou orgue, Op. 6'),
(61, 'Praise ye the Lord', 1, 50, 8, 16, 'organ', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'I Believe this is Jesus', 1, 27, 13, 20, NULL, NULL, 2, NULL, NULL, '3', '2:00', NULL, 'spiritual setting'),
(63, 'I Will Trust in the Lord', 1, 27, 7, 20, NULL, 'S, B', 2, NULL, 'https://www.sheetmusicplus.com/en/product/i-will-trust-in-the-lord-18142770.html?srsltid=AfmBOooPszZ4Vwe8gOboO_jz535JSHSmoD_pmnO_KdDpmxCb_WIEGCHV', '3', '4:00', NULL, NULL),
(64, 'III. The Unexpected Early Hour', 1, 52, 2, 17, NULL, NULL, 2, NULL, NULL, '2', '2:30', 'https://youtu.be/QjisHfcmPBk?si=q9Bbjm6aBnlYAeaK', 'from A Winter Breviary,\r\nvery motivic,\r\naccessible for amateur singers'),
(65, 'The Rose', 1, 53, 9, 17, 'piano', 'B', 2, NULL, NULL, '3', NULL, 'https://soundcloud.com/oupacademic/carols-for-choirs-6-joel-thompson-the-rose', NULL),
(66, 'I. Cantilène', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43/', '1', NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ninscription is \"to Joanne Hart\"'),
(67, 'II. Toccatina', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43/', '2', NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ninscription is \"to Ryan Jackson\"'),
(68, 'III. Intermezzo', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43/', NULL, NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ninscription is \"to Kwiho Son\"'),
(69, 'IV. Fugue \"Bouclée\"', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43/', NULL, NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ntitle translates to \"Loop\" Fugue\r\ninscription is \"au Dr. Jean-Louis Lalonde\"'),
(70, 'V. Moto Perpetuo', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43', '2', NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ninscription is \"à me Antoine Leduc\"'),
(71, 'VI. Trumpet Tune', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43', NULL, NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ninscription is \"à Danielle Binette\"'),
(72, 'VIII. Fugue \"Circulaire\"', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43', '2', NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ntitle translates to \"Circular\" Fugue\r\ninscription is \"à Lucette Osterrath\"'),
(73, 'IX. Choral et Variations', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43', NULL, NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ninscription is \"à Gilles Leclerc\"'),
(74, 'X. Rondo', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43', NULL, NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ninscription is \"to John Morabito\"'),
(75, 'XI. Fugue \"Carrée\"', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43', NULL, NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ntitle translates to \"Square\" Fugue\r\ninscription is \"à Gisèle Guibord\"'),
(76, 'XII. Fugue \"Triangulaire\"', 6, 25, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/douze-courtes-pieces-vol-1-twelve-short-pieces-op-43', NULL, NULL, NULL, 'from Douze Courtes Pièces pour orgue, Op. 43\r\ntitle translates to \"Triangle\" Fugue\r\ninscription is \"to Martin Stacey\"'),
(77, 'A Tender Shoot', 1, 41, 13, 3, NULL, NULL, NULL, NULL, 'https://www.ficksmusic.com/products/briggs-a-tender-shoot-boosey?sca_ref=6782268.iMbswcWNqFpG5', NULL, NULL, NULL, NULL),
(78, 'I\'m Going Home', 1, 27, 13, 20, NULL, NULL, 2, NULL, 'https://www.sheetmusicplus.com/en/product/i-will-trust-in-the-lord-18142770.html?srsltid=AfmBOooPszZ4Vwe8gOboO_jz535JSHSmoD_pmnO_KdDpmxCb_WIEGCHV', NULL, NULL, NULL, NULL),
(79, 'Oh, That Bleeding Lamb', 1, 27, 13, NULL, NULL, NULL, 2, NULL, 'https://www.sheetmusicplus.com/en/product/i-will-trust-in-the-lord-18142770.html?srsltid=AfmBOooPszZ4Vwe8gOboO_jz535JSHSmoD_pmnO_KdDpmxCb_WIEGCHV', NULL, NULL, NULL, NULL),
(80, 'Mass of the Holy Cross', 2, 3, 1, 13, 'organ', '', 2, NULL, NULL, '1', NULL, NULL, 'congregational Mass setting'),
(81, 'Veni Sancte Spiritus', 1, 3, 2, 13, NULL, 'organ', 2, NULL, NULL, '1', NULL, NULL, NULL),
(82, 'Ave Verum Corpus', 1, 3, 2, 13, NULL, NULL, 1, NULL, NULL, '3', NULL, NULL, NULL),
(83, 'Pied Beauty', 1, 3, 2, 13, 'organ', NULL, 1, NULL, NULL, '2', NULL, NULL, NULL),
(84, 'The Song of Miriam', 1, 3, 2, 13, 'organ', NULL, 2, NULL, NULL, '2', NULL, NULL, 'great option for Easter Vigil after the Exodus reading'),
(85, 'Puer Natus', 1, 3, 3, 13, 'organ, flute', NULL, 3, NULL, NULL, '2', NULL, NULL, NULL),
(86, 'A Song of Hope', 6, 3, NULL, 13, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, 'based on the tune SLANE'),
(87, 'Adam Lay Ybounden', 1, 3, 2, 13, NULL, NULL, 1, NULL, NULL, '3', NULL, NULL, 'great for Lessons and Carols'),
(88, 'Taiwanese Suite', 6, 54, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/taiwanese-suite/', '3', NULL, NULL, 'most of it is a little easier than moderate difficulty, with the exception of the ending of the final movement'),
(89, 'Suite for Organ', 6, 19, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.classicalvocalrep.com/products/Music-of-Florence-Beatrice-Price-Vol-1-Suite-No-1-for-Organ-384428.html', '3', NULL, NULL, NULL),
(90, 'Sonata for Organ', 6, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL),
(91, 'Three Pieces', 6, 55, NULL, 4, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/three-pieces-hampton', '3', NULL, NULL, 'neo-Romantic'),
(92, 'Fairest Lord Jesus', 1, 55, 1, 8, 'organ', '', 2, NULL, 'https://giamusic.com/resource/fairest-lord-jesus-print-g2766', '1', NULL, NULL, NULL),
(93, 'Bread of the World', 1, 55, 2, 12, 'organ', 'S, B', 2, NULL, 'https://www.selahpub.com/Choral/ChoralTitles/410-423-BreadOfTheWorld.html', '3', '4:00', NULL, NULL),
(94, 'Festival Te Deum, Op. 32', 3, 24, 2, 3, 'organ', 'treble or S', 1, NULL, 'https://www.ficksmusic.com/products/britten-festival-te-deum-op-32-boosey?sca_ref=6782268.iMbswcWNqFpG5', '4', NULL, NULL, 'much harder than the Te Deum in C'),
(95, 'Te Deum in C', 3, 24, 2, 3, 'organ', 'treble or S', 1, NULL, NULL, '3', '9:00', 'https://youtu.be/s2eMuDw_0F0?si=AL1E_g-Sq06R_MwZ', NULL),
(96, 'Missa Brevis in D Major, Op. 63', 2, 24, 16, 3, 'organ', 'treble', NULL, NULL, 'https://www.ficksmusic.com/collections/benjamin-britten/products/britten-missa-brevis-in-d-major-op-63-boosey', '2', NULL, NULL, 'for trebles'),
(97, 'A Ceremony of Carols', 8, 24, 4, 3, 'harp', 'S, S, A', 2, NULL, 'https://www.ficksmusic.com/collections/benjamin-britten/products/britten-a-ceremony-of-carols-op-28-boosey', '3', NULL, NULL, 'may be sung by trebles,\r\nexists in an SATB arrangement by the composer'),
(98, 'Angel of God', 1, 58, 1, 14, 'organ', NULL, 2, NULL, 'https://krisrizzotto.com/product/angel-of-god/', '1', NULL, NULL, 'intended for children'),
(99, 'Oculi Mei', 1, 58, 10, 14, NULL, NULL, 1, NULL, 'https://krisrizzotto.com/product/oculi-mei', '2', NULL, NULL, NULL),
(100, 'Rerum, Deus, Tenax Vigor', 1, 58, 12, 14, 'organ', NULL, 1, NULL, 'https://krisrizzotto.com/product/rerum', NULL, NULL, NULL, NULL),
(101, 'Bunessan', 6, 58, NULL, 14, NULL, NULL, NULL, NULL, 'https://krisrizzotto.com/product/bunessan', '1', '1:00', 'https://youtu.be/72CqhxcRSvY?si=g9T5doLoL93huQga', NULL),
(102, 'Salmo 150', 1, 60, 2, 21, NULL, NULL, 1, NULL, 'https://www.jwpepper.com/salmo-150-5318514-1174088/p', '2', NULL, NULL, NULL),
(103, 'Praise His Holy Name', 1, 21, 2, 21, 'piano', NULL, 2, NULL, 'https://www.jwpepper.com/praise-his-holy-name-3168358-1054234/p', '1', NULL, 'https://youtu.be/fceZbtHEyLM?si=jeOtRiEntwDjEgxG', 'SAB for most of the piece; only the final page is fully SATB,\r\nthe final two sections can both be performed as a gospel loop,\r\ncongregations can be taught the ostinato for the first gospel loop'),
(104, 'True Light', 1, 21, 2, 21, 'piano', 'S', 2, NULL, 'https://www.jwpepper.com/true-light-3700850-1169456/p', NULL, NULL, NULL, NULL),
(105, 'The 23rd Psalm', 4, 66, 2, 10, NULL, NULL, NULL, NULL, 'https://www.jwpepper.com/23rd-psalm-1915503-899122/p', '2', NULL, 'https://youtu.be/91TbjlaS4kc?si=Q-z094c-6pOuRQJo', 'text here uses feminine pronouns for God,\r\nessentially a double chant with the rhythms of the text fully written out'),
(106, 'Huron Carol', 1, 61, 2, 17, 'piano', NULL, 2, NULL, 'https://www.jwpepper.com/huron-carol-10738996-461518/p?srsltid=AfmBOor0nCwFtFFEzTGdN8NRsiJawiaB7oOu_yYji_HWma8j4eRcsZR0', '1', '4:30', 'https://youtu.be/dzZ4ZrIBYis?si=Iodt_9Wz0-EuCD89', NULL),
(107, 'This endris night', 1, 61, 2, 17, 'opt. handbells, percussion, or chime stop', NULL, 2, NULL, 'https://www.jwpepper.com/this-endris-night-10993554-640245/p', '1', NULL, NULL, 'also exists in SSAA, TTBB, and unison arrangements'),
(108, 'Suite Médiévale', 6, 47, NULL, 15, NULL, NULL, NULL, NULL, 'https://www.sheetmusicplus.com/en/product/suite-medievale-en-forme-de-messe-basse-3174326.html?srsltid=AfmBOoqecXmx48XAI3m4B8GpFSjCEGJrkFtJWLce4W7lrTFt07ZaBM8A', '2', NULL, NULL, NULL),
(109, 'Fête', 6, 47, NULL, 22, NULL, NULL, NULL, NULL, 'https://www.jwpepper.com/fete-5920665-1387996/p', '3', '5:30', 'https://youtu.be/8gWPl-kMMJs?si=wb-B6M3kQro5c5yW', NULL),
(110, 'Trois Paraphrases Grégoriennes, Op. 5', 6, 47, NULL, 23, NULL, NULL, NULL, NULL, 'https://theleupoldfoundation.org/product/langlais-jean-trois-paraphrases-gregoriennes/', '3', NULL, NULL, NULL),
(111, 'Give Me Jesus', 6, 30, NULL, 8, NULL, NULL, NULL, NULL, 'https://giamusic.com/resource/give-me-jesus-pdf-d989103', '1', NULL, NULL, 'from Four Festive Pieces for Organ'),
(112, 'Ev\'ry Time I Feel the Spirit', 1, 63, 13, 24, NULL, 'B', 2, NULL, 'https://kjos.com/ev-ry-time-i-feel-the-spirit-satb.html', '2', '2:00', 'https://youtu.be/eMqkmX5cmSQ?si=ockL_50-wC96FDCi', 'minimal divisi at the end'),
(113, 'Ain\'a That Good News', 1, 63, 13, 24, NULL, NULL, 2, NULL, 'https://kjos.com/ain-a-that-good-news-satb.html', '2', NULL, NULL, 'minimal divisi near the end,\r\nsome bass divisi earlier'),
(114, 'Behold the Star', 1, 63, 13, 24, NULL, 'S, T', 2, NULL, 'https://kjos.com/behold-the-star-satb.html', '2', NULL, NULL, 'divisi, but never more than 6 parts at a time'),
(115, 'Ezekiel Saw de Wheel', 1, 63, 7, 24, NULL, 'T', NULL, NULL, NULL, '2', NULL, 'https://kjos.com/ezekiel-saw-de-wheel-satb.html', 'great for college choirs'),
(116, 'Hail Mary!', 1, 63, 13, 24, NULL, 'A', 2, NULL, 'https://kjos.com/hail-mary-satb.html', '2', NULL, NULL, NULL),
(117, 'Mary Had a Baby', 1, 63, 2, 24, NULL, 'S', 2, NULL, 'https://kjos.com/mary-had-a-baby-satb.html', '2', NULL, NULL, NULL),
(118, 'Soon-ah Will Be Done', 1, 63, 13, 24, NULL, NULL, 2, NULL, 'https://kjos.com/soon-ah-will-be-done.html', '2', NULL, NULL, 'minimal divisi, and only in S and T'),
(119, 'There is a Balm in Gilead', 1, 63, 2, 24, NULL, 'S', 2, NULL, 'https://kjos.com/there-is-a-balm-in-gilead.html', '2', NULL, NULL, 'some bass divisi, but can be done effectively without this'),
(120, 'I. We Look for You', 1, 52, 2, 17, NULL, NULL, 2, NULL, 'https://global.oup.com/academic/product/a-winter-breviary-9780193561908?cc=us&lang=en&', '1', NULL, NULL, 'from A Winter Breviary,\r\nuses Raag Hamsadhwani,\r\naccessible for amateur singers'),
(121, 'II. The Year’s Midnight', 1, 52, 2, 17, NULL, NULL, 2, NULL, 'https://global.oup.com/academic/product/a-winter-breviary-9780193561908?cc=us&lang=en&', '1', NULL, NULL, 'from A Winter Breviary,\r\nuses Raag Malkauns,\r\naccessible for amateur singers'),
(122, 'Ave Maria', 1, 52, 6, 14, NULL, NULL, 1, NULL, 'https://www.reenaesmail.com/product/ave-maria/', '2', '4:00', 'https://youtu.be/Zy_Glg_FvaA', 'written before the composer started infusing Indian Classical musical languages'),
(123, 'Density of Light', 1, 61, 13, 17, 'organ', NULL, 2, NULL, NULL, '3', NULL, NULL, 'divisi is minimal, and some is optional,\r\ndivisi is just S and B'),
(124, 'Amabile Alleluia', 1, 61, 9, 17, NULL, NULL, 2, NULL, 'https://www.jwpepper.com/amabile-alleluia-11315618-11301/p', '1', NULL, NULL, 'The top part should be sung by a children\'s choir, if possible.\r\nThere is some divisi in the other soprano line.'),
(125, 'God Will Give Sweet Orders/Sweet Child', 1, 61, 13, 17, 'cello, djembe, piano', NULL, 2, NULL, 'https://www.jwpepper.com/god-will-give-orders-sweet-child-10642198-400048/p', NULL, NULL, NULL, 'all parts divide except T'),
(126, 'All the World with Joyful Sounds', 1, 61, 4, 17, 'organ', NULL, 2, NULL, 'https://www.jwpepper.com/all-the-world-with-joyful-sounds-11563788-2208145/p', NULL, NULL, NULL, NULL),
(127, 'A Present for the Future', 1, 67, 13, 17, 'organ', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'only S and A divide'),
(128, 'Alma Redemptoris Mater', 1, 69, 7, 17, NULL, 'S, T', 3, NULL, NULL, '4', NULL, NULL, NULL),
(129, 'Ave Maris Stella', 1, 70, 2, 17, 'piano or organ', NULL, 3, NULL, NULL, '1', NULL, NULL, NULL),
(130, 'Before the Song was Done', 1, 61, 2, 17, NULL, NULL, 2, NULL, NULL, '1', NULL, NULL, NULL),
(131, 'Bells, Blessings', 1, 71, 2, 17, NULL, NULL, 2, NULL, NULL, '3', NULL, NULL, NULL),
(132, 'Christmas Eve', 1, 72, 2, 17, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Coventry Carol', 1, 73, 13, 17, NULL, 'S or B', 2, NULL, NULL, NULL, NULL, NULL, 'T divides throughout,\r\nall other voices divide in the last 2 pages'),
(134, 'Earth grown old', 1, 74, 2, 17, NULL, 'S', 2, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Gaudete', 1, 75, 9, 17, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Gaudete', 1, 5, 2, 13, NULL, 'any voice(s)', 1, NULL, NULL, '1', NULL, NULL, 'each verse can be sung by a soloist or by a section'),
(137, 'Gloucestershire Wassail', 1, 77, 13, 17, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'divisi is pretty minimal, and mostly near the end'),
(138, 'Hush, my babe', 1, 18, 13, 17, NULL, 'A, opt. S', 2, NULL, NULL, NULL, NULL, NULL, 'divisi is only at the end'),
(139, 'In dulci jubilo', 1, 38, 9, 17, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'S divisi occur throughout the second half, but are not challenging'),
(140, 'It came upon the midnight clear', 1, 80, 10, 17, NULL, 'T', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Now the Rejoicing', 1, 83, 2, 17, NULL, 'optional', 3, NULL, NULL, '1', NULL, NULL, NULL),
(142, 'On this Silent Night', 1, 61, 2, 17, 'piano', NULL, 2, NULL, NULL, '1', NULL, NULL, NULL),
(143, 'A Christmas Carol', 1, 6, 17, 13, NULL, 'T', 2, NULL, NULL, '3', NULL, 'https://www.youtube.com/live/lWJu49dtz-w?si=vtn80jrV8WrsNfll&t=4555', NULL),
(144, 'Ring out, ye bells!', 1, 84, 13, 17, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'all parts divide, but divisi is minimal'),
(145, 'Single Chant in F minor', 4, 5, 2, 13, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL),
(146, 'Double Chant in G Major', 4, 5, 2, 13, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL),
(147, 'Double Chant in G minor (after Mussorgsky)', 4, 5, 2, 13, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL),
(148, 'Double Chant in E-flat Major', 4, 3, 2, 13, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL),
(149, 'Double Chant in D-flat Major', 4, 3, 2, 13, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL),
(150, 'Double Chant in F Major', 4, 91, 2, 13, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL),
(151, 'Double Chant in E-flat Major', 4, 91, 2, 13, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL),
(152, 'Double Chant in G Major (after Gibbons)', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, NULL),
(153, 'Double Chant in F Major (with apologies to Maurice Greene)', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, NULL),
(154, 'Double Chant in E minor (after James MacMillan)', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, 'for use with Psalm 95'),
(155, 'Double Chant in A minor (after Sumsion)', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, 'for use with Psalm 107'),
(156, 'Double Chant in E Major (after \"Byrd\")', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, '', 'for use with Psalm 115'),
(157, 'Double Chant in B-flat Major (after Parry)', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, 'for use with Psalm 122'),
(158, 'Double Chant in A minor (after Vaughan Williams)', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, NULL),
(159, 'Double Chant in F Major', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, NULL),
(160, 'Double Chant in B-flat Major', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, NULL),
(161, 'Double Chant in F minor', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, NULL),
(162, 'Double Chant in C minor', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, NULL),
(163, 'Double Chant in B-flat Major', 4, 8, 2, 14, NULL, NULL, NULL, NULL, 'https://docs.google.com/spreadsheets/d/1x0_Bc-mEffPaEG3P4N8CrGGallYtCGCPhvsrMi9NcZg/edit?gid=1436356975#gid=1436356975', '2', NULL, NULL, NULL),
(164, 'Filhinho', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, NULL, 'based on a Brazilian folk melody'),
(165, 'Coração Perdido', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, NULL, 'based on a 19th century Brazilian modinha'),
(166, 'Muié Rendera', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, NULL, 'based on a Brazilian folk melody'),
(167, 'Embalo', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, NULL, 'based on a Brazilian folk melody'),
(168, 'Peneruê', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, NULL, 'based on a Brazilian folk melody'),
(169, 'Casinha Pequenina', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, NULL, NULL),
(170, 'Nuvem Mimosa', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, NULL, 'based on a Brazilian-Portuguese folk song'),
(171, 'Tutu Marambá', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, NULL, NULL),
(172, 'Papagaio', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, NULL, 'based on a Brazilian folk melody'),
(173, 'Ciranda', 6, 92, NULL, 4, NULL, NULL, NULL, NULL, 'http://theleupoldfoundation.org/product/brazilian-organ-music-volume-iii', NULL, NULL, '', NULL),
(174, 'Children of the Heavenly Father', 6, 58, NULL, 14, NULL, NULL, NULL, NULL, 'https://krisrizzotto.com/product/children-of-the-heavenly-father', '1', '1:00', NULL, NULL),
(175, 'Chorale Prelude on Hyfrydol', 6, 58, NULL, 14, NULL, NULL, NULL, NULL, 'https://krisrizzotto.com/product/chorale-prelude-on-hyfrydol', NULL, '1:00', NULL, NULL),
(176, 'Cold December Flies Away', 6, 58, NULL, 14, NULL, NULL, NULL, NULL, 'https://krisrizzotto.com/product/cold-december-flies-away', NULL, '1:00', NULL, NULL),
(177, 'Come, thou Long-Expected Jesus', 6, 58, NULL, 14, NULL, NULL, NULL, NULL, 'https://krisrizzotto.com/product/come-thou-long-expected-jesus', '1', '1:30', NULL, NULL),
(178, 'Road to Refuge', 1, 76, 13, 17, NULL, 'S, B', NULL, NULL, NULL, NULL, NULL, NULL, 'alludes both to Jesus as a refugee and to (non-specific) refugee crises worldwide\r\nin Carols for Choirs 6\r\ndivisi is minimal'),
(179, 'The Children\'s Eye', 1, 85, 7, 17, NULL, 'MS', 3, NULL, NULL, '5', NULL, NULL, 'great piece, but probably not doable by amateur choirs\r\nmakes use of the O Sapientia text'),
(180, 'The Christ-child', 1, 86, 9, 17, 'organ', NULL, 3, NULL, NULL, NULL, NULL, NULL, 'The opening soprano line could probably be a solo\r\nin Carols for Choirs 6'),
(181, 'The Oxen', 1, 33, 18, 17, NULL, 'T', 2, NULL, NULL, NULL, NULL, NULL, 'in Carols for Choirs 6'),
(182, 'The Saviour\'s Birth', 1, 78, 13, 17, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'in Carols for Choirs 6, \r\nbased on a few Christmas spirituals, \r\ndivisi is minimal, but really high for tenors and sopranos (C#6!)'),
(183, 'There is no rose', 1, 87, 13, 17, NULL, 'S', 3, NULL, NULL, NULL, NULL, NULL, 'in Carols for Choirs 6'),
(184, 'What Cheer?', 1, 34, 9, 17, 'organ', NULL, 2, NULL, NULL, '3', NULL, NULL, 'clearly based on the Walton, \r\nin Carols for Choir 6, \r\nsoprano 2 is only at the end'),
(185, 'What child is this?', 1, 88, 2, 17, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'in Carols for Choirs 6'),
(186, 'Transformations', 6, 33, NULL, 14, NULL, NULL, NULL, NULL, 'https://www.jessicafrench.net/shop/p/transformations', '4', NULL, 'https://www.youtube.com/live/avVZX-1jQBw?si=Z5zSZaQVbEU2i5O7&t=2785', 'based on the Pange Lingua chant'),
(187, 'Variations on Jesu, Dulcis Memoria', 6, 33, NULL, 14, NULL, NULL, NULL, NULL, 'https://www.jessicafrench.net/shop/p/jesu-dulcis', NULL, '5:30', 'https://youtu.be/H-VL3BTVsDQ?si=ne-11WNRPZnxVaT_', 'There is a variation for each of 5 verses.'),
(188, 'Fix Your Eyes Upon the Star', 1, 33, 13, 14, NULL, NULL, 2, NULL, 'https://www.jessicafrench.net/shop/p/fix-your-eyes', NULL, NULL, 'https://youtu.be/q_qGh5VCxOM', 'text written from the perspective of the Magi'),
(189, 'Magnificat and Nunc Dimittis', 3, 33, 2, 14, 'organ', NULL, NULL, NULL, 'https://www.jessicafrench.net/shop/p/magnificat-and-nunc-dimittis', NULL, NULL, 'https://youtu.be/OrKPkmPc8bM', 'also exists in SS + organ'),
(190, 'Tantum Ergo', 1, 33, 13, 14, 'string orchestra, brass (optional)', NULL, 1, NULL, 'https://www.jessicafrench.net/shop/p/tantum-orchestra', NULL, NULL, NULL, NULL),
(191, 'Ave Verum Corpus', 1, 33, 13, 14, NULL, NULL, 1, NULL, 'https://www.jessicafrench.net/shop/p/ave-verum-corpus', NULL, NULL, 'https://youtu.be/nVCbJHb34cY', NULL),
(192, 'St. Mark\'s Service', 3, 33, 20, 14, 'cello', NULL, 2, NULL, 'https://www.jessicafrench.net/shop/p/st-marks-service', NULL, NULL, 'https://youtu.be/mmKMvD05xtw', NULL),
(193, 'Thy Will Be Done', 1, 33, 13, 14, 'organ or string orchestra', NULL, 2, NULL, 'https://www.jessicafrench.net/shop/p/thy-will-be-done', NULL, NULL, NULL, NULL),
(194, 'At Heaven\'s Proclamation', 1, 33, 13, 14, 'organ', NULL, 3, NULL, 'https://www.jessicafrench.net/shop/p/at-heavens-proclamation', NULL, NULL, 'https://youtu.be/7qf9uQYtN8I', NULL),
(195, 'A Prayer of St. Francis', 1, 33, 2, 14, 'organ', NULL, 2, NULL, 'https://www.jessicafrench.net/shop/p/a-prayer-of-st-francis', '2', NULL, 'https://www.jessicafrench.net/shop/p/a-prayer-of-st-francis', 'also exists in a version for SA and organ, \r\nrecording is included in the score link'),
(196, 'We Are Held', 1, 33, 13, 14, 'guitar (classical)', NULL, 2, NULL, 'https://www.jessicafrench.net/shop/p/we-are-held', NULL, NULL, 'https://youtu.be/Amy4iN6VqFg', NULL),
(197, 'Chorister\'s Prayer', 1, 33, 13, 14, 'organ', NULL, 2, NULL, 'https://www.jessicafrench.net/shop/p/choristers-prayer', '2', NULL, NULL, 'commissioned in honor of Walden Moore on the occasion of his last Sunday with Trinity Church on the Green (New Haven, CT)'),
(198, 'The Call', 1, 33, 2, 14, 'organ, violin (optional)', NULL, 2, NULL, 'https://www.jessicafrench.net/shop/p/the-call', '3', NULL, NULL, 'also exists in a version for treble choir and organ with optional violin'),
(199, 'Strengthen for Service', 1, 33, 13, 14, 'organ or string orchestra or string quintet', NULL, 2, NULL, 'https://www.jessicafrench.net/shop/p/strengthen-for-service', NULL, NULL, 'https://youtu.be/hz-6TNB6vag', NULL),
(200, 'Preces and Responses', 5, 33, 2, 14, NULL, NULL, 2, NULL, 'https://www.jessicafrench.net/shop/p/preces-and-responses', '3', NULL, 'https://youtu.be/pzCGUt_x68U', NULL),
(201, 'This Holy Hour', 7, 34, 13, 12, 'harp', 'treble', 2, NULL, 'https://www.selahpub.com/Choral/ChoralTitles/440-224-ThisHolyHour.html', '2', NULL, NULL, 'a la Ceremony of Carols, \r\nvery excerptable, \r\nthere is an SSA carol and a TTBB carol'),
(202, 'The Singing Shepherd', 1, 84, 13, 12, NULL, NULL, 2, NULL, 'https://www.selahpub.com/Choral/ChoralTitles/405-239-TheSingingShepherd.html', '2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anthems_by_season`
--

CREATE TABLE `anthems_by_season` (
  `anthemID` int(11) DEFAULT NULL,
  `seasonID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anthems_by_season`
--

INSERT INTO `anthems_by_season` (`anthemID`, `seasonID`) VALUES
(1, 7),
(2, 8),
(3, 4),
(4, 7),
(5, 7),
(6, 7),
(7, 4),
(8, 7),
(9, 7),
(10, 7),
(11, 4),
(12, 7),
(13, 7),
(14, 7),
(15, 1),
(16, 7),
(17, 7),
(18, 5),
(19, 7),
(20, 7),
(21, 7),
(22, 7),
(23, 7),
(24, 2),
(25, 2),
(26, 1),
(27, 7),
(28, 7),
(29, 1),
(30, 4),
(31, 2),
(32, 1),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 7),
(40, 7),
(41, 7),
(42, 7),
(43, 3),
(44, 7),
(45, 7),
(46, 2),
(47, 4),
(48, 7),
(49, 7),
(50, 7),
(51, 7),
(52, 7),
(53, 7),
(54, 7),
(55, 7),
(56, 7),
(57, 7),
(58, 7),
(59, 7),
(60, 7),
(61, 7),
(62, 7),
(63, 7),
(64, 1),
(65, 1),
(66, 7),
(67, 7),
(68, 7),
(69, 7),
(70, 7),
(71, 7),
(72, 7),
(73, 7),
(74, 7),
(75, 7),
(76, 7),
(77, 1),
(78, 7),
(79, 4),
(80, 7),
(81, 6),
(82, 7),
(83, 7),
(84, 5),
(85, 2),
(86, 7),
(87, 1),
(88, 7),
(89, 7),
(90, 7),
(91, 7),
(92, 1),
(93, 7),
(94, 1),
(95, 1),
(96, 7),
(97, 2),
(98, 7),
(99, 4),
(100, 4),
(101, 7),
(102, 7),
(103, 7),
(104, 7),
(105, 7),
(106, 2),
(107, 2),
(108, 7),
(109, 7),
(110, 7),
(111, 7),
(112, 6),
(113, 7),
(114, 3),
(115, 7),
(116, 2),
(117, 2),
(118, 7),
(119, 7),
(120, 2),
(121, 2),
(122, 8),
(123, 7),
(124, 7),
(125, 7),
(126, 2),
(127, 3),
(128, 1),
(129, 8),
(130, 2),
(131, 1),
(132, 2),
(133, 2),
(134, 1),
(135, 2),
(136, 2),
(137, 1),
(138, 2),
(4, 4),
(7, 7),
(8, 5),
(15, 2),
(26, 2),
(29, 2),
(29, 8),
(32, 2),
(65, 2),
(77, 2),
(16, 4),
(22, 5),
(23, 5),
(40, 8),
(46, 1),
(60, 4),
(65, 2),
(97, 1),
(139, 2),
(140, 1),
(140, 2),
(141, 1),
(141, 2),
(142, 2),
(143, 1),
(143, 2),
(144, 2),
(145, 7),
(146, 7),
(147, 7),
(148, 7),
(149, 7),
(150, 7),
(151, 7),
(152, 7),
(153, 7),
(154, 7),
(155, 7),
(156, 7),
(157, 7),
(158, 1),
(158, 7),
(159, 7),
(160, 7),
(161, 7),
(162, 7),
(163, 7),
(164, 7),
(165, 7),
(166, 7),
(167, 7),
(168, 7),
(169, 7),
(170, 7),
(171, 7),
(172, 7),
(173, 7),
(174, 7),
(175, 7),
(176, 1),
(176, 2),
(177, 1),
(178, 2),
(178, 3),
(179, 1),
(180, 2),
(181, 2),
(182, 2),
(183, 1),
(183, 2),
(184, 2),
(185, 2),
(185, 3),
(186, 4),
(187, 7),
(188, 3),
(189, 7),
(190, 4),
(191, 4),
(191, 7),
(192, 7),
(193, 4),
(194, 7),
(194, 10),
(195, 7),
(196, 7),
(197, 7),
(198, 5),
(198, 7),
(199, 7),
(200, 7);

-- --------------------------------------------------------

--
-- Table structure for table `composers`
--

CREATE TABLE `composers` (
  `composerID` int(11) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) NOT NULL,
  `dateBirth` int(11) DEFAULT NULL,
  `dateDeath` int(11) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `genderID` int(11) DEFAULT NULL,
  `raceID` int(11) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `queer` tinyint(1) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `composers`
--

INSERT INTO `composers` (`composerID`, `firstName`, `lastName`, `dateBirth`, `dateDeath`, `country`, `genderID`, `raceID`, `website`, `queer`, `disabled`, `notes`) VALUES
(1, 'Jane', 'Marshall', 1924, 2019, 'United States of America', 1, 5, NULL, NULL, NULL, NULL),
(2, 'Hildegard', 'von Bingen', 1098, 1179, 'Germany', 1, 5, NULL, NULL, NULL, NULL),
(3, 'Evalyn', 'Cogswell', 1990, NULL, 'United States of America', 3, 5, NULL, 1, NULL, 'transfeminine organist/composer'),
(4, 'Janet', 'Yieh', 1992, NULL, 'United States', 1, 2, 'https://www.janetyieh.com', 0, NULL, 'originally from Taiwan'),
(5, 'Megan', 'Coiley', 1989, NULL, 'United States of America', 1, 5, NULL, 1, NULL, NULL),
(6, 'Marisa', 'Curcio', 1995, NULL, 'United States of America', 1, 5, NULL, 1, NULL, 'soprano and composer'),
(7, 'Melissa', 'Dunphy', 1980, NULL, 'Australia', 1, 5, 'https://www.melissadunphy.com', NULL, NULL, NULL),
(8, 'Sarah', 'MacDonald', 1968, NULL, 'Canada', 1, 5, 'https://www.sarahmacdonald.live', NULL, NULL, NULL),
(9, 'Mark', 'Miller', 1967, NULL, 'United States of America', 2, 1, NULL, 1, NULL, NULL),
(10, 'Robert', 'Ray', 1946, 2022, 'United States of America', 2, 1, 'https://www.robertraycomposer.org/', NULL, NULL, NULL),
(11, 'David', 'Hurd', 1950, NULL, 'United States of America', 2, 1, NULL, NULL, NULL, NULL),
(12, 'Roy', 'Ringwald', 1910, 1995, 'United States of America', 2, 1, NULL, NULL, NULL, NULL),
(13, 'André', 'Thomas', 1952, NULL, 'United States of America', 2, 1, 'https://www.drandrethomas.com/', NULL, NULL, NULL),
(14, 'Moses', 'Hogan', 1957, 2003, 'United States of America', 2, 1, 'https://www.moseshogan.com', NULL, NULL, NULL),
(15, 'Rosephanye', 'Powell', 1962, NULL, 'United States of America', 1, 1, 'https://www.rosephanyepowell.com/', NULL, NULL, NULL),
(16, 'Carl', 'Haywood', 1949, NULL, 'United States of America', 2, 1, NULL, NULL, NULL, NULL),
(17, 'Richard', 'Smallwood', 1948, NULL, 'United States of America', 2, 1, NULL, NULL, NULL, NULL),
(18, 'Adolphus', 'Hailstork', 1941, NULL, 'United States of America', 2, 1, 'https://www.adolphushailstorkcomposer.com', NULL, NULL, NULL),
(19, 'Florence', 'Price', 1887, 1953, 'United States of America', 1, 1, NULL, NULL, NULL, NULL),
(20, 'Stephanie', 'Martin', 1962, NULL, 'Canada', 1, 5, 'https://stephaniemartinmusic.com/', NULL, NULL, NULL),
(21, 'Keith', 'Hampton', 1957, NULL, 'United States of America', 2, 1, 'https://drkeithhampton.com', 0, NULL, NULL),
(22, 'Francis', 'Poulenc', 1899, 1963, 'France', 2, 5, NULL, 1, NULL, NULL),
(23, 'Elizabeth', 'Atkinson', NULL, NULL, 'United States of America', 1, 5, NULL, NULL, NULL, NULL),
(24, 'Benjamin', 'Britten', 1913, 1976, 'England', 2, 5, NULL, 1, NULL, 'published exclusively by Boosey & Hawkes, as of 2025'),
(25, 'Rachel', 'Laurin', 1961, 2023, 'Canada', 1, 5, 'https://www.rachellaurin.com/', NULL, NULL, NULL),
(26, 'Ethel', 'Smyth', 1858, 1944, 'England', 1, 5, NULL, 1, NULL, NULL),
(27, 'Undine', 'Smith Moore', 1904, 1989, 'United States of America', 1, 1, NULL, 0, NULL, 'taught at Virginia State University'),
(28, 'Alejandro', 'Consolación II', 1980, NULL, 'Philippines', 2, 2, 'https://ajconsolacion.weebly.com', 0, NULL, 'organist and composer, graduate of Westminster Choir College'),
(29, 'Buckner', 'Gamby', 1928, 2017, 'United States of America', 2, 1, NULL, 0, NULL, 'graduated from the New England Conservatory,\r\ntaught at Virginia State University, taught at the Appomattox Regional Governor\'s School for the Arts and Technology,\r\nfounded the Petersburg Boys Choir'),
(30, 'Eurydice', 'Osterman', 1950, NULL, 'United States of America', 1, 1, 'https://awsahmmusic.com', NULL, NULL, NULL),
(31, 'Robert', 'Ray', 1946, 2022, 'United States of America', 2, 1, 'https://www.robertraycomposer.org', NULL, NULL, NULL),
(32, 'Jeanne', 'Demessieux', 1921, 1968, 'France', 1, 5, NULL, NULL, NULL, 'large hands'),
(33, 'Jessica', 'French', NULL, NULL, 'United States of America', 1, 5, 'https://www.jessicafrench.net', NULL, NULL, NULL),
(34, 'Margaret', 'Burk', 1990, NULL, 'United States of America', 1, 5, 'https://margaretburkmusic.com', 1, NULL, NULL),
(35, 'Steve', 'Pilkington', NULL, NULL, 'United States of America', 2, 5, NULL, 1, NULL, 'professor of sacred music at Westminster Choir College\r\ndirector of music at Christ Church, Park Avenue'),
(36, 'Eleanor', 'Daley', 1955, NULL, 'Canada', 1, 5, NULL, NULL, NULL, NULL),
(37, 'Vittoria Raffaela', 'Aleotti', 1575, 1646, 'Italy', 1, 5, NULL, NULL, NULL, 'Raffaela Aleotti is possibly the same person as Vittoria Aleottis.  Dates are 1575? to either after 1620 (Vittoria Aleottis\' dates) or around 1646 (Raffaela Aleotti\'s dates).\r\n\r\nShe was an Italian Augustinian nun and composer.'),
(38, 'Cecilia', 'McDowall', 1951, NULL, 'England', 1, 5, 'www.ceciliamcdowall.co.uk', NULL, NULL, NULL),
(39, 'Judith', 'Weir', 1954, NULL, 'England', 1, 5, 'https://www.judithweir.com/', NULL, NULL, NULL),
(40, 'Alice', 'Parker', 1925, 2023, 'United States of America', 1, 5, NULL, 0, NULL, NULL),
(41, 'Kerensa', 'Briggs', 1991, NULL, 'England', 1, 5, 'https://www.kerensabriggs.co.uk/', NULL, NULL, 'daughter of organist/choirmaster David Briggs'),
(42, 'Roxanna', 'Panufnik', 1968, NULL, 'England', 1, 5, 'https://roxannapanufnik.com/', NULL, NULL, NULL),
(43, 'Amy', 'Beach', 1867, 1944, 'United States of America', 1, 5, NULL, NULL, NULL, 'full name Amy Marcy Cheney Beach; often signed things as Mrs. H. H. A. Beach'),
(44, 'Imogen', 'Holst', 1907, 1984, 'England', 1, 5, NULL, NULL, NULL, 'daughter of Gustav Holst, assistant to Benjamin Britten'),
(45, 'Lili', 'Boulanger', 1893, 1918, 'France', 1, 5, NULL, NULL, 1, 'sister of Nadia Boulanger,\r\nfirst female winner of the Prix de Rome,\r\nsuffered from chronic illness from a very young age,\r\ndied of intestinal tuberculosis at age 24'),
(46, 'Louis', 'Vierne', 1870, 1937, 'France', 2, 5, NULL, NULL, 1, 'titular organist of Notre-Dame de Paris\r\nblind (congenital cataracts)'),
(47, 'Jean', 'Langlais', 1907, 1991, 'France', 2, 5, NULL, NULL, 1, 'blind (glaucoma)'),
(48, 'Leonard', 'Bernstein', 1918, 1990, 'United States of America', 2, 5, 'https://www.leonardbernstein.com/', 1, NULL, 'bisexual,\r\nJewish'),
(49, 'Ned', 'Rorem', 1923, 2022, 'United States of America', 2, 5, 'http://www.nedrorem.net/', 1, NULL, 'so gay.'),
(50, 'Camille', 'Saint-Saëns', 1835, 1921, 'France', 2, 5, NULL, 1, NULL, 'self identified as a pederast - yikes.'),
(51, 'Samuel', 'Barber', 1910, 1981, 'United States of America', 2, 5, NULL, 1, NULL, 'his life partner was Gian Carlo Menotti'),
(52, 'Reena', 'Esmail', 1983, NULL, 'United States of America', 1, 3, 'https://www.reenaesmail.com', NULL, NULL, 'Her music specifically aims to join her Western Classical and Indian Classical traditions'),
(53, 'Joel', 'Thompson', 1988, NULL, 'United States of America', 2, 1, NULL, NULL, NULL, 'Yale graduate,\r\nfocuses especially on issues of racial justice'),
(54, 'Chelsea', 'Chen', 1983, NULL, 'United States of America', 1, 2, 'https://chelseachen.com', NULL, NULL, 'concert organist'),
(55, 'Calvin', 'Hampton', 1938, 1984, 'United States of America', 2, 5, NULL, 1, NULL, 'died from AIDS,\r\nran the Fridays at Midnight organ concert series in Manhattan in the 1970s,\r\ncalled \"the greatest living composer of hymn tunes\" by Erik Routley'),
(56, 'Jeanne', 'Demessieux', 1921, 1968, 'France', 1, 5, NULL, NULL, NULL, 'titular organist at La Madeleine, Paris,\r\nmany of her works have very large reaches - did she have large hands?'),
(57, 'Diane Meredith', 'Belcher', 1960, NULL, 'United States of America', 1, 5, 'https://www.dianemeredithbelchermusic.com', NULL, NULL, 'concert organist,\r\nchampion of women organists,\r\nhas written extensively about the abuse that church musicians experience in the workplace'),
(58, 'Kristina', 'Rizzotto', 1989, NULL, 'Brazil', 1, 4, 'https://krisrizzotto.com', 1, NULL, 'trans woman,\r\nhas said some TERFy things online'),
(59, 'Anna', 'Lapwood', 1995, NULL, 'England', 1, 5, 'https://annalapwood.co.uk', NULL, NULL, 'associate organist at the Royal Albert Hall,\r\nconcert organist'),
(60, 'Ernani', 'Aguiar', 1950, NULL, 'Brazil', 2, 4, NULL, NULL, NULL, NULL),
(61, 'Sarah', 'Quartel', 1982, NULL, 'Canada', 1, 5, 'https://www.sarahquartel.com', NULL, NULL, NULL),
(62, 'R. Nathaniel', 'Dett', 1882, 1943, 'Canada', 2, 1, NULL, NULL, NULL, NULL),
(63, 'William', 'Dawson', 1899, 1990, 'United States of America', 2, 1, NULL, NULL, NULL, NULL),
(64, 'Samuel', 'Coleridge Taylor', 1875, 1912, 'England', 2, 1, NULL, NULL, NULL, 'studied with Charles Villiers Stanford at the Royal College of Music'),
(65, 'Brandon', 'Waddles', NULL, NULL, 'United States of America', 2, 1, 'https://brandonwaddles.com', NULL, NULL, 'choral conductor and composer'),
(66, 'Bobby', 'McFerrin', 1950, NULL, 'United States of America', 2, 1, 'https://bobbymcferrin.com', NULL, NULL, NULL),
(67, 'Joanna', 'Forbes L\'Estrange', 1971, NULL, 'England', 1, 5, 'https://www.joannaforbeslestrange.com', NULL, NULL, 'classical and jazz singer'),
(68, 'Ludwig', 'van Beethoven', 1770, 1827, 'Germany', 2, 5, NULL, NULL, 1, 'deaf'),
(69, 'Nico', 'Muhly', 1981, NULL, 'United States of America', 2, 5, 'https://nicomuhly.com', 1, NULL, NULL),
(70, 'Kristina', 'Arakelyan', 1994, NULL, 'England', 1, 6, 'https://www.kristinaarakelyan.com', NULL, NULL, 'Armenian,\r\nborn in Hungary,\r\ngrew up in Armenia and England'),
(71, 'Carol', 'Barnett', 1949, NULL, 'United States of America', 1, 5, 'https://www.carolbarnett.net', NULL, NULL, NULL),
(72, 'Kim', 'Porter', NULL, NULL, 'England', 1, 5, 'https://www.kimportermusic.com', NULL, NULL, 'mezzo-soprano,\r\nsings with The Sixteen'),
(73, 'B. E.', 'Boykin', 1989, NULL, 'United States of America', 1, 1, NULL, NULL, NULL, 'full name is Brittney Boykin,\r\ngoes by B. E. professionally,\r\ngraduated from Westminster Choir College,\r\ndoctorate from Georgia State University'),
(74, 'Ghislaine', 'Reece-Trapp', 1992, NULL, 'England', 1, 5, NULL, NULL, NULL, NULL),
(75, 'Suzzie', 'Vango', 1982, NULL, 'England', 1, 5, 'https://www.suzzievango.com', NULL, NULL, NULL),
(76, 'Errollyn', 'Wallen', 1958, NULL, 'England', 1, 1, 'https://www.errollynwallen.com', NULL, NULL, NULL),
(77, 'Vicente', 'Chavarría', 1988, NULL, 'England', 2, 4, NULL, NULL, NULL, NULL),
(78, 'Marques', 'Garrett', NULL, NULL, 'United States of America', 2, 1, 'https://www.mlagmusic.com', NULL, NULL, NULL),
(79, 'Tawnie', 'Olson', 1974, NULL, 'Canada', 1, 5, 'http://www.tawnieolson.com', NULL, NULL, NULL),
(80, 'Valerie', 'Capers', 1935, NULL, 'United States of America', 1, 1, 'https://valcapmusic.wordpress.com', NULL, 1, NULL),
(81, 'Reginal S.', 'Wright', 1976, NULL, 'United States of America', 2, 1, 'https://www.reginalwright.com', NULL, NULL, NULL),
(82, 'Stacey V.', 'Gibbs', 1962, NULL, 'United States of America', 2, 1, NULL, NULL, NULL, NULL),
(83, 'Zanaida', 'Stewart Robles', 1979, NULL, 'United States of America', 1, 1, 'https://zanaidarobles.com', NULL, NULL, NULL),
(84, 'Kathleen', 'Allan', 1989, NULL, 'Canada', 1, 5, 'https://www.kathleenallan.com', NULL, NULL, NULL),
(85, 'Caroline', 'Shaw', 1982, NULL, 'United States of America', 1, 5, 'https://carolineshaw.com', 1, NULL, NULL),
(86, 'Laura', 'Hawley', 1982, NULL, 'Canada', 1, 5, 'https://www.laurahawley.ca', NULL, NULL, NULL),
(87, 'Lucy', 'Walker', 1998, NULL, 'England', 1, 5, NULL, NULL, NULL, NULL),
(88, 'Becky', 'McGlade', 1974, NULL, 'England', 1, 5, 'https://beckymcglade.co.uk', NULL, NULL, NULL),
(89, 'Brazeal', 'Dennard', 1929, 2010, 'United States of America', 2, 1, NULL, NULL, NULL, NULL),
(90, 'Astor', 'Piazzolla', 1929, 1992, 'Argentina', 2, 4, NULL, NULL, NULL, 'known for tango music'),
(91, 'Alessandra', 'Craig', 2001, NULL, 'United States of America', 3, 5, NULL, 1, NULL, NULL),
(92, 'João', 'Wilson Faustini', 1931, 2023, 'Brazil', 2, 4, NULL, NULL, NULL, 'Graduate of Westminster Choir College, Union Theological Seminary School of Music, and Princeton Theological Seminary. Pastor emeritus of St. Paul’s Presbyterian Church in Newark, New Jersey.'),
(93, 'José Jesús', 'Estrada', 1898, 1980, 'Mexico', 2, 4, NULL, NULL, NULL, 'organ professor at the National Conservatory in Mexico City'),
(94, 'Alberto', 'Ginastera', 1916, 1983, 'Argentina', 2, 4, NULL, NULL, NULL, NULL),
(95, 'William', 'Billings', 1746, 1800, 'United States of America', 2, 5, NULL, NULL, 1, 'addicted to tobacco (snuff); \r\nblind in one eye, had both a withered arm and a shortened leg'),
(96, 'Ramón', 'Noble', 1925, 1999, 'Mexico', 2, 4, NULL, NULL, NULL, 'founded the Coral Mexicano del Instituto Nacional de Bellas Artes, the Coro del Ballet Folklorico de Mexico, and the Centro de Convivencia Coral'),
(97, 'Miguel', 'Bernal Jiménez', 1910, 1956, 'Mexico', 2, 4, NULL, NULL, NULL, NULL),
(98, 'Marcelo', 'Adonay', 1848, 1928, 'Philippines', 2, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `composers_by_race`
--

CREATE TABLE `composers_by_race` (
  `composerID` int(11) NOT NULL,
  `raceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `composers_by_race`
--

INSERT INTO `composers_by_race` (`composerID`, `raceID`) VALUES
(76, 1),
(76, 4);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `genderID` int(11) NOT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`genderID`, `gender`) VALUES
(1, 'woman'),
(2, 'man'),
(3, 'non-binary'),
(4, 'two spirit'),
(5, 'agender'),
(6, 'intersex'),
(7, 'genderfluid'),
(8, 'third gender');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languageID` int(11) NOT NULL,
  `languageName` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languageID`, `languageName`) VALUES
(1, 'Latin'),
(2, 'English'),
(3, 'macaronic'),
(4, 'Hebrew');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherID` int(11) NOT NULL,
  `publisherName` varchar(30) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherID`, `publisherName`, `website`) VALUES
(1, 'Hinshaw Music, Inc.', 'https://www.hinshawmusic.com'),
(2, 'Paraclete Press', 'https://paracletesheetmusic.com/'),
(3, 'Boosey & Hawkes', 'https://www.boosey.com/'),
(4, 'Wayne Leupold Editions', 'https://theleupoldfoundation.org/'),
(5, 'Bärenreiter', 'https://www.baerenreiter.com/'),
(6, 'Chester Music', 'https://www.wisemusicclassical.com/publishers/chestermusic/'),
(7, 'Choristers Guild', 'https://www.choristersguild.org/'),
(8, 'GIA Music', 'https://giamusic.com/sacred-music/'),
(9, 'Walton Music', 'https://giamusic.com/walton-music'),
(10, 'Hal Leonard Corporation', 'https://www.halleonard.com'),
(11, 'Carus', 'https://www.carus-verlag.com/en/ueber-carus/'),
(12, 'Selah Publishing', 'https://www.selahpub.com'),
(13, 'unpublished', NULL),
(14, 'self-published', NULL),
(15, 'Durand-Salabert-Eschig', 'https://www.durand-salabert-eschig.com/'),
(16, 'public domain', NULL),
(17, 'Oxford University Press', 'https://global.oup.com/academic/category/arts-and-humanities/sheet-music'),
(18, 'G. Schirmer, Inc.', 'https://www.wisemusicclassical.com/publishers/g-schirmer-amp/'),
(19, 'Church Publishing, Inc.', 'https://www.churchpublishing.org'),
(20, 'Augsburg Fortress', 'https://www.augsburgfortress.org/'),
(21, 'earthsongs', 'https://earthsongschoralmusic.com'),
(22, 'Jubilate Music Group', 'https://jubilatemusic.com/'),
(23, 'Les éditions Combre', 'https://www.henry-lemoine.com/fr/content/11-combre'),
(24, 'Neil A. Kjos Music Company', 'https://kjos.com/');

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `raceID` int(11) NOT NULL,
  `race` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`raceID`, `race`) VALUES
(1, 'Black'),
(2, 'East Asian'),
(3, 'South Asian'),
(4, 'Latinx'),
(5, 'White'),
(6, 'Middle Eastern');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `seasonID` int(11) NOT NULL,
  `liturgicalSeason` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`seasonID`, `liturgicalSeason`) VALUES
(1, 'Advent'),
(2, 'Christmas'),
(3, 'Epiphany'),
(4, 'Lent'),
(5, 'Easter'),
(6, 'Pentecost'),
(7, 'General'),
(8, 'Marian'),
(9, 'Christ the King'),
(10, 'Transfiguration');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `suggestionsID` int(11) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `composer` varchar(25) DEFAULT NULL,
  `organ_or_choral` varchar(15) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`suggestionsID`, `title`, `composer`, `organ_or_choral`, `comments`) VALUES
(1, 'All Glorious God', 'Ned Rorem', 'choral', 'SATB, unaccompanied'),
(18, 'Psalm 24', 'Lili Boulanger', 'choral', 'tenor solo, organ or orchestra acc.'),
(19, 'Ubi Caritas', 'Roxanna Panufnik', 'choral', 'SS, piano acc.');

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `textID` int(11) NOT NULL,
  `textWriter` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `typeID` int(11) NOT NULL,
  `anthemType` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`typeID`, `anthemType`) VALUES
(1, 'Anthem'),
(2, 'Mass Setting'),
(3, 'Canticles'),
(4, 'Anglican Chant'),
(5, 'Responses'),
(6, 'Solo Organ'),
(7, 'Larger Work');

-- --------------------------------------------------------

--
-- Table structure for table `voicing`
--

CREATE TABLE `voicing` (
  `voicingID` int(11) NOT NULL,
  `voicing` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voicing`
--

INSERT INTO `voicing` (`voicingID`, `voicing`) VALUES
(1, 'unison'),
(2, 'SATB'),
(3, 'SAB'),
(4, 'SSA'),
(5, 'TTBB'),
(6, 'SSAA'),
(7, 'SSAATTBB'),
(8, 'SATB.SATB'),
(9, 'SSATB'),
(10, 'SAATB'),
(11, 'SATTB'),
(12, 'SATBB'),
(13, 'SATB with divisi'),
(14, 'SSATTB'),
(15, '2 part'),
(16, '3 part'),
(17, 'SSATTB with divisi'),
(18, 'SSAATBB'),
(19, 'ATBB'),
(20, 'AATBB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anthems`
--
ALTER TABLE `anthems`
  ADD PRIMARY KEY (`anthemID`);

--
-- Indexes for table `composers`
--
ALTER TABLE `composers`
  ADD PRIMARY KEY (`composerID`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languageID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherID`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`raceID`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`seasonID`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`suggestionsID`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`textID`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`typeID`);

--
-- Indexes for table `voicing`
--
ALTER TABLE `voicing`
  ADD PRIMARY KEY (`voicingID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anthems`
--
ALTER TABLE `anthems`
  MODIFY `anthemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `composers`
--
ALTER TABLE `composers`
  MODIFY `composerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `raceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `seasonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `suggestionsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `textID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `voicing`
--
ALTER TABLE `voicing`
  MODIFY `voicingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
