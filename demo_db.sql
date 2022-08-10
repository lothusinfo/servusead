-- phpMyAdmin SQL Dump

-- version 5.2.0

-- https://www.phpmyadmin.net/

--

-- Host: localhost

-- Generation Time: Jul 01, 2022 at 12:17 PM

-- Server version: 5.7.37

-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Database: `admin_update`

--

-- --------------------------------------------------------

--

-- Table structure for table `accounting`

--

CREATE TABLE
    `accounting` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED DEFAULT NULL,
        `creator_id` int(11) DEFAULT NULL,
        `webinar_id` int(10) UNSIGNED DEFAULT NULL,
        `bundle_id` int(10) UNSIGNED DEFAULT NULL,
        `meeting_time_id` int(10) UNSIGNED DEFAULT NULL,
        `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
        `promotion_id` int(10) UNSIGNED DEFAULT NULL,
        `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
        `product_id` int(10) UNSIGNED DEFAULT NULL,
        `system` tinyint(1) NOT NULL DEFAULT '0',
        `tax` tinyint(1) NOT NULL DEFAULT '0',
        `amount` decimal(13, 2) DEFAULT NULL,
        `type` enum('addiction', 'deduction') COLLATE utf8mb4_unicode_ci NOT NULL,
        `type_account` enum(
            'income',
            'asset',
            'subscribe',
            'promotion',
            'registration_package'
        ) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `store_type` enum('automatic', 'manual') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'automatic',
        `referred_user_id` int(10) UNSIGNED DEFAULT NULL,
        `is_affiliate_amount` tinyint(1) NOT NULL DEFAULT '0',
        `is_affiliate_commission` tinyint(1) NOT NULL DEFAULT '0',
        `description` text COLLATE utf8mb4_unicode_ci,
        `created_at` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `accounting`

--

INSERT INTO
    `accounting` (
        `id`,
        `user_id`,
        `creator_id`,
        `webinar_id`,
        `bundle_id`,
        `meeting_time_id`,
        `subscribe_id`,
        `promotion_id`,
        `registration_package_id`,
        `product_id`,
        `system`,
        `tax`,
        `amount`,
        `type`,
        `type_account`,
        `store_type`,
        `referred_user_id`,
        `is_affiliate_amount`,
        `is_affiliate_commission`,
        `description`,
        `created_at`
    )
VALUES (
        251,
        996,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '500.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1625944212
    ), (
        252,
        996,
        NULL,
        NULL,
        NULL,
        98,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '165.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid for 1:30 hours of consultation',
        1625944347
    ), (
        253,
        996,
        NULL,
        NULL,
        NULL,
        98,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '15.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1625944347
    ), (
        254,
        1015,
        NULL,
        NULL,
        NULL,
        98,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '120.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1625944347
    ), (
        255,
        1015,
        NULL,
        NULL,
        NULL,
        98,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '30.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1625944347
    ), (
        256,
        930,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '600.00',
        'addiction',
        'asset',
        'manual',
        NULL,
        0,
        0,
        'Gifts from the platform',
        1625950715
    ), (
        257,
        995,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '1000.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1625950749
    ), (
        258,
        995,
        NULL,
        NULL,
        NULL,
        160,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '110.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid for 1:00 hours of consultation',
        1625952630
    ), (
        259,
        995,
        NULL,
        NULL,
        NULL,
        160,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '10.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1625952630
    ), (
        260,
        934,
        NULL,
        NULL,
        NULL,
        160,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '80.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1625952630
    ), (
        261,
        934,
        NULL,
        NULL,
        NULL,
        160,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '20.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1625952630
    ), (
        262,
        995,
        NULL,
        2005,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '11.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1625953197
    ), (
        263,
        995,
        NULL,
        2005,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '1.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1625953198
    ), (
        264,
        4,
        NULL,
        2005,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '8.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1625953198
    ), (
        265,
        4,
        NULL,
        2005,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '2.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1625953198
    ), (
        266,
        979,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '400.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1625992548
    ), (
        267,
        995,
        NULL,
        NULL,
        NULL,
        103,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '137.50',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid for 1:15 hours of consultation',
        1625996816
    ), (
        268,
        995,
        NULL,
        NULL,
        NULL,
        103,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '12.50',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1625996817
    ), (
        269,
        1015,
        NULL,
        NULL,
        NULL,
        103,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '100.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1625996817
    ), (
        270,
        1015,
        NULL,
        NULL,
        NULL,
        103,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '25.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1625996817
    ), (
        271,
        995,
        NULL,
        1999,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '55.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1625996942
    ), (
        272,
        995,
        NULL,
        1999,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '5.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1625996943
    ), (
        273,
        929,
        NULL,
        1999,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '45.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1625996943
    ), (
        274,
        929,
        NULL,
        1999,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '5.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1625996943
    ), (
        275,
        995,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '55.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1625996979
    ), (
        276,
        995,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '5.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1625996979
    ), (
        277,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '40.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1625996979
    ), (
        278,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '10.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1625996979
    ), (
        279,
        995,
        NULL,
        2001,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '17.60',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1625997105
    ), (
        280,
        995,
        NULL,
        2001,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '1.60',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1625997106
    ), (
        281,
        3,
        NULL,
        2001,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '14.40',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1625997106
    ), (
        282,
        3,
        NULL,
        2001,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '1.60',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1625997106
    ), (
        283,
        996,
        NULL,
        2006,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '24.75',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626060488
    ), (
        284,
        996,
        NULL,
        2006,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '2.25',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626060488
    ), (
        285,
        867,
        NULL,
        2006,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '18.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626060488
    ), (
        286,
        867,
        NULL,
        2006,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '4.50',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626060488
    ), (
        287,
        996,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '44.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626060553
    ), (
        288,
        996,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '4.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626060553
    ), (
        289,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '32.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626060553
    ), (
        290,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '8.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626060553
    ), (
        291,
        930,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '55.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626060836
    ), (
        292,
        930,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '5.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626060837
    ), (
        293,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '40.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626060837
    ), (
        294,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '10.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626060837
    ), (
        295,
        1015,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '332.00',
        'deduction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Payout request',
        1626061220
    ), (
        296,
        979,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '66.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626061333
    ), (
        297,
        979,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '6.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626061334
    ), (
        298,
        929,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '54.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626061334
    ), (
        299,
        929,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '6.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626061334
    ), (
        300,
        979,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '22.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626061374
    ), (
        301,
        979,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '2.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626061374
    ), (
        302,
        863,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '16.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626061374
    ), (
        303,
        863,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '4.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626061374
    ), (
        304,
        979,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '33.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626061375
    ), (
        305,
        979,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '3.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626061376
    ), (
        306,
        867,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '24.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626061376
    ), (
        307,
        867,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '6.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626061376
    ), (
        308,
        995,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '22.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626061450
    ), (
        309,
        995,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '2.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626061451
    ), (
        310,
        995,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '20.00',
        'addiction',
        'subscribe',
        'automatic',
        NULL,
        0,
        0,
        'Income for Subscribe',
        1626061451
    ), (
        311,
        867,
        NULL,
        2006,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '0.16',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Paid for Subscribe',
        1626061483
    ), (
        312,
        1,
        NULL,
        2006,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '0.16',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid for Subscribe',
        1626061483
    ), (
        313,
        929,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '0.16',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Paid for Subscribe',
        1626061490
    ), (
        314,
        1,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '0.16',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid for Subscribe',
        1626061490
    ), (
        315,
        863,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '0.16',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Paid for Subscribe',
        1626061494
    ), (
        316,
        1,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '0.16',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid for Subscribe',
        1626061494
    ), (
        317,
        1015,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '500.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1626132570
    ), (
        318,
        1015,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '17.60',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626132845
    ), (
        319,
        1015,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '1.60',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626132845
    ), (
        320,
        863,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '12.80',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626132845
    ), (
        321,
        863,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '3.20',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626132845
    ), (
        322,
        929,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '300.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1626241074
    ), (
        323,
        929,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        0,
        0,
        '55.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626241152
    ), (
        324,
        929,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        0,
        1,
        '5.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626241153
    ), (
        325,
        929,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        1,
        0,
        '50.00',
        'addiction',
        'promotion',
        'automatic',
        NULL,
        0,
        0,
        'Paid for Promotion',
        1626241153
    ), (
        326,
        929,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '33.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626241213
    ), (
        327,
        929,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '3.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626241214
    ), (
        328,
        864,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '24.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626241214
    ), (
        329,
        864,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '6.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626241214
    ), (
        330,
        995,
        NULL,
        NULL,
        NULL,
        114,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '110.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid for 1:00 hours of consultation',
        1626247196
    ), (
        331,
        995,
        NULL,
        NULL,
        NULL,
        114,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '10.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626247196
    ), (
        332,
        870,
        NULL,
        NULL,
        NULL,
        114,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '80.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626247196
    ), (
        333,
        870,
        NULL,
        NULL,
        NULL,
        114,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '20.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626247196
    ), (
        334,
        995,
        NULL,
        NULL,
        NULL,
        114,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '110.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Refunded to Buyer',
        1626247245
    ), (
        335,
        NULL,
        NULL,
        NULL,
        NULL,
        114,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '10.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Refunded Tax',
        1626247245
    ), (
        336,
        870,
        NULL,
        NULL,
        NULL,
        114,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '100.00',
        'deduction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Refunded Income',
        1626247245
    ), (
        337,
        870,
        NULL,
        NULL,
        NULL,
        114,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '20.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Refunded Commission to Seller',
        1626247245
    ), (
        338,
        870,
        NULL,
        NULL,
        NULL,
        114,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '20.00',
        'deduction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Refunded Commission',
        1626247245
    ), (
        339,
        996,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '29.70',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1626508957
    ), (
        340,
        996,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '2.70',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1626508957
    ), (
        341,
        867,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '21.60',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1626508957
    ), (
        342,
        867,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '5.40',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1626508957
    ), (
        343,
        930,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '250.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1628704280
    ), (
        344,
        923,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '300.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1628704284
    ), (
        345,
        995,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '200.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1628704378
    ), (
        346,
        995,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '100.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1628704382
    ), (
        347,
        996,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '200.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'offline payment approved',
        1628704397
    ), (
        348,
        929,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '33.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1635412197
    ), (
        349,
        929,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '3.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1635412197
    ), (
        350,
        867,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '24.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1635412197
    ), (
        351,
        867,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '6.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1635412197
    ), (
        352,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '80.00',
        'addiction',
        'income',
        'automatic',
        1017,
        1,
        0,
        'public.get_amount_from_referral',
        1639378855
    ), (
        353,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '80.00',
        'deduction',
        'income',
        'automatic',
        1017,
        1,
        0,
        'public.get_amount_from_referral',
        1639378855
    ), (
        354,
        1017,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '50.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        1,
        0,
        'public.get_amount_from_referral',
        1639378855
    ), (
        355,
        1017,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '50.00',
        'deduction',
        'income',
        'automatic',
        NULL,
        1,
        0,
        'public.get_amount_from_referral',
        1639378855
    ), (
        356,
        1017,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '500.00',
        'addiction',
        'asset',
        'manual',
        NULL,
        0,
        0,
        'charging for test',
        1639379205
    ), (
        357,
        1017,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '33.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1639379284
    ), (
        358,
        1017,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '3.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1639379285
    ), (
        359,
        867,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '24.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1639379285
    ), (
        360,
        867,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '4.50',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1639379285
    ), (
        361,
        1015,
        NULL,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '1.50',
        'addiction',
        'income',
        'automatic',
        1017,
        0,
        1,
        'public.get_commission_from_referral',
        1639379285
    ), (
        362,
        1017,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '110.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1639379351
    ), (
        363,
        1017,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '10.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1639379352
    ), (
        364,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '80.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1639379352
    ), (
        365,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '15.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1639379352
    ), (
        366,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '5.00',
        'addiction',
        'income',
        'automatic',
        1017,
        0,
        1,
        'public.get_commission_from_referral',
        1639379352
    ), (
        367,
        1017,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '33.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form Credit',
        1639379394
    ), (
        368,
        1017,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '3.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form Buyer',
        1639379395
    ), (
        369,
        864,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '24.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1639379395
    ), (
        370,
        864,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '4.50',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Commission from Seller',
        1639379395
    ), (
        371,
        1015,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '1.50',
        'addiction',
        'income',
        'automatic',
        1017,
        0,
        1,
        'public.get_commission_from_referral',
        1639379395
    ), (
        372,
        995,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '11.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid Form Credit',
        1646172087
    ), (
        373,
        995,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '1.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax Get Form Buyer',
        1646172087
    ), (
        374,
        1015,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '8.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1646172087
    ), (
        375,
        1015,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '2.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Get Commission From Seller',
        1646172087
    ), (
        376,
        996,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '9.90',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid Form Credit',
        1646172124
    ), (
        377,
        996,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '0.90',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax Get Form Buyer',
        1646172124
    ), (
        378,
        1015,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '7.20',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1646172124
    ), (
        379,
        1015,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '1.80',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Get Commission From Seller',
        1646172124
    ), (
        380,
        979,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '11.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid Form Credit',
        1646172160
    ), (
        381,
        979,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '1.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax Get Form Buyer',
        1646172160
    ), (
        382,
        1015,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '8.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1646172160
    ), (
        383,
        1015,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '2.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Get Commission From Seller',
        1646172160
    ), (
        384,
        929,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '11.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid Form Credit',
        1646172296
    ), (
        385,
        929,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '1.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax Get Form Buyer',
        1646172297
    ), (
        386,
        1015,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '8.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1646172297
    ), (
        387,
        1015,
        NULL,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '2.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Get Commission From Seller',
        1646172297
    ), (
        388,
        995,
        NULL,
        NULL,
        NULL,
        169,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '825.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid for 1:00 hours of consultation',
        1646379290
    ), (
        389,
        995,
        NULL,
        NULL,
        NULL,
        169,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '75.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax Get Form Buyer',
        1646379290
    ), (
        390,
        1015,
        NULL,
        NULL,
        NULL,
        169,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '600.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Income Sale',
        1646379290
    ), (
        391,
        1015,
        NULL,
        NULL,
        NULL,
        169,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '150.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Get Commission From Seller',
        1646379290
    ), (
        392,
        867,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '200.00',
        'addiction',
        'asset',
        'manual',
        NULL,
        0,
        0,
        'gift',
        1646381415
    ), (
        393,
        930,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        0,
        0,
        '218.90',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid Form Credit',
        1646386792
    ), (
        394,
        930,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        0,
        1,
        '19.90',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax Get Form Buyer',
        1646386797
    ), (
        395,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        1,
        0,
        '199.00',
        'addiction',
        'registration_package',
        'automatic',
        NULL,
        0,
        0,
        'Paid For Registration Package',
        1646386797
    ), (
        396,
        859,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '500.00',
        'addiction',
        'asset',
        'manual',
        NULL,
        0,
        0,
        'Charge for the test.',
        1646387608
    ), (
        397,
        859,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        NULL,
        0,
        0,
        '220.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid Form Credit',
        1646387660
    ), (
        398,
        859,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        NULL,
        0,
        1,
        '20.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax Get Form Buyer',
        1646387660
    ), (
        399,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        NULL,
        1,
        0,
        '200.00',
        'addiction',
        'registration_package',
        'automatic',
        NULL,
        0,
        0,
        'Paid For Registration Package',
        1646387660
    ), (
        400,
        930,
        NULL,
        NULL,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '55.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656083263
    ), (
        401,
        930,
        NULL,
        NULL,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '5.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656083263
    ), (
        402,
        1015,
        NULL,
        NULL,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '40.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656083263
    ), (
        403,
        1015,
        NULL,
        NULL,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '10.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656083263
    ), (
        404,
        995,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        0,
        0,
        '5.25',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656103844
    ), (
        405,
        995,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        0,
        1,
        '0.25',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656103844
    ), (
        406,
        1016,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        0,
        0,
        '4.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656103844
    ), (
        407,
        1016,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        1,
        0,
        '1.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656103844
    ), (
        408,
        923,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        0,
        '31.25',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656104131
    ), (
        409,
        923,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        1,
        '1.25',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656104132
    ), (
        410,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        0,
        '27.50',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656104132
    ), (
        411,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1,
        0,
        '2.50',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656104132
    ), (
        412,
        996,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '39.60',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656130482
    ), (
        413,
        996,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '3.60',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656130482
    ), (
        414,
        864,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '28.80',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656130482
    ), (
        415,
        864,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '7.20',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656130482
    ), (
        416,
        930,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        0,
        0,
        '314.50',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656130707
    ), (
        417,
        930,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        0,
        1,
        '14.50',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656130707
    ), (
        418,
        934,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        0,
        0,
        '271.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656130707
    ), (
        419,
        934,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        1,
        0,
        '29.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656130707
    ), (
        420,
        996,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        5,
        0,
        0,
        '78.75',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656130963
    ), (
        421,
        996,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        5,
        0,
        1,
        '3.75',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656130964
    ), (
        422,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        5,
        0,
        0,
        '60.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656130964
    ), (
        423,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        5,
        1,
        0,
        '15.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656130964
    ), (
        424,
        979,
        NULL,
        NULL,
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '8.80',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656139704
    ), (
        425,
        979,
        NULL,
        NULL,
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '0.80',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656139705
    ), (
        426,
        934,
        NULL,
        NULL,
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '6.40',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656139705
    ), (
        427,
        934,
        NULL,
        NULL,
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '1.60',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656139705
    ), (
        428,
        979,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '27.50',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656139705
    ), (
        429,
        979,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1,
        '2.50',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656139706
    ), (
        430,
        929,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '20.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656139706
    ), (
        431,
        929,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        '5.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656139706
    ), (
        432,
        1017,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        0,
        '26.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656148574
    ), (
        433,
        1017,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        1,
        '1.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656148574
    ), (
        434,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        0,
        '23.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656148574
    ), (
        435,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1,
        0,
        '2.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656148574
    ), (
        436,
        995,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        0,
        '300.00',
        'addiction',
        'asset',
        'manual',
        NULL,
        0,
        0,
        'Gift Balance',
        1656148789
    ), (
        437,
        995,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        0,
        '52.25',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656148838
    ), (
        438,
        995,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        1,
        '2.25',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656148838
    ), (
        439,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        0,
        0,
        '45.50',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656148838
    ), (
        440,
        1015,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1,
        0,
        '4.50',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656148838
    ), (
        441,
        995,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        6,
        0,
        0,
        '17.00',
        'deduction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Paid form credit',
        1656322658
    ), (
        442,
        995,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        6,
        0,
        1,
        '1.00',
        'addiction',
        'asset',
        'automatic',
        NULL,
        0,
        0,
        'Tax form buyer',
        1656322658
    ), (
        443,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        6,
        0,
        0,
        '12.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Sales income',
        1656322658
    ), (
        444,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        6,
        1,
        0,
        '4.00',
        'addiction',
        'income',
        'automatic',
        NULL,
        0,
        0,
        'Seller commission',
        1656322658
    );

-- --------------------------------------------------------

--

-- Table structure for table `advertising_banners`

--

CREATE TABLE
    `advertising_banners` (
        `id` int(10) UNSIGNED NOT NULL,
        `position` enum(
            'home1',
            'home2',
            'course',
            'course_sidebar',
            'product_show',
            'bundle',
            'bundle_sidebar'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `size` int(10) UNSIGNED NOT NULL DEFAULT '12',
        `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `published` tinyint(1) NOT NULL DEFAULT '0',
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `advertising_banners`

--

INSERT INTO
    `advertising_banners` (
        `id`,
        `position`,
        `size`,
        `link`,
        `published`,
        `created_at`
    )
VALUES (
        2,
        'home1',
        12,
        '/login',
        1,
        1607885353
    ), (
        3,
        'home2',
        6,
        '/certificate_validation',
        1,
        1607885656
    ), (
        4,
        'home2',
        6,
        '/instructors',
        1,
        1607885681
    ), (
        6,
        'course_sidebar',
        12,
        '/instructors',
        1,
        1607886391
    ), (
        7,
        'course_sidebar',
        12,
        '/certificate_validation',
        1,
        1607886440
    ), (
        8,
        'product_show',
        12,
        '/products',
        1,
        1656569687
    ), (
        9,
        'bundle_sidebar',
        12,
        '/classes?type[]=bundle',
        1,
        1656571896
    );

-- --------------------------------------------------------

--

-- Table structure for table `advertising_banners_translations`

--

CREATE TABLE
    `advertising_banners_translations` (
        `id` int(10) UNSIGNED NOT NULL,
        `advertising_banner_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `advertising_banners_translations`

--

INSERT INTO
    `advertising_banners_translations` (
        `id`,
        `advertising_banner_id`,
        `locale`,
        `title`,
        `image`
    )
VALUES (
        1,
        2,
        'en',
        'Home - Join as instructor',
        '/store/1/default_images/banners/become_instructor_banner.png'
    ), (
        2,
        3,
        'en',
        'Certificate validation - Home',
        '/store/1/default_images/banners/validate_certificates_banner.png'
    ), (
        3,
        4,
        'en',
        'Reserve a meeting - Home',
        '/store/1/default_images/banners/reserve_a_meeting.png'
    ), (
        4,
        6,
        'en',
        'Reserve a meeting - Course page',
        '/store/1/default_images/banners/reserve_a_meeting.png'
    ), (
        5,
        7,
        'en',
        'Certificate validation - Course page',
        '/store/1/default_images/banners/validate_certificates_banner.png'
    ), (
        7,
        2,
        'ar',
        'الصفحة الرئيسية - انضم كمدرس',
        '/store/1/default_images/banners/become_instructor_banner_ar.png'
    ), (
        8,
        2,
        'es',
        'Inicio - Únete como instructora',
        '/store/1/default_images/banners/become_instructor_banner_es.png'
    ), (
        9,
        3,
        'ar',
        'التحقق من صحة الشهادة - الصفحة الرئيسية',
        '/store/1/default_images/banners/validate_certificates_banner_ar.png'
    ), (
        10,
        3,
        'es',
        'Validación de certificados - Inicio',
        '/store/1/default_images/banners/validate_certificates_banner_es.png'
    ), (
        11,
        4,
        'ar',
        'حجز اجتماع - الصفحة الرئيسية',
        '/store/1/default_images/banners/reserve_a_meeting_ar.png'
    ), (
        12,
        4,
        'es',
        'Reservar una reunión - Inicio',
        '/store/1/default_images/banners/reserve_a_meeting_es.png'
    ), (
        13,
        6,
        'ar',
        'حجز اجتماع - صفحة الدورة',
        '/store/1/default_images/banners/reserve_a_meeting_ar.png'
    ), (
        14,
        6,
        'es',
        'Reservar una reunión - página del curso',
        '/store/1/default_images/banners/reserve_a_meeting_es.png'
    ), (
        15,
        7,
        'ar',
        'التحقق من صحة الشهادة - صفحة الدورة',
        '/store/1/default_images/banners/validate_certificates_banner_ar.png'
    ), (
        16,
        7,
        'es',
        'Validación del certificado - página del curso',
        '/store/1/default_images/banners/validate_certificates_banner_es.png'
    ), (
        17,
        8,
        'en',
        'Store - Product page',
        '/store/1/default_images/banners/store_en.png'
    ), (
        18,
        8,
        'ar',
        'المتجر - صفحة المنتج',
        '/store/1/default_images/banners/store_ar.png'
    ), (
        19,
        8,
        'es',
        'Tienda - Página del producto',
        '/store/1/default_images/banners/store_es.png'
    ), (
        20,
        9,
        'en',
        'Course Bundle - Sidebar',
        '/store/1/default_images/banners/bundle_en.png'
    ), (
        21,
        9,
        'ar',
        'حزمة الدورة - الشريط الجانبي',
        '/store/1/default_images/banners/bundle_ar.png'
    ), (
        22,
        9,
        'es',
        'Paquete de cursos - Barra lateral',
        '/store/1/default_images/banners/bundle_es.png'
    );

-- --------------------------------------------------------

--

-- Table structure for table `affiliates`

--

CREATE TABLE
    `affiliates` (
        `id` int(10) UNSIGNED NOT NULL,
        `affiliate_user_id` int(10) UNSIGNED NOT NULL,
        `referred_user_id` int(10) UNSIGNED NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `affiliates`

--

INSERT INTO
    `affiliates` (
        `id`,
        `affiliate_user_id`,
        `referred_user_id`,
        `created_at`
    )
VALUES (1, 1015, 1017, 1639378855);

-- --------------------------------------------------------

--

-- Table structure for table `affiliates_codes`

--

CREATE TABLE
    `affiliates_codes` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `affiliates_codes`

--

INSERT INTO
    `affiliates_codes` (
        `id`,
        `user_id`,
        `code`,
        `created_at`
    )
VALUES (2, 995, '422536', 1635366391), (3, 996, '442769', 1635420731), (4, 1015, '822047', 1639378662);

-- --------------------------------------------------------

--

-- Table structure for table `agora_history`

--

CREATE TABLE
    `agora_history` (
        `id` int(10) UNSIGNED NOT NULL,
        `session_id` int(10) UNSIGNED NOT NULL,
        `start_at` int(10) UNSIGNED NOT NULL,
        `end_at` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `agora_history`

--

INSERT INTO
    `agora_history` (
        `id`,
        `session_id`,
        `start_at`,
        `end_at`
    )
VALUES (1, 74, 1646391218, 1646391343), (2, 76, 1646391739, 1646391984);

-- --------------------------------------------------------

--

-- Table structure for table `badges`

--

CREATE TABLE
    `badges` (
        `id` int(10) UNSIGNED NOT NULL,
        `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `type` enum(
            'register_date',
            'course_count',
            'course_rate',
            'sale_count',
            'support_rate',
            'product_sale_count',
            'make_topic',
            'send_post_in_topic',
            'instructor_blog'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `condition` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
        `score` int(11) DEFAULT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `badges`

--

INSERT INTO
    `badges` (
        `id`,
        `image`,
        `type`,
        `condition`,
        `score`,
        `created_at`
    )
VALUES (
        21,
        '/store/1/default_images/badges/new_user.png',
        'register_date',
        '{\"from\":\"1\",\"to\":\"30\"}',
        5,
        1625553769
    ), (
        22,
        '/store/1/default_images/badges/loyal_user.png',
        'register_date',
        '{\"from\":\"31\",\"to\":\"365\"}',
        10,
        1625554171
    ), (
        23,
        '/store/1/default_images/badges/faithful_user.png',
        'register_date',
        '{\"from\":\"365\",\"to\":\"1000\"}',
        15,
        1625554495
    ), (
        24,
        '/store/1/default_images/badges/junior_vendor.png',
        'course_count',
        '{\"from\":\"1\",\"to\":\"1\"}',
        10,
        1625554772
    ), (
        25,
        '/store/1/default_images/badges/senior_vendor.png',
        'course_count',
        '{\"from\":\"2\",\"to\":\"2\"}',
        20,
        1625554960
    ), (
        26,
        '/store/1/default_images/badges/expert_vendor.png',
        'course_count',
        '{\"from\":\"3\",\"to\":\"6\"}',
        30,
        1625555421
    ), (
        27,
        '/store/1/default_images/badges/bronze_classes.png',
        'course_rate',
        '{\"from\":\"2\",\"to\":\"3\"}',
        NULL,
        1625556048
    ), (
        28,
        '/store/1/default_images/badges/silver_classes.png',
        'course_rate',
        '{\"from\":\"3\",\"to\":\"4\"}',
        10,
        1625556159
    ), (
        29,
        '/store/1/default_images/badges/golden_classes.png',
        'course_rate',
        '{\"from\":\"4\",\"to\":\"5\"}',
        50,
        1625556284
    ), (
        30,
        '/store/1/default_images/badges/best_seller.png',
        'sale_count',
        '{\"from\":\"1\",\"to\":\"2\"}',
        NULL,
        1625557021
    ), (
        31,
        '/store/1/default_images/badges/top_seller.png',
        'sale_count',
        '{\"from\":\"3\",\"to\":\"9\"}',
        20,
        1625557247
    ), (
        32,
        '/store/1/default_images/badges/king_seller.png',
        'sale_count',
        '{\"from\":\"10\",\"to\":\"20\"}',
        50,
        1625558061
    ), (
        33,
        '/store/1/default_images/badges/good_support.png',
        'support_rate',
        '{\"from\":\"2\",\"to\":\"3\"}',
        NULL,
        1625558473
    ), (
        34,
        '/store/1/default_images/badges/amazing_support.png',
        'support_rate',
        '{\"from\":\"3\",\"to\":\"4\"}',
        NULL,
        1625558682
    ), (
        35,
        '/store/1/default_images/badges/fantastic_support.png',
        'support_rate',
        '{\"from\":\"4\",\"to\":\"5\"}',
        20,
        1625558892
    ), (
        36,
        '/store/1/default_images/badges/Best Store Seller.svg',
        'product_sale_count',
        '{\"from\":\"5\",\"to\":\"9\"}',
        5,
        1656145531
    ), (
        37,
        '/store/1/default_images/badges/King Store Seller.svg',
        'product_sale_count',
        '{\"from\":\"10\",\"to\":\"15\"}',
        10,
        1656145677
    ), (
        38,
        '/store/1/default_images/badges/Forums Top User.svg',
        'make_topic',
        '{\"from\":\"1\",\"to\":\"5\"}',
        10,
        1656145989
    ), (
        39,
        '/store/1/default_images/badges/Forums Best User.svg',
        'make_topic',
        '{\"from\":\"6\",\"to\":\"10\"}',
        15,
        1656146136
    ), (
        40,
        '/store/1/default_images/badges/Loyal Writer.svg',
        'instructor_blog',
        '{\"from\":\"5\",\"to\":\"10\"}',
        20,
        1656146397
    ), (
        41,
        '/store/1/default_images/badges/Forums Loyal User.svg',
        'send_post_in_topic',
        '{\"from\":\"20\",\"to\":\"30\"}',
        10,
        1656146689
    );

-- --------------------------------------------------------

--

-- Table structure for table `badge_translations`

--

CREATE TABLE
    `badge_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `badge_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `description` text COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `badge_translations`

--

INSERT INTO
    `badge_translations` (
        `id`,
        `badge_id`,
        `locale`,
        `title`,
        `description`
    )
VALUES (
        1,
        21,
        'en',
        'New User',
        '1 Month of Membership'
    ), (
        2,
        22,
        'en',
        'Loyal User',
        '1 year of Membership'
    ), (
        3,
        23,
        'en',
        'Faithful User',
        'Old Membership'
    ), (
        4,
        24,
        'en',
        'Junior Vendor',
        'Has 1 Class'
    ), (
        5,
        25,
        'en',
        'Senior Vendor',
        'Has 2 Classes'
    ), (
        6,
        26,
        'en',
        'Expert Vendor',
        'Has 3 to 6 Classes'
    ), (
        7,
        27,
        'en',
        'Bronze Classes',
        'Classes Rating from 2 to 3'
    ), (
        8,
        28,
        'en',
        'Silver Classes',
        'Classes Rating from 3 to 4'
    ), (
        9,
        29,
        'en',
        'Golden Classes',
        'Classes Rating from 4 to 5'
    ), (
        10,
        30,
        'en',
        'Best Seller',
        'Classes Sales from 1 to 2'
    ), (
        11,
        31,
        'en',
        'Top Seller',
        'Classes Sales from 3 to 9'
    ), (
        12,
        32,
        'en',
        'King Seller',
        'Classes Sales from 10 to 20'
    ), (
        13,
        33,
        'en',
        'Good Support',
        'Support Rating from 2 to 3'
    ), (
        14,
        34,
        'en',
        'Amazing Support',
        'Support Rating from 3 to 4'
    ), (
        15,
        35,
        'en',
        'Fantastic Support',
        'Support Rating from 4 to 5'
    ), (
        16,
        36,
        'en',
        'Store Best Seller',
        'Store Products Sales from 1 to 5'
    ), (
        17,
        37,
        'en',
        'Store King Seller',
        'Store Products Sales from 6 to 15'
    ), (
        18,
        38,
        'en',
        'Forums Top User',
        'Has 2 to 5 Topics'
    ), (
        19,
        39,
        'en',
        'Forums Best User',
        'Has 6 to 10 Topics'
    ), (
        20,
        40,
        'en',
        'Loyal Writer',
        'Has 5 to 10 Articles'
    ), (
        21,
        41,
        'en',
        'Forum Loyal User',
        'Has 20 to 30 Posts in Forums'
    );

-- --------------------------------------------------------

--

-- Table structure for table `become_instructors`

--

CREATE TABLE
    `become_instructors` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `role` enum('teacher', 'organization') COLLATE utf8mb4_unicode_ci NOT NULL,
        `package_id` int(10) UNSIGNED DEFAULT NULL,
        `certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `description` text COLLATE utf8mb4_unicode_ci,
        `status` enum('pending', 'accept', 'reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `become_instructors`

--

INSERT INTO
    `become_instructors` (
        `id`,
        `user_id`,
        `role`,
        `package_id`,
        `certificate`,
        `description`,
        `status`,
        `created_at`
    )
VALUES (
        5,
        930,
        'teacher',
        2,
        '/store/930/certificate.jpg',
        'I taught design in London for two years.',
        'pending',
        1626242477
    ), (
        6,
        859,
        'organization',
        4,
        '/store/859/certificate.jpg',
        'We have 3 years of experience in advanced sewing training.',
        'pending',
        1646387556
    );

-- --------------------------------------------------------

--

-- Table structure for table `blog`

--

CREATE TABLE
    `blog` (
        `id` int(10) UNSIGNED NOT NULL,
        `category_id` int(10) UNSIGNED DEFAULT NULL,
        `author_id` int(10) UNSIGNED NOT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `visit_count` int(10) UNSIGNED DEFAULT '0',
        `enable_comment` tinyint(1) NOT NULL DEFAULT '1',
        `status` enum('pending', 'publish') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
        `created_at` int(10) UNSIGNED NOT NULL,
        `updated_at` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `blog`

--

INSERT INTO
    `blog` (
        `id`,
        `category_id`,
        `author_id`,
        `slug`,
        `image`,
        `visit_count`,
        `enable_comment`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES (
        21,
        34,
        1014,
        'How-To-Teach-Your-Kid-Anything-Easily',
        '/store/1/default_images/blogs/blog1.jpg',
        21,
        1,
        'publish',
        1625091953,
        1656136960
    ), (
        22,
        37,
        1014,
        'Better-Relationship-Between-You-and-Your-Student-s-Parent',
        '/store/1/default_images/blogs/blog2.jpg',
        9,
        1,
        'publish',
        1625093279,
        1645386787
    ), (
        23,
        36,
        1,
        '3-Laws-to-Become-a-Straight-A-Student',
        '/store/1014/blog3.jpg',
        17,
        1,
        'publish',
        1625094412,
        1656136976
    );

-- --------------------------------------------------------

--

-- Table structure for table `blog_categories`

--

CREATE TABLE
    `blog_categories` (
        `id` int(10) UNSIGNED NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `blog_categories`

--

INSERT INTO
    `blog_categories` (`id`, `title`, `slug`)
VALUES (
        33,
        'Announcements',
        'Vel-consequatur'
    ), (34, 'Articles', 'Facilis-ea'), (
        36,
        'Events',
        'Fugit-dignissimos-possimus'
    ), (37, 'News', 'new');

-- --------------------------------------------------------

--

-- Table structure for table `blog_translations`

--

CREATE TABLE
    `blog_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `blog_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
        `meta_description` text COLLATE utf8mb4_unicode_ci
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `blog_translations`

--

INSERT INTO
    `blog_translations` (
        `id`,
        `blog_id`,
        `locale`,
        `title`,
        `description`,
        `content`,
        `meta_description`
    )
VALUES (
        2,
        21,
        'en',
        'How To Teach Your Kid Easily',
        '<p>The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault. I started tutoring math out of financial desperation. I’d just been fired from my job as a waiter, most of the proofreading in jobs in New York had been outsourced to India, and for the third time in my life, I was facing dire poverty.</p>',
        '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>',
        'The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault.'
    ), (
        3,
        22,
        'en',
        'Better Relationship Between Friends',
        '<p>The tutor-parent relationship is an important relationship and unfortunately greatly overlooked. Why is it important? Well, a good relationship between you and the student’s parent or guardian serves to help students perform better personally and academically. Fostering a relationship with them as a tutor can be challenging due to a number of factors, however, there are a number of ways to build this relationship and optimize students’ learning support system over time.</p>',
        '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>',
        'The tutor-parent relationship is an important relationship and unfortunately greatly overlooked.'
    ), (
        4,
        23,
        'en',
        'Become a Straight-A Student',
        '<p>In this article, I’ll explain the two rules I followed to become a straight-A student. If you take my advice, you’ll get better grades and lead a more balanced life too.</p>',
        '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>',
        'In this article, I’ll explain the two rules I followed to become a straight-A student.'
    ), (
        5,
        21,
        'ar',
        'كيف تعلم طفلك أي شيء بسهولة',
        '<p style=\"text-align: right; \">الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين. بدأت في تدريس الرياضيات بسبب اليأس المالي.</p>',
        '<p style=\"text-align: right; \">بدأت في تدريس الرياضيات بسبب اليأس المالي. لقد طُردت للتو من وظيفتي كنادل ، ومعظم عمليات التدقيق اللغوي في الوظائف في نيويورك تم الاستعانة بمصادر خارجية للهند ، وللمرة الثالثة في حياتي ، كنت أواجه فقرًا مدقعًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان المبلغ الذي نسيته مذهلاً في البداية ، وقد تفوقت في الرياضيات طوال حياتي الأكاديمية. إذا كنت لا تستخدمها ، فأنت تخسرها حقًا ، لذلك ليس من المستغرب أن يبكي معظم الآباء عمي في الرياضيات في الصف الرابع تقريبًا. إنهم لا يتذكرون ولا يريدون أن يتذكروا ، مما يديم هذا الموقف لدى أطفالهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تخيل أنك تفعل أي شيء ، حتى لو كنت بارعًا فيه ، بما يعادل عملاقًا يلوح في الأفق خلفك ويفحص كل تحركاتك. وهذا هو ما يفعله الآباء لأطفالهم. إنهم يحومون وينقضون على كل خطأ.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">1) تعاطف مع أطفالك</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">في جلستي الأولى مع تلميذي الأول ، تراجعت والدته بعصبية خلفنا ، ثم اتصلت بي لمدة خمس دقائق. سألت إذا لاحظت أن ابنها قد أجاب على السؤال الأخير بشكل غير صحيح ، ورأيت على الفور جوهر المشكلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">عليك أن ترتاح وتسترخي حتى يكون طفلك مرتاحًا وتنتظر حتى النهاية قبل أن تبدأ في تصحيح أي شيء. هذه هي الطريقة التي يتعلم بها الأطفال التحقق من عملهم ، وأن ارتكاب الأخطاء ليس مشكلة كبيرة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الأخطاء لا مفر منها ، ولكن كيفية التعامل معها ليست كذلك. إذا كنت تريد أن يشعر ابنك بالرعب إلى الأبد من الرياضيات ، إذن ، بكل الوسائل ، استمر في الازدحام ومقاطعته على الدوام. من المحتمل أن تجعلهم حذرين من محاولة تعلم أي شيء على الإطلاق.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">2) إعطاء نفسك وأطلق عليه الرصاص</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لحسن الحظ ، فهمت هذه الأم ومعظم الآباء الآخرين ما كنت أفعله ، وأدركوا تواطؤهم في كفاح أطفالهم. بعد تلك الجلسة الأولى ، تركتنا أمي وشأننا ، وبدأ طفلها في التحسن على الفور.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تم تشجيع والديه لدرجة أنهم سألوا عما إذا كان بإمكاني المساعدة في مواضيع أخرى. كان التاريخ والعلوم واللغة الإنجليزية داخل غرفة قيادتي ، لكن الطفل ذهب إلى مدرسة كاثوليكية وكان عليه أن يتعلم اللاتينية.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">استعرت نسخة من كتابه اللاتيني وأصيبت بالإحباط تمامًا. اللغة اللاتينية محيرة ، خاصة في البداية. هذا العدد الكبير من الإقتران، ومسألة السياق. الطريقة التي تتحدث بها إلى النبلاء والأقران والعبيد تشبه عمليًا تعلم ثلاث لغات مختلفة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">ما زلت مفلسة ، وهذا يعني المزيد من المال. وهل كان علي بالفعل معرفة اللاتينية؟ كل ما كان علي فعله هو البقاء قبل الطفل ببضعة أيام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">3) كن صادقا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">حالتنا الافتراضية هي إنكار جهلنا ، خاصة أمام الأطفال. نحن دفاعيون ورفضون ، ويمكن لمعظم الأطفال أن يقولوا إنك ضائع مثلهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان الحل هو الاعتراف بذلك منذ البداية. سألني الطفل عن وجهة نظر تعلم اللاتينية وأخبرته أنني لا أعرف. من المفترض أنه ساعد مع لغات أخرى ، لكن ربما يمكنه استخدامه يومًا ما لإثارة إعجاب الأشخاص الطنانين في حفلات الكوكتيل. سألني لماذا تكسر بعض الأفعال أنماط الاقتران ، وقلت له إنها طريقة القدماء في تعذيبنا.</p><p style=\"text-align: right; \">عندما كان طفلاً صغيرًا ، كان يتعلم اللغة أسرع مني ، لكنه كان يواجه صعوبة أكبر في بعض التفاصيل الدقيقة. كانت هناك أوقات حيرتني فيها وأتحدث بصوت عالٍ أمامه.</p><p style=\"text-align: right; \">أنا مدرس رياضيات. ما الذي جعلني أعتقد أنني مستعد لتدريس اللاتينية ، ناهيك عن تعلمها؟</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قال لي الطفل إنني أبدو جيدًا في كل شيء آخر ، لذا من المحتمل أن أفهم ذلك ، لكن كان هناك القليل من القلق في صوته. كلما فعلت الأسوأ ، زاد احتمال فشله ، وأراد إخراج اللاتينية من حياته أكثر مما فعلت.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لقد قربنا كراهيتنا المتبادل للغة اللاتينية من بعضنا البعض. لأول مرة ، أدرك كلانا أننا في هذا معًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">4) التعامل مع أولياء الأمور والمعلمين هو جزء من التعليم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">مع تقدمه في السن ، بدأ يسألني عن والديه ، اللذين كانا من المحافظين في قناة فوكس نيوز. قال لي انه يمكن ان نرى انهم منحازون، ولكن لم أفهم لماذا، أو أعرف ما يفكر.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">أخبرته أن يفكر بنفسه ويعترف عندما لا يعرف شيئًا ، وأنه لا يجب أن يخشى تغيير رأيه في ضوء أدلة جديدة صحيحة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">واشتكى أساتذته، واحد منهم لم يكن سعيدا كنت قد علمته الطرق المختلفة لعلم الجبر. في نهاية المطاف، وعلم أنه كيفية القيام بذلك بطريقة المعلم، ولكن عنيدا حاجة سبيلا آخر للوصول إلى هناك. كنا غاضبين بعض الشيء ، لكنني أخبرته أن تعلم التعامل مع المعلمين هو جزء من التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">احتفظت بالضغينة لنفسي ، لكنني أردت أيضًا خنق معلمه. وكان هذا الطفل قد ذهب من متوسط ​​D إلى B +، وكان هذا المعلم لا يزال يطارد له. ولا عجب في ذلك كثير من الناس رديء في الرياضيات - الآباء والامهات والمعلمين ضدهم وحتى لم يدرك ذلك.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">5) احتضان موقف التعلم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">إذا لم تكن على استعداد للتعلم ، فسيكون من الصعب تدريسه ، والخطوة الأولى هي قبول مدى ضآلة معرفتنا. من النفاق أن تنقض على ابنك عندما لا تتمكن من أداء واجبه المنزلي أيضًا ، ويلاحظ الأطفال ذلك ويشعرون بحق أنك غير عادل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">التعلم الإلكتروني) سيحسن إدراكك بشكل عام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">القراءة والرياضيات مهارات أساسية ، وتعلم الرياضيات أمر متواضع. في حين أن هناك القليل من الأدلة التي تدعم أن الرياضيات تحسن التفكير بشكل عام ، فأنت بحاجة إليها لفهم العلوم ، وعندما تشعر بالحيرة تجاه الكثير من الواجبات المدرسية لطفلك في المدرسة الابتدائية ، فإن القليل على الأقل من عدم اليقين يخترق آرائك. أنت تدرك أنك لا تعرف الكثير كما كنت تعتقد ، وبالنسبة لمعظم الناس ، يمكن أن يمثل هذا بداية جديدة. مع انحسار الصلابة ، تعاود اللدونة الظهور ، وعادات التعلم مدى الحياة هي أثمن هدية يمكن أن تقدمها لنفسك ولطفلك.إذا اخترت أن يكون الأطفال، يجب أن يكون لديك الاولوية رقم واحد، وسوف يفاجأ في مقدار التعلم (أو ص</p>',
        'الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين.'
    ), (
        6,
        21,
        'es',
        'Cómo enseñar a tu hija cualquier cosa fácilmente',
        '<p>La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres. Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p>',
        '<p>Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p><p><br></p><p>La cantidad que había olvidado fue sorprendente al principio, y había sobresalido en matemáticas durante toda mi vida académica. Si no lo usas, realmente lo pierdes, así que no es de extrañar que la mayoría de los padres lloren a tío en matemáticas de cuarto grado. No recuerdan y no quieren recordar, perpetuando esta actitud en sus hijos.</p><p><br></p><p>Imagínese haciendo cualquier cosa, incluso algo en lo que se le da bien, con el equivalente a un gigante acechando detrás de usted y escudriñando cada uno de sus movimientos. Esto es lo que les hacen los padres a sus hijos. Se ciernen y se abalanzan sobre cada error.</p><p><br></p><p>1) Tenga empatía por sus hijos</p><p><br></p><p>En mi primera sesión con mi primer alumno, su madre se escondió nerviosamente detrás de nosotros, luego me llamó unos cinco minutos después. Me preguntó si noté que su hijo había respondido la última pregunta incorrectamente, e inmediatamente vi la esencia del problema.</p><p><br></p><p>Tienes que descansar y relajarte para que tu hijo se sienta cómodo y esperar hasta el final antes de empezar a corregir algo. Así es como los niños aprenden a controlar su trabajo y que cometer errores no es gran cosa.</p><p><br></p><p>Los errores son inevitables, pero la forma en que los manejamos no lo es. Si quiere que su hijo esté eternamente aterrorizado por las matemáticas, entonces, por supuesto, continúe apiñándolos e interrumpiéndolos perpetuamente. Lo más probable es que los haga desconfiar de intentar aprender algo.</p><p><br></p><p>2) Date una oportunidad</p><p><br></p><p>Afortunadamente, esta madre y la mayoría de los otros padres entendieron lo que estaba haciendo y reconocieron su complicidad en las luchas de sus hijos. Después de esa primera sesión, mamá nos dejó solos y su hijo comenzó a mejorar de inmediato.</p><p><br></p><p>Sus padres estaban tan animados que me preguntaron si podía ayudar con otros temas. La historia, la ciencia y el inglés estaban a mi alcance, pero el niño fue a una escuela católica y tuvo que aprender latín.</p><p><br></p><p>Pedí prestada una copia de su libro en latín y me desmoralicé por completo. El latín es desconcertante, especialmente al principio. Tantas conjugaciones y contexto son importantes. La forma de hablar con nobles, compañeros y esclavos es prácticamente como aprender tres idiomas diferentes.</p><p><br></p><p>Aún así, estaba arruinado y esto significaría más dinero. ¿Y realmente tenía que saber latín? Todo lo que tenía que hacer era quedarme unos días por delante del chico.</p><p><br></p><p>3) Sea honesto</p><p><br></p><p>Nuestro estado predeterminado es negar nuestra ignorancia, especialmente frente a los niños. Estamos a la defensiva y desdeñosos, y la mayoría de los niños pueden decir que estás tan perdido como ellos.</p><p><br></p><p>Mi solución fue admitir esto desde el principio. El niño me preguntó qué sentido tenía aprender latín y le dije que no lo sabía. Supuestamente le ayudó con otros idiomas, pero tal vez algún día podría usarlo para impresionar a personas pretenciosas en los cócteles. Me preguntó por qué algunos verbos rompían los patrones de conjugación y le dije que era la forma de los antiguos de torturarnos.</p><p><br></p><p>Cuando era niño, aprendió el idioma más rápido que yo, pero tuvo más dificultades con algunas de las sutilezas. Hubo momentos en que estaba desconcertado y me hablaba en voz alta frente a él.</p><p><br></p><p>Soy un tutor de matemáticas. ¿Qué diablos me hizo pensar que estaba equipado para enseñar latín, y mucho menos aprenderlo?</p><p><br></p><p>El chico me dijo que parecía ser bastante bueno en todo lo demás, así que probablemente lo entendería, pero había un matiz de preocupación en su voz. Cuanto peor lo hacía, más probabilidades había de que fracasara, y quería que el latín fuera de su vida incluso más que yo.</p><p><br></p><p>Nuestro odio mutuo por el latín nos acercó más. Por primera vez, ambos comprendimos que estábamos juntos en esto.</p><p><br></p><p>4) Tratar con padres y maestros es parte de la educación</p><p><br></p><p>A medida que crecía, empezó a preguntarme sobre sus padres, que eran conservadores de Fox News. Me dijo que podía ver que eran parciales, pero que no entendía por qué ni sabía qué pensar.</p><p><br></p><p>Le dije que pensara por sí mismo y admitiera cuando no sabía algo, y que no debería tener miedo de cambiar de opinión a la luz de nuevas pruebas válidas.</p><p><br></p><p>Se quejaba de sus profesores, uno de los cuales no estaba contento de que le hubiera enseñado diferentes enfoques del álgebra. Con el tiempo, aprendió a hacerlo a la manera del maestro, pero necesitaba otra vía para llegar allí. Ambos estábamos un poco enojados, pero le dije que aprender a tratar con los maestros es parte de la educación.</p><p><br></p><p>Me guardé mi rencor, pero también quería estrangular a su maestro. Este niño había pasado de un promedio D a un B +, y esta maestra todavía lo perseguía. No es de extrañar que tanta gente sea pésima en matemáticas: sus padres y maestros estaban en contra de ellos y ni siquiera se dieron cuenta.</p><p><br></p><p>5) Adopte una actitud de aprendizaje</p><p><br></p><p>Si no está dispuesto a aprender, será difícil enseñar y el primer paso es aceptar lo poco que sabemos. Es hipócrita atacar a tu hijo cuando tú tampoco puedes hacer su tarea, y los niños se dan cuenta de esto y sienten que estás siendo injusto.</p><p><br></p><p>Si elige tener hijos, deberían ser su prioridad número uno y se sorprenderá de cuánto aprendizaje (o relearning) mejorará su cognición en general.</p><p><br></p><p>La lectura y las matemáticas son habilidades fundamentales, y aprender matemáticas es una lección de humildad. Si bien hay poca evidencia que respalde que las matemáticas mejoran el razonamiento en general, las necesita para comprender las ciencias, y cuando gran parte de las tareas de la escuela primaria de su hijo le desconcierta, al menos un poco de incertidumbre penetra en sus puntos de vista. Te das cuenta de que no sabes tanto como pensabas y, para la mayoría, esto puede marcar un nuevo comienzo. A medida que cede la rigidez, resurge la plasticidad y el hábito del aprendizaje permanente es el regalo más valioso que puede hacerse a sí mismo y a su hijo.</p>',
        'La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres.'
    ), (
        7,
        23,
        'es',
        '3 leyes para convertirse en una estudiante heterosexual',
        '<p>En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente. Si sigue mi consejo, obtendrá mejores calificaciones y también llevará una vida más equilibrada.</p>',
        '<p>Un historial académico sólido puede abrirle puertas en el futuro. Más importante aún, a través del proceso de convertirse en un estudiante sobresaliente, aprenderá valores como el trabajo duro, la disciplina y la determinación.</p><p>Regla 1: siempre tenga un plan.</p><p>(a) A medida que avanza el semestre, realice un seguimiento de las fechas clave: pruebas y exámenes, fechas límite para la presentación de proyectos, interrupciones del período, etc.</p><p>Ingrese estas fechas en un calendario físico o digital.</p><p>Si elige utilizar un calendario digital, le recomiendo Google Calendar.</p><p><br></p><p>(b) Programe un horario fijo cada semana en el que revise sus próximos eventos durante los próximos dos meses. Marque cuándo comenzará a prepararse para ese examen de matemáticas, a trabajar en ese proyecto de historia o a escribir ese ensayo en inglés.</p><p>(d) A continuación, anote sus compromisos para la próxima semana, p. ej. actividades extracurriculares, reuniones familiares, clases extra. En su calendario, resalte los bloques de tiempo que tendrá para el trabajo escolar.</p><p>Este proceso de planificación puede parecer lento, pero por lo general solo tomará 15 minutos cada semana.</p><p>Esta es una sabia inversión de tiempo como estudiante, porque el resto de la semana será mucho más productiva.</p><p>De esta manera, estudiarás inteligentemente, ¡no solo duro!</p><p><br></p><p>Regla # 2: Sea organizado.</p><p>Alguna vez ha tenido problemas para encontrar sus notas o tareas cuando las necesitaba? Probablemente terminó perdiendo un tiempo precioso buscándolos, antes de que finalmente se los pidiera prestados a su amigo.</p><p>Muchos estudiantes me dicen que guardan todas sus notas y tareas en una gran pila, ¡y solo las clasifican antes de sus exámenes!</p><p>Ser organizado, es más fácil decirlo que hacerlo, lo sé.</p>',
        'En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente.'
    ), (
        8,
        23,
        'ar',
        'علاقة أفضل بينك وبين ولي أمر الطالب',
        '<div style=\"text-align: right;\">في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا. إذا أخذت بنصيحتي ، ستحصل على درجات أفضل وتعيش حياة أكثر توازناً أيضًا.</div>',
        '<div style=\"text-align: right; \">يمكن للسجل الأكاديمي القوي أن يفتح لك الأبواب في المستقبل. والأهم من ذلك ، من خلال عملية أن تصبح طالبًا عاديًا ، ستتعلم قيمًا مثل العمل الجاد والانضباط والتصميم.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة 1: امتلك خطة دائمًا.</div><div style=\"text-align: right; \">(أ) مع تقدم الفصل الدراسي ، تتبع التواريخ الرئيسية: الاختبارات والامتحانات والمواعيد النهائية لتقديم المشروع وفواصل الفصل الدراسي وما إلى ذلك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">أدخل هذه التواريخ في تقويم مادي أو رقمي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">إذا اخترت استخدام تقويم رقمي ، فإنني أوصي بتقويم Google.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(ب) حدد موعدًا محددًا كل أسبوع حيث تقوم بمراجعة الأحداث القادمة على مدار الشهرين المقبلين. ضع علامة على الوقت الذي ستبدأ فيه التحضير لامتحان الرياضيات هذا ، أو العمل في مشروع التاريخ ، أو كتابة هذه الورقة باللغة الإنجليزية.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(د) بعد ذلك ، دوِّن التزاماتك للأسبوع القادم ، على سبيل المثال الأنشطة اللامنهجية والتجمعات العائلية والفصول الإضافية. في التقويم الخاص بك ، حدد فترات الوقت التي ستتاح لك للعمل المدرسي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">قد تبدو عملية التخطيط هذه مضيعة للوقت ، ولكنها عادة ما تستغرق 15 دقيقة فقط كل أسبوع.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">هذا استثمار حكيم للوقت كطالب ، لأن بقية الأسبوع ستصبح أكثر إنتاجية بكثير.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">بهذه الطريقة ، ستدرس بذكاء ، وليس فقط بجد!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة رقم 2: كن منظمًا.</div><div style=\"text-align: right; \">هل واجهت مشكلة في العثور على ملاحظاتك أو مهامك عندما احتجت إليها؟ ربما انتهى بك الأمر إلى إضاعة الوقت الثمين في البحث عنهم ، قبل أن تطلب أخيرًا استعارتهم من صديقك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">يخبرني العديد من الطلاب أنهم يحتفظون بجميع ملاحظاتهم وواجباتهم في كومة كبيرة واحدة ، ولا يقوموا بفرزها إلا قبل امتحاناتهم!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">كونك منظمًا - القول أسهل من الفعل ، أعلم.</div>',
        'في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا.'
    ), (
        9,
        22,
        'ar',
        'علاقة أفضل بينك وبين ولي أمر الطالب',
        '<p style=\"text-align: right; \">العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير. لماذا هو مهم؟ حسنًا ، تساعد العلاقة الجيدة بينك وبين ولي أمر الطالب أو الوصي عليه في مساعدة الطلاب على أداء أفضل على المستوى الشخصي والأكاديمي. </p>',
        '<p style=\"text-align: right; \">الرحمة والإيجابية هي كل شيء</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون التعامل معك أمرًا مرهقًا للوالدين أو الأوصياء. قد يكون هناك خوف من أن أداء طفلهم ليس جيدًا كما ينبغي ، أو ضيق الوقت للتواصل ، أو حتى حواجز اللغة. بصفتك مدرسًا ، فإن التعاطف وتقديم المعلومات بنبرة مهذبة يؤدي إلى العجائب في مثل هذه المواقف. من الأفضل الابتسام والتواصل البصري والترحيب وتقديم أي نصيحة إذا لزم الأمر. إحدى الحيل الجيدة للمساعدة في تهدئة الآباء أو الأوصياء عند التحدث إليهم هي الاعتراف أولاً بشيء إيجابي عن طفلهم لاحظته مهما كان صغيراً. على سبيل المثال ، ربما لاحظت أنهم أكثر انخراطًا في دروسهم وطرحوا المزيد من الأسئلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كن استباقيًا وتواصل كثيرًا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يتحدث بعض المعلمين مع الوالدين أو الأوصياء فقط عندما تكون هناك مشكلة ، مما يخلق بيئة سلبية لكليهما. هذا هو السبب في أنه من الضروري بذل الجهد للتحدث معهم كثيرًا سواء كان ذلك وجهًا لوجه أو مكالمة هاتفية أو حتى رسالة بريد إلكتروني. من الأفضل إبقائهم على اطلاع دائم بما يتعلمه أطفالهم. غالبًا ما يمنعهم التواصل من الشعور باليقظة القصوى عند التواصل معهم ويمكنه أيضًا تعزيز صداقة جميلة. بالطبع من المهم معرفة أن الآباء والأوصياء مشغولون! لذا تأكد عند التواصل معهم أنك تخطط مسبقًا للعثور على وقت يناسبهم بشكل أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">اجعل الوالد أو الوصي يشعر بالتقدير واطلب مشورتهما</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">من الطرق الرائعة لبناء علاقة مع الوالدين أو الأوصياء إشراكهم في تعليم أطفالهم. هذا لا يعني مجرد مساعدتهم في أداء واجباتهم المدرسية ، ولكن قد يعني مطالبتهم بالمشاركة في الأنشطة أو الأحداث المدرسية. يُعد سؤالهم عما إذا كانوا يرغبون في المساعدة في تنظيم حدث طريقة رائعة للتعرف عليهم ومنحهم فرصة لمقابلة أولياء الأمور أو الأوصياء الآخرين. يمكن أن يكون أيضًا شيئًا بسيطًا مثل إنشاء خطة درس تطلب مدخلات منهم. بالطبع كل هذا يعتمد على جدولهم الزمني وما إذا كان لديهم الوقت للمشاركة. في النهاية ، كلما حاولت إشراكهم في الأنشطة ، كان ذلك أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">طريقة أخرى رائعة لجعلهم يشعرون بالتقدير هي طلب نصيحتهم. إذا كان الطالب يعرض سلوكيات سلبية أثناء الدرس ، فمن الحكمة طلب مشورة الوالد أو الوصي. من خلال طلب نصيحتهم ، يمكن أن يحدث شيئان. أولاً ، قد لا يعرفون أن هناك سلوكًا سلبيًا للبدء به لأن الطالب قد لا يعرضه في المنزل. ثانيًا ، أنت تبني علاقة أفضل مع الوالد أو الوصي من خلال الحصول على مدخلاتهم في هذا الموقف ، مما سيبني الثقة. لا يجب أن تدور الأسئلة حول تعليم الطالب فقط عند التحدث إليهم ، بل يمكنك أيضًا طرح أسئلة حول اهتمامات الطالب والخطط التي لديهم خلال العطلات. من المهم دائمًا أن تتصرف بشكل احترافي عند التعامل مع أحد الوالدين أو الوصي ، ولكن لا يجب أن تكون المحادثة فقط حول التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تجنب أخذها بشكل شخصي والافتراضات</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الآباء والأوصياء بشر ولديهم ضغوط خاصة بهم للتعامل معها سواء كان ذلك في العمل أو في حياتهم المنزلية. من الأفضل لك أن تحافظ على هدوئك دائمًا ولا تأخذ أي شيء يقولونه على محمل الجد. يجب عليك دائمًا الرد بأسئلة من شأنها أن تساعد في نزع فتيل الموقف. على سبيل المثال ، قد يقول أحد الوالدين أو الوصي \"أنت تقول هذا لأنك خرجت لإحضار طفلي\" وأفضل طريقة للرد على سؤال مثل هذا هي \"أنا آسف لأنك تشعر بهذه الطريقة ، يرجى إعلامي لماذا تعتقد هذا؟\"</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كما يجب ألا تضع افتراضات حول الحياة المنزلية للطالب. ما لم يتم ذكر ذلك ، يمكن للافتراض أن يسبب العديد من المشاكل ويمكن أن يكون غير حساس لوضع الأسرة. يجب ألا تفترض أن الطالب يعيش مع كلا الوالدين أو أي من الوالدين في هذا الشأن. الآن ، في عالمنا المتنوع عالميًا ، لا يجب أن تفترض أن اللغة الأولى للوالد أو الوصي هي اللغة الإنجليزية ويجب دائمًا تأكيد ما إذا كان بإمكانهم التحدث باللغة الإنجليزية في المقام الأول. سيكون لكل طالب وضع مختلف عن الوضع الذي يليه. تؤدي الافتراضات إلى سوء الفهم الذي يمكن أن يخلق ظروفًا أكثر صعوبة للتعلم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون بناء علاقة مع أحد الوالدين أو الوصي أمرًا صعبًا في بعض الأحيان. يمكن أن يساعدك وضع هذه الأفكار في الاعتبار على التواصل معها بشكل أفضل. من الجيد أن تتذكر ، في نهاية اليوم ، أنه كلما كان لديك اتصال أفضل معهم ، كان من الأفضل أن يساعدوا في تعليم الطالب ، مما يسمح لهم في النهاية بتحقيق النجاح الأكاديمي وتعزيز حب التعلم.</p>',
        'العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير.'
    ), (
        10,
        22,
        'es',
        'Mejor relación entre usted y los padres de su estudiante',
        '<p>La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida. ¿Por qué es importante? Bueno, una buena relación entre usted y el padre o tutor del estudiante sirve para ayudar a los estudiantes a desempeñarse mejor a nivel personal y académico. Fomentar una relación con ellos como tutor puede ser un desafío debido a una serie de factores; sin embargo, hay varias formas de construir esta relación y optimizar el sistema de apoyo al aprendizaje de los estudiantes a lo largo del tiempo.</p>',
        '<p>La compasión y la positividad lo son todo</p><p>Puede ser estresante para los padres o tutores interactuar con usted. Puede haber temor de que a su hijo no le esté yendo tan bien como debería, falta de tiempo para conectarse o incluso barreras del idioma. Como tutor, ser compasivo y brindar información en un tono educado hace maravillas en situaciones como esta. Es mejor sonreír, hacer contacto visual, ser acogedor y ofrecer cualquier consejo si es necesario. Un buen truco para ayudar a los padres o tutores a hablar con ellos es reconocer primero algo positivo acerca de su hijo que haya notado, sin importar lo pequeño que sea. Por ejemplo, es posible que haya notado que están más involucrados en sus lecciones y hacen más preguntas.</p><p><br></p><p>Sea proactivo y comuníquese con frecuencia</p><p><br></p><p>Es posible que algunos tutores solo hablen con los padres o tutores cuando hay un problema, lo que crea un entorno negativo para ambos. Por eso es clave hacer el esfuerzo de hablar con ellos a menudo, ya sea cara a cara, por teléfono o incluso por correo electrónico. Es mejor mantenerlos actualizados sobre el aprendizaje de sus hijos. Comunicarse a menudo evita que se sientan en alerta máxima cuando se acerca e incluso puede fomentar una hermosa amistad. ¡Por supuesto que es importante saber que los padres y tutores están ocupados! Por eso, cuando te comuniques con ellos, asegúrate de planificar con anticipación para encontrar el momento que mejor funcione para ellos.</p><p><br></p><p>Haga que el padre o tutor se sienta valorado y solicite su consejo</p><p><br></p><p>Una excelente manera de entablar una relación con los padres o tutores es involucrarlos en la educación de sus hijos. Esto no significa solo que los ayuden con la tarea, sino que también podría significar pedirles que participen en actividades o eventos escolares. Preguntarles si les gustaría ayudar a organizar un evento es una excelente manera de conocerlos y darles la oportunidad de conocer a otros padres o tutores. También podría ser algo tan simple como crear un plan de lección que solicite su opinión. Por supuesto, todo esto depende de su horario y si tienen tiempo para participar. Al final, cuanto más intente involucrarlos en las actividades, mejor.</p><p><br></p><p>Otra excelente manera de hacerlos sentir valorados es pedirles su consejo. Si su estudiante muestra comportamientos negativos durante una lección, es aconsejable buscar el consejo del padre o tutor. Al pedirles su consejo, pueden ocurrir dos cosas. Uno, para empezar, es posible que no sepan que existe un comportamiento negativo, ya que es posible que el estudiante no lo esté mostrando en casa. Dos, está construyendo una mejor relación con el padre o tutor al obtener su opinión en esta situación, lo que generará confianza. Las preguntas no tienen que ser solo sobre la educación del estudiante al hablar con él, también puede hacer preguntas sobre el interés del estudiante y los planes que tiene durante las vacaciones. Siempre es importante que te comportes de manera profesional cuando trates con un padre o tutor, pero la conversación no tiene que ser estrictamente sobre educación.</p><p><br></p><p>Evite tomárselo personalmente y hacer suposiciones</p><p><br></p><p>Los padres y tutores son humanos y tienen que lidiar con su propio estrés, ya sea en el trabajo o en su vida familiar. Es mejor para usted mantener siempre la calma y nunca tomar en serio nada de lo que le digan. Siempre debe responder con preguntas que ayuden a calmar la situación. Por ejemplo, un padre o tutor puede decir \"Dices esto porque quieres atrapar a mi hijo\" y la mejor manera de responder a una pregunta como esta es \"Lamento que te sientas así, por favor avísame Por qué piensas esto?</p><p>Además, no debe hacer suposiciones sobre la vida hogareña de un estudiante. A menos que se haya indicado así, una suposición puede causar muchos problemas y puede ser insensible a la situación de una familia. No debe asumir que el estudiante vive con ambos padres o con cualquier padre. Ahora, en nuestro mundo globalmente diverso, no debe asumir que el primer idioma del padre o tutor es el inglés y siempre debe confirmar si pueden hablar inglés en primer lugar. Cada estudiante tendrá una situación diferente a la del próximo. Las suposiciones conducen a malentendidos que pueden crear circunstancias más desafiantes para el aprendizaje.</p><p><br></p><p>Establecer una relación con un padre o tutor a veces puede ser un desafío. Tener estas ideas en mente puede ayudarlo a conectarse mejor con ellas. Es bueno recordar que, al final del día, cuanto mejor sea la conexión que tenga con ellos, mejor podrán ayudar a enseñar al estudiante, lo que en última instancia les permitirá alcanzar el éxito académico y fomentar el amor por el aprendizaje.</p>',
        'La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida.'
    );

-- --------------------------------------------------------

--

-- Table structure for table `bundles`

--

CREATE TABLE
    `bundles` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `teacher_id` int(10) UNSIGNED NOT NULL,
        `category_id` int(10) UNSIGNED DEFAULT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `image_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `video_demo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `video_demo_source` enum(
            'upload',
            'youtube',
            'vimeo',
            'external_link'
        ) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `price` int(11) DEFAULT NULL,
        `points` int(11) DEFAULT NULL,
        `subscribe` tinyint(1) NOT NULL DEFAULT '0',
        `access_days` int(10) UNSIGNED DEFAULT NULL COMMENT 'Number of days to access the bundle',
        `message_for_reviewer` text COLLATE utf8mb4_unicode_ci,
        `status` enum(
            'active',
            'pending',
            'is_draft',
            'inactive'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` bigint(20) UNSIGNED NOT NULL,
        `updated_at` bigint(20) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `bundles`

--

INSERT INTO
    `bundles` (
        `id`,
        `creator_id`,
        `teacher_id`,
        `category_id`,
        `slug`,
        `thumbnail`,
        `image_cover`,
        `video_demo`,
        `video_demo_source`,
        `price`,
        `points`,
        `subscribe`,
        `access_days`,
        `message_for_reviewer`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        1015,
        1015,
        609,
        'Microsoft-Office-Beginner-to-Expert-Bundle',
        '/store/1015/office_bundle.jpg',
        '/store/1015/office_bundle_c.jpg',
        '/store/1015/Microsoft Excel - Excel from Beginner to Advanced.mkv',
        'upload',
        50,
        NULL,
        0,
        NULL,
        'Thank you',
        'active',
        1656082487,
        1656399382
    ), (
        2,
        934,
        934,
        606,
        'A-Z-Web-Programming',
        '/store/934/A-Z Web Programming.jpg',
        '/store/934/A-Z Web Programming_c.jpg',
        '/store/934/Python for Beginners.mp4',
        'upload',
        8,
        NULL,
        0,
        NULL,
        'Thank you for your review.',
        'active',
        1656138736,
        1656138918
    ), (
        3,
        929,
        929,
        602,
        'Solar-Energy-Design-Course-From-Zero-To-Hero',
        '/store/929/Solar Energy Design Course From Zero To Hero.jpg',
        '/store/929/Solar Energy Design Course From Zero To Hero_c.jpg',
        NULL,
        NULL,
        25,
        NULL,
        0,
        NULL,
        'Hi,\r\nThank you.',
        'active',
        1656139531,
        1656139656
    );

-- --------------------------------------------------------

--

-- Table structure for table `bundle_filter_option`

--

CREATE TABLE
    `bundle_filter_option` (
        `id` int(10) UNSIGNED NOT NULL,
        `bundle_id` int(10) UNSIGNED NOT NULL,
        `filter_option_id` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `bundle_filter_option`

--

INSERT INTO
    `bundle_filter_option` (
        `id`,
        `bundle_id`,
        `filter_option_id`
    )
VALUES (31, 2, 9148), (32, 2, 9216), (33, 2, 9279), (34, 2, 9280), (35, 2, 9281), (39, 3, 9120), (40, 3, 9166), (41, 3, 9240), (47, 1, 9138), (48, 1, 9139), (49, 1, 9140), (50, 1, 9196), (51, 1, 9266);

-- --------------------------------------------------------

--

-- Table structure for table `bundle_translations`

--

CREATE TABLE
    `bundle_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `bundle_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `seo_description` text COLLATE utf8mb4_unicode_ci,
        `description` longtext COLLATE utf8mb4_unicode_ci
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `bundle_translations`

--

INSERT INTO
    `bundle_translations` (
        `id`,
        `bundle_id`,
        `locale`,
        `title`,
        `seo_description`,
        `description`
    )
VALUES (
        1,
        1,
        'en',
        'Microsoft Office Beginner to Expert Bundle',
        'Learn to create professional documents with this beginner to advanced Ultimate Microsoft office Course.',
        '<p>In this MS Office video course, you will learn everything you need to know about MS Office Accounting. software needs to be installed and link is included in the training. We\'ll take advantage of a 30-day free trial that anyone who registers in the US will get for free. You can also use the Accountants Edition, which is currently free if you are in the US</p><p><br></p><p>Very clear step by step instructions show you how to navigate each part of MS Office. We\'ll do the complete setup together. You will then experience every common type of transaction that can be entered into MS Office . You will learn how to manage and customize the most important reports in MS Office. You can find and fix data entry errors, and even find everything you\'ve entered into your MS Office account. Projects and tests reproduce real-world challenges I\'m going to show you how to use MS Office. You can learn about any industry-specific assignments you might need by watching this topic on MS Office Desktop Videos. In this course, you can apply this particular topic to MS Office .</p><p><br></p><p>The transactions we learned about are what businesses need when using MS Office. We enter customer invoices, sales receipts and payments to the MS Office Accounting By Sage. This training includes depositing and banking related to MS Office, as well as entering supplier accounts and paying invoices in MS Office. This MS Office video training course also covers cash transactions and other cashbacks. I am constantly providing MS Office tips and MS Office tricks so that students have complete control over all their MS Office entries. The main features of MS Office Accounting will help you become an expert at MS Office</p>'
    ), (
        2,
        1,
        'es',
        'Paquete definitivo de Microsoft Office para principiantes y expertos',
        'Paquete definitivo de Microsoft Office para principiantes y expertos',
        '<p>En este curso de video de MS Office, aprenderá todo lo que necesita saber sobre la contabilidad de MS Office. es necesario instalar el software y el enlace está incluido en la capacitación. Aprovecharemos una prueba gratuita de 30 días que cualquier persona que se registre en los EE. UU. obtendrá de forma gratuita. También puede usar la Edición de contadores, que actualmente es gratuita si se encuentra en los EE. UU.</p><p><br></p><p>Las instrucciones paso a paso muy claras le muestran cómo navegar por cada parte de MS Office. Haremos la configuración completa juntos. Luego experimentará cada tipo común de transacción que se puede ingresar en MS Office. Aprenderá a administrar y personalizar los informes más importantes en MS Office. Puede encontrar y corregir errores de entrada de datos, e incluso encontrar todo lo que ha ingresado en su cuenta de MS Office. Los proyectos y las pruebas reproducen desafíos del mundo real. Le mostraré cómo usar MS Office. Puede obtener información sobre las asignaciones específicas de la industria que pueda necesitar al ver este tema en los videos de escritorio de MS Office. En este curso, puede aplicar este tema en particular a MS Office.</p><p><br></p><p>Las transacciones que aprendimos son lo que las empresas necesitan cuando usan MS Office. Ingresamos facturas de clientes, recibos de ventas y pagos al MS Office Accounting By Sage. Esta capacitación incluye depósitos y operaciones bancarias relacionadas con MS Office, además de ingresar cuentas de proveedores y pagar facturas en MS Office. Este curso de capacitación en video de MS Office también cubre transacciones en efectivo y otros reembolsos. Constantemente brindo consejos y trucos de MS Office para que los estudiantes tengan control total sobre todas sus entradas de MS Office. Las características principales de MS Office Accounting lo ayudarán a convertirse en un experto en MS Office</p>'
    ), (
        3,
        2,
        'en',
        'A-Z Web Programming',
        'The most complete course available on Web Programming.',
        '<p>Brad Hussey is updating the entire course to be even more relevant to the modern web designer and front-end web developer as we enter into 2022. Join now to get access!</p><p><br></p><p>This course by Brad Hussey is the go-to, most comprehensive, A to Z web design, web development and career-building course that will kickstart your progress by focusing on what you need to learn, and avoiding the unnecessary details.</p><p><br></p><p>- - -</p><p><br></p><p>Do you want to learn web design and front-end development? Do you need a career change but don\'t know where to start?</p><p><br></p><p>Are you a total beginner looking for an all-in-one Web Design, Web Development and Career Building course that takes you step-by-step through all of the necessary skills you need to know to start working professionally as a web designer or developer?</p><p><br></p><p>Are you a programmer or web developer looking to improve your design skills, so your designer colleagues can stop making fun of your bad designs?</p><p><br></p><p>Or maybe you\'re a graphic designer looking to learn how to code, so your programmer colleagues can stop laughing at your sad coding attempts?</p><p><br></p><p>Have you wasted time & hard earned money watching boring, drawn-out and overwhelming web design and web development courses that promise to make you a complete master of every possible discipline known to man?</p><p><br></p><p>Look no further! There\'s no better place to learn web design and become a skilled front-end developer than with The Ultimate Web Designer & Front-End Developer Course by Brad Hussey.</p><p><br></p><p>This course will teach you everything you need to know (and none of what you don\'t need to know).</p><p><br></p><p>With more than 80,000 happy students, this Udemy course is trusted by beginners and experts alike. Brad Hussey – an experienced web designer and front-end developer – will teach you everything from web design basics to creating beautiful user interfaces with HTML and CSS. You\'ll also learn how to develop dynamic websites with JavaScript, PHP, MySQL and more. And that\'s just the beginning!</p><p><br></p><p>You\'ll also learn about creating responsive websites and user interfaces that look great on any device by using popular frameworks like Bootstrap and Tailwind CSS.</p><p><br></p><p>By the end of this course, you\'ll have the skills and knowledge you need to start your own successful web design career, whether you want to land a job as a web designer or start taking on clients as a freelance web designer.</p><p><br></p><p>So if you\'re ready to become a web designer in 2022?</p><p><br></p><p>Join the course today!</p><p><br></p><p>- - -</p><p><br></p><p>What can you expect from this course?</p><p><br></p><p>You will go from knowing nothing to creating over 23 impressive designs, websites, and applications — all with step-by-step instruction from one of the most entertaining, engaging and passionate web design educators on the web today!</p><p><br></p><p>We\'ll start by learning Visual & Web Design, how to use Adobe Photoshop, and how to sketch professional wireframes. We\'ll then learn to code with HTML5, CSS3, Javascript and jQuery. At this point, you\'ll be able to code custom websites, animations and web applications by yourself.</p><p><br></p><p>Once we\'re cool with the front-end languages, we\'ll then melt our brain-bits with highly advanced skills like Responsive Websites, PHP, MySQL, WordPress and custom WordPress plugin development. You\'ll then have the ability to build responsive, dynamic websites and blogs, basic eCommerce sites and online stores, and have a professional understanding of all aspects of web design & development.</p><p><br></p><p>After you\'ve learned everything from Design to Development, you\'ll be taken through a hands-on career section fully-loaded with valuable tips, resources, and real-world guidance to help you start your career — whether you want to work-from-home as a freelancer or secure a full-time studio gig at a design agency.</p>'
    ), (
        4,
        3,
        'en',
        'Solar Energy Design Course From Zero To Hero',
        'Learn How To Design And Install Solar Energy Systems With Step By Step Examples Without Previous Knowledge',
        '<p>The only course out there with everything you need to know about solar energy from A to Z</p><p><br></p><p>Throughout the course you will learn:</p><p><br></p><p>The fundamentals of solar energy</p><p><br></p><p>Components and design of on-grid and off-grid solar systems</p><p><br></p><p>Types and selection of solar modules</p><p><br></p><p>Types of charge controllers and their selection techniques</p><p><br></p><p>Types and selection of different solar inverters</p><p><br></p><p>Selection of suitable tilt angle and shading effect in PV systems.</p><p><br></p><p>- Types and selection of batteries in solar energy systems.</p><p><br></p><p>- Design and components of the solar water pumping system</p><p><br></p><p>- Design of grounding or earthing system</p><p><br></p><p>- Design of single line diagram of the PV system using the Autocad</p><p><br></p><p>- Design on and off-grid PV systems using the PVSyst program.</p><p><br></p><p>- Design of protection of PV system</p><p><br></p><p><br></p><p><b>After Taking This Course, You Will Be Able To</b></p><p><br></p><p>Understand everything about solar energy systems such as construction and how to select components such as solar panels, charge controllers, inverters, batteries, and busbars.</p><p><br></p><p>Design different solar energy systems such as off-grid, on-grid, and solar water pumping systems.</p><p><br></p><p>You will learn how to design protection and earthing system for solar energy systems.</p><p><br></p><p>You would be able to apply for jobs in the solar energy field without fear of rejection as you have all the knowledge you need to work in the field.</p><p><br></p><p><br></p><p>If you\'ve been looking for ONE COURSE with in-depth insight into solar energy, take this course.</p>'
    );

-- --------------------------------------------------------

--

-- Table structure for table `bundle_webinars`

--

CREATE TABLE
    `bundle_webinars` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `bundle_id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED NOT NULL,
        `order` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `bundle_webinars`

--

INSERT INTO
    `bundle_webinars` (
        `id`,
        `creator_id`,
        `bundle_id`,
        `webinar_id`,
        `order`
    )
VALUES (1, 1015, 1, 1998, NULL), (2, 1015, 1, 2008, NULL), (3, 1015, 1, 1996, NULL), (4, 1015, 1, 2009, NULL), (5, 934, 2, 1997, NULL), (6, 934, 2, 2005, NULL), (7, 929, 3, 2004, NULL), (8, 929, 3, 1999, NULL);

-- --------------------------------------------------------

--

-- Table structure for table `cart`

--

CREATE TABLE
    `cart` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED DEFAULT NULL,
        `bundle_id` int(10) UNSIGNED DEFAULT NULL,
        `product_order_id` int(10) UNSIGNED DEFAULT NULL,
        `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
        `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
        `promotion_id` int(10) UNSIGNED DEFAULT NULL,
        `ticket_id` int(10) UNSIGNED DEFAULT NULL,
        `special_offer_id` int(10) UNSIGNED DEFAULT NULL,
        `product_discount_id` int(10) UNSIGNED DEFAULT NULL,
        `created_at` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `cart`

--

INSERT INTO
    `cart` (
        `id`,
        `creator_id`,
        `webinar_id`,
        `bundle_id`,
        `product_order_id`,
        `reserve_meeting_id`,
        `subscribe_id`,
        `promotion_id`,
        `ticket_id`,
        `special_offer_id`,
        `product_discount_id`,
        `created_at`
    )
VALUES (
        94,
        1015,
        2001,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        13,
        NULL,
        1626284814
    );

-- --------------------------------------------------------

--

-- Table structure for table `categories`

--

CREATE TABLE
    `categories` (
        `id` int(10) UNSIGNED NOT NULL,
        `parent_id` int(11) DEFAULT NULL,
        `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `order` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `categories`

--

INSERT INTO
    `categories` (
        `id`,
        `parent_id`,
        `icon`,
        `order`
    )
VALUES (
        520,
        NULL,
        '/store/1/default_images/categories_icons/feather.png',
        NULL
    ), (
        522,
        NULL,
        '/store/1/default_images/categories_icons/briefcase.png',
        NULL
    ), (
        523,
        NULL,
        '/store/1/default_images/categories_icons/heart.png',
        NULL
    ), (
        524,
        NULL,
        '/store/1/default_images/categories_icons/umbrella.png',
        NULL
    ), (
        525,
        NULL,
        '/store/1/default_images/categories_icons/pie-chart.png',
        NULL
    ), (
        526,
        NULL,
        '/store/1/default_images/categories_icons/anchor.png',
        NULL
    ), (
        528,
        NULL,
        '/store/1/default_images/categories_icons/code.png',
        NULL
    ), (
        601,
        522,
        '/store/1/default_images/categories_icons/sub_categories/divide-square.png',
        1
    ), (
        602,
        522,
        '/store/1/default_images/categories_icons/sub_categories/zap.png',
        2
    ), (
        603,
        522,
        '/store/1/default_images/categories_icons/sub_categories/globe.png',
        3
    ), (
        604,
        524,
        '/store/1/default_images/categories_icons/sub_categories/sun.png',
        1
    ), (
        605,
        524,
        '/store/1/default_images/categories_icons/sub_categories/droplet.png',
        2
    ), (
        606,
        528,
        '/store/1/default_images/categories_icons/sub_categories/layout.png',
        1
    ), (
        607,
        528,
        '/store/1/default_images/categories_icons/sub_categories/smartphone.png',
        2
    ), (
        608,
        528,
        '/store/1/default_images/categories_icons/sub_categories/codesandbox.png',
        3
    ), (
        609,
        526,
        '/store/1/default_images/categories_icons/sub_categories/users.png',
        1
    ), (
        610,
        526,
        '/store/1/default_images/categories_icons/sub_categories/share-2.png',
        2
    ), (
        611,
        526,
        '/store/1/default_images/categories_icons/sub_categories/target.png',
        3
    );

-- --------------------------------------------------------

--

-- Table structure for table `category_translations`

--

CREATE TABLE
    `category_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `category_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `category_translations`

--

INSERT INTO
    `category_translations` (
        `id`,
        `category_id`,
        `locale`,
        `title`
    )
VALUES (1, 520, 'en', 'Design'), (2, 522, 'en', 'Academics'), (
        3,
        523,
        'en',
        'Health & Fitness'
    ), (4, 524, 'en', 'Lifestyle'), (5, 525, 'en', 'Marketing'), (6, 526, 'en', 'Business'), (7, 528, 'en', 'Development'), (8, 601, 'en', 'Math'), (9, 602, 'en', 'Science'), (10, 603, 'en', 'Language'), (11, 604, 'en', 'Lifestyle'), (
        12,
        605,
        'en',
        'Beauty & Makeup'
    ), (
        13,
        606,
        'en',
        'Web Development'
    ), (
        14,
        607,
        'en',
        'Mobile Development'
    ), (
        15,
        608,
        'en',
        'Game Development'
    ), (16, 609, 'en', 'Management'), (17, 610, 'en', 'Communications'), (
        18,
        611,
        'en',
        'Business Strategy'
    ), (19, 528, 'ar', 'تطوير'), (20, 606, 'ar', 'تطوير الشبكة'), (21, 607, 'ar', 'تطوير المحمول'), (22, 608, 'ar', 'تطوير اللعبة'), (23, 526, 'ar', 'عمل'), (24, 609, 'ar', 'إدارة'), (25, 610, 'ar', 'مجال الاتصالات'), (
        26,
        611,
        'ar',
        'استراتيجية العمل'
    ), (27, 525, 'ar', 'تسويق'), (28, 524, 'ar', 'أسلوب الحياة'), (29, 604, 'ar', 'أسلوب الحياة'), (
        30,
        605,
        'ar',
        'الجمال والمكياج'
    ), (
        31,
        523,
        'ar',
        'الصحة واللياقة البدنية'
    ), (32, 522, 'ar', 'أكاديميون'), (33, 601, 'ar', 'رياضيات'), (34, 602, 'ar', 'علم'), (35, 603, 'ar', 'لغة'), (36, 520, 'ar', 'تصميم'), (37, 528, 'es', 'Desarrollo'), (38, 606, 'es', 'Desarrollo web'), (
        39,
        607,
        'es',
        'Desarrollo móvil'
    ), (
        40,
        608,
        'es',
        'Desarrollo de juegos'
    ), (41, 526, 'es', 'Negocio'), (42, 609, 'es', 'Gestión'), (43, 610, 'es', 'Comunicaciones'), (
        44,
        611,
        'es',
        'Estrategia de negocios'
    ), (45, 525, 'es', 'Márketing'), (46, 524, 'es', 'Estilo de vida'), (47, 604, 'es', 'Estilo de vida'), (
        48,
        605,
        'es',
        'Belleza y maquillaje'
    ), (
        49,
        523,
        'es',
        'salud y estado fisico'
    ), (50, 522, 'es', 'Académica'), (51, 601, 'es', 'Matemáticas'), (52, 602, 'es', 'Ciencias'), (53, 603, 'es', 'Idioma'), (54, 520, 'es', 'Diseño');

-- --------------------------------------------------------

--

-- Table structure for table `certificates`

--

CREATE TABLE
    `certificates` (
        `id` int(10) UNSIGNED NOT NULL,
        `quiz_id` int(10) UNSIGNED DEFAULT NULL,
        `quiz_result_id` int(10) UNSIGNED DEFAULT NULL,
        `student_id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED DEFAULT NULL,
        `user_grade` int(10) UNSIGNED DEFAULT NULL,
        `type` enum('quiz', 'course') COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `certificates`

--

INSERT INTO
    `certificates` (
        `id`,
        `quiz_id`,
        `quiz_result_id`,
        `student_id`,
        `webinar_id`,
        `user_grade`,
        `type`,
        `created_at`
    )
VALUES (
        3,
        28,
        28,
        995,
        NULL,
        80,
        'quiz',
        1626248277
    ), (
        4,
        33,
        29,
        996,
        NULL,
        80,
        'quiz',
        1626239046
    ), (
        5,
        34,
        30,
        979,
        NULL,
        90,
        'quiz',
        1656130276
    ), (
        6,
        NULL,
        NULL,
        995,
        2007,
        NULL,
        'course',
        1656664858
    );

-- --------------------------------------------------------

--

-- Table structure for table `certificates_templates`

--

CREATE TABLE
    `certificates_templates` (
        `id` int(10) UNSIGNED NOT NULL,
        `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `type` enum('quiz', 'course') COLLATE utf8mb4_unicode_ci NOT NULL,
        `position_x` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
        `position_y` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
        `font_size` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
        `text_color` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
        `status` enum('draft', 'publish') COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(11) NOT NULL,
        `updated_at` int(11) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `certificates_templates`

--

INSERT INTO
    `certificates_templates` (
        `id`,
        `image`,
        `type`,
        `position_x`,
        `position_y`,
        `font_size`,
        `text_color`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        '/store/1/default_images/certificate.jpg',
        'quiz',
        '300',
        '400',
        '32',
        '#314963',
        'publish',
        1608663541,
        1656581793
    ), (
        2,
        '/store/1/default_images/certificate.jpg',
        'course',
        '200',
        '400',
        '28',
        '#314963',
        'publish',
        1656581772,
        1656664628
    );

-- --------------------------------------------------------

--

-- Table structure for table `certificate_template_translations`

--

CREATE TABLE
    `certificate_template_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `certificate_template_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `body` longtext COLLATE utf8mb4_unicode_ci,
        `rtl` tinyint(4) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `certificate_template_translations`

--

INSERT INTO
    `certificate_template_translations` (
        `id`,
        `certificate_template_id`,
        `locale`,
        `title`,
        `body`,
        `rtl`
    )
VALUES (
        1,
        1,
        'en',
        'Quiz-depended Certificate Template',
        'This certificate awarded to [student] \r\nregarding passing the [course] with \r\nthe [grade] with success\r\nCertificate ID : [certificate_id]',
        0
    ), (
        2,
        1,
        'es',
        'Certificado',
        'Este certificado se otorgó a [student]\r\nen cuanto a aprobar el [course] con\r\nel [grade] con éxito\r\nID de certificado: [certificate_id]',
        NULL
    ), (
        3,
        2,
        'en',
        'Completion Certificate Template',
        'This certificate awarded to [student] \r\nregarding completing the course [course] with \r\nsuccess for [duration] minutes.\r\nCertificate ID : [certificate_id]',
        0
    );

-- --------------------------------------------------------

--

-- Table structure for table `comments`

--

CREATE TABLE
    `comments` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `review_id` int(10) UNSIGNED DEFAULT NULL,
        `webinar_id` int(10) UNSIGNED DEFAULT NULL,
        `bundle_id` int(10) UNSIGNED DEFAULT NULL,
        `blog_id` int(10) UNSIGNED DEFAULT NULL,
        `product_id` int(10) UNSIGNED DEFAULT NULL,
        `product_review_id` int(10) UNSIGNED DEFAULT NULL,
        `reply_id` int(10) UNSIGNED DEFAULT NULL,
        `comment` text COLLATE utf8mb4_unicode_ci,
        `status` enum('pending', 'active') COLLATE utf8mb4_unicode_ci NOT NULL,
        `report` tinyint(1) NOT NULL DEFAULT '0',
        `disabled` tinyint(1) NOT NULL DEFAULT '0',
        `created_at` int(11) NOT NULL,
        `viewed_at` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `comments`

--

INSERT INTO
    `comments` (
        `id`,
        `user_id`,
        `review_id`,
        `webinar_id`,
        `bundle_id`,
        `blog_id`,
        `product_id`,
        `product_review_id`,
        `reply_id`,
        `comment`,
        `status`,
        `report`,
        `disabled`,
        `created_at`,
        `viewed_at`
    )
VALUES (
        43,
        996,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Hi.\r\nWhat is the level of this course?',
        'active',
        0,
        0,
        1625863108,
        NULL
    ), (
        44,
        930,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'I have already taken another course with this teacher. His teaching method is excellent.',
        'active',
        0,
        0,
        1625863203,
        1625863611
    ), (
        45,
        979,
        NULL,
        1999,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Is it possible to participate in this course without participating in the prerequisite course?',
        'active',
        0,
        0,
        1625863345,
        NULL
    ), (
        47,
        1015,
        NULL,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        44,
        'Thanks a lot for your comment, Best regards.',
        'active',
        0,
        0,
        1625863726,
        1626235570
    ), (
        48,
        3,
        NULL,
        1997,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Will we be able to build applications at the end of this course?',
        'active',
        0,
        0,
        1625864259,
        1625864297
    ), (
        49,
        934,
        NULL,
        1997,
        NULL,
        NULL,
        NULL,
        NULL,
        48,
        'Hi.\r\nYes you can.',
        'active',
        0,
        0,
        1625864351,
        NULL
    ), (
        50,
        1016,
        NULL,
        2006,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Will this course be updated in the future?',
        'active',
        0,
        0,
        1625864416,
        NULL
    ), (
        51,
        995,
        NULL,
        2004,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Will we receive a certificate at the end of this course?',
        'active',
        0,
        0,
        1625864526,
        NULL
    ), (
        52,
        1015,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Perfect course, thank you.',
        'active',
        0,
        0,
        1626235679,
        NULL
    ), (
        53,
        995,
        NULL,
        1995,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Course files are not complete !!!',
        'active',
        0,
        0,
        1626240118,
        1626240169
    ), (
        54,
        1016,
        NULL,
        1995,
        NULL,
        NULL,
        NULL,
        NULL,
        53,
        'Please prove. The course files are complete and 90% of the students are satisfied.',
        'active',
        0,
        0,
        1626240342,
        1626241422
    ), (
        55,
        929,
        NULL,
        1995,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Is it possible to update the course ?',
        'active',
        0,
        0,
        1626241320,
        1626241422
    ), (
        56,
        929,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Hi.\r\nIs it possible to start the class earlier?',
        'active',
        0,
        0,
        1626241386,
        NULL
    ), (
        57,
        1016,
        NULL,
        1995,
        NULL,
        NULL,
        NULL,
        NULL,
        55,
        'No, but it may change in the future. Thank you',
        'active',
        0,
        0,
        1626241505,
        NULL
    ), (
        58,
        3,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        56,
        'Hi kate.\r\nNo, but it may change in the future. Thank you',
        'active',
        0,
        0,
        1626242070,
        NULL
    ), (
        63,
        996,
        NULL,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'As i already new a lot on this matter i was surprised that i actually find out that there are more ways to tweak your time management',
        'active',
        0,
        0,
        1626509327,
        NULL
    ), (
        64,
        1015,
        NULL,
        1995,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'Great course that gives you the basic knowledge needed to become a product manager.',
        'pending',
        0,
        0,
        1626509546,
        NULL
    ), (
        65,
        863,
        NULL,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        52,
        'We are very happy that you are satisfied with this course.',
        'pending',
        0,
        0,
        1626509913,
        NULL
    ), (
        66,
        1015,
        NULL,
        NULL,
        NULL,
        21,
        NULL,
        NULL,
        NULL,
        'Thank you for this excellent article.',
        'active',
        0,
        0,
        1646413650,
        NULL
    );

-- --------------------------------------------------------

--

-- Table structure for table `comments_reports`

--

CREATE TABLE
    `comments_reports` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `blog_id` int(10) UNSIGNED DEFAULT NULL,
        `product_id` int(10) UNSIGNED DEFAULT NULL,
        `webinar_id` int(10) UNSIGNED DEFAULT NULL,
        `comment_id` int(10) UNSIGNED NOT NULL,
        `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `comments_reports`

--

INSERT INTO
    `comments_reports` (
        `id`,
        `user_id`,
        `blog_id`,
        `product_id`,
        `webinar_id`,
        `comment_id`,
        `message`,
        `created_at`
    )
VALUES (
        5,
        1016,
        NULL,
        NULL,
        1995,
        53,
        'this is a spam comment.',
        1626240256
    );

-- --------------------------------------------------------

--

-- Table structure for table `contacts`

--

CREATE TABLE
    `contacts` (
        `id` int(10) UNSIGNED NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `reply` text COLLATE utf8mb4_unicode_ci,
        `status` enum('pending', 'replied') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- --------------------------------------------------------

--

-- Table structure for table `course_forums`

--

CREATE TABLE
    `course_forums` (
        `id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `attach` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `pin` tinyint(1) NOT NULL DEFAULT '0',
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `course_forums`

--

INSERT INTO
    `course_forums` (
        `id`,
        `webinar_id`,
        `user_id`,
        `title`,
        `description`,
        `attach`,
        `pin`,
        `created_at`
    )
VALUES (
        1,
        2010,
        995,
        'I need help !!!',
        'Hi,\r\nI need help to complete final part.\r\nI attached the error screenshot.\r\nRegards.',
        '/store/995/error.jpg',
        0,
        1655873238
    ), (
        2,
        2010,
        930,
        'How to export data ?!',
        'Hi,\r\nI want to export data, but I don\'t know how to do it\r\nPlease help me.\r\nThank you.',
        NULL,
        0,
        1655887586
    ), (
        3,
        2008,
        995,
        'How can i restore my backup?',
        'I lost all my previous data while updating. Fortunately, I had a backup. How do I restore my backup now?',
        NULL,
        0,
        1656103614
    );

-- --------------------------------------------------------

--

-- Table structure for table `course_forum_answers`

--

CREATE TABLE
    `course_forum_answers` (
        `id` int(10) UNSIGNED NOT NULL,
        `forum_id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `pin` tinyint(1) NOT NULL DEFAULT '0',
        `resolved` tinyint(1) NOT NULL DEFAULT '0',
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `course_forum_answers`

--

INSERT INTO
    `course_forum_answers` (
        `id`,
        `forum_id`,
        `user_id`,
        `description`,
        `pin`,
        `resolved`,
        `created_at`
    )
VALUES (
        1,
        1,
        929,
        'Hi,\r\nWould you please explain more?\r\nRegards.',
        0,
        0,
        1655875426
    ), (
        2,
        1,
        996,
        'I have the same problem too.',
        0,
        0,
        1655875682
    ), (
        4,
        1,
        995,
        'I get errors when we want to export data.',
        0,
        0,
        1655882242
    ), (
        5,
        1,
        929,
        'Please stop windows update services and recheck the mentioned problem.\r\nRegards.',
        0,
        1,
        1655882364
    ), (
        6,
        1,
        995,
        'Thank you.\r\nYour help solved my problem.\r\nRegards.',
        0,
        0,
        1655882416
    ), (
        7,
        2,
        929,
        'Hi,\r\nYou can use the MySQL application to export data.',
        0,
        0,
        1655887741
    ), (
        8,
        2,
        930,
        'Hi,\r\nWould you please share the download link?\r\nRegards.',
        0,
        0,
        1655970451
    ), (
        9,
        3,
        1015,
        'Hi,\r\nWhat is your backup file format?',
        0,
        0,
        1656103693
    ), (
        10,
        3,
        996,
        'I have the same problem.',
        0,
        0,
        1656103746
    );

-- --------------------------------------------------------

--

-- Table structure for table `course_learning`

--

CREATE TABLE
    `course_learning` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `text_lesson_id` int(10) UNSIGNED DEFAULT NULL,
        `file_id` int(10) UNSIGNED DEFAULT NULL,
        `session_id` int(10) UNSIGNED DEFAULT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `course_learning`

--

INSERT INTO
    `course_learning` (
        `id`,
        `user_id`,
        `text_lesson_id`,
        `file_id`,
        `session_id`,
        `created_at`
    )
VALUES (
        29,
        995,
        NULL,
        46,
        NULL,
        1626232964
    ), (
        30,
        995,
        NULL,
        47,
        NULL,
        1626232969
    ), (
        32,
        1015,
        NULL,
        34,
        NULL,
        1626235773
    ), (
        33,
        1015,
        NULL,
        31,
        NULL,
        1626235776
    ), (
        34,
        1015,
        NULL,
        32,
        NULL,
        1626235777
    ), (
        35,
        996,
        NULL,
        52,
        NULL,
        1626235816
    ), (
        36,
        996,
        NULL,
        53,
        NULL,
        1626235817
    ), (
        37,
        996,
        NULL,
        54,
        NULL,
        1626235821
    ), (
        41,
        996,
        NULL,
        35,
        NULL,
        1626235943
    ), (
        42,
        996,
        13,
        NULL,
        NULL,
        1626235945
    ), (
        43,
        996,
        NULL,
        31,
        NULL,
        1626235956
    ), (
        44,
        996,
        NULL,
        34,
        NULL,
        1626235958
    ), (
        45,
        996,
        NULL,
        32,
        NULL,
        1626235961
    ), (
        46,
        995,
        NULL,
        52,
        NULL,
        1626236011
    ), (
        47,
        995,
        NULL,
        49,
        NULL,
        1626236016
    ), (
        48,
        995,
        NULL,
        50,
        NULL,
        1626236018
    ), (
        49,
        995,
        NULL,
        51,
        NULL,
        1626236021
    ), (
        50,
        995,
        NULL,
        48,
        NULL,
        1626236042
    ), (
        51,
        995,
        NULL,
        37,
        NULL,
        1626236053
    ), (
        52,
        995,
        NULL,
        38,
        NULL,
        1626236054
    ), (
        53,
        995,
        NULL,
        39,
        NULL,
        1626236055
    ), (
        54,
        995,
        NULL,
        31,
        NULL,
        1626236077
    ), (
        55,
        995,
        NULL,
        32,
        NULL,
        1626236081
    ), (
        56,
        995,
        NULL,
        34,
        NULL,
        1626236083
    ), (
        57,
        995,
        NULL,
        60,
        NULL,
        1646174182
    ), (
        58,
        995,
        NULL,
        61,
        NULL,
        1646174192
    ), (
        59,
        995,
        NULL,
        63,
        NULL,
        1646174196
    ), (
        60,
        995,
        NULL,
        64,
        NULL,
        1646174198
    ), (
        61,
        995,
        NULL,
        65,
        NULL,
        1646174200
    ), (
        62,
        930,
        NULL,
        74,
        NULL,
        1655877111
    ), (
        63,
        995,
        NULL,
        62,
        NULL,
        1656664655
    ), (
        64,
        995,
        NULL,
        66,
        NULL,
        1656664665
    ), (
        65,
        995,
        NULL,
        67,
        NULL,
        1656664677
    ), (
        66,
        995,
        NULL,
        56,
        NULL,
        1656664695
    ), (
        67,
        995,
        NULL,
        57,
        NULL,
        1656664701
    ), (
        68,
        995,
        NULL,
        58,
        NULL,
        1656664843
    ), (
        69,
        995,
        NULL,
        59,
        NULL,
        1656664847
    ), (
        70,
        995,
        NULL,
        40,
        NULL,
        1656664900
    ), (
        71,
        995,
        NULL,
        42,
        NULL,
        1656664904
    ), (
        72,
        995,
        NULL,
        41,
        NULL,
        1656664908
    );

-- --------------------------------------------------------

--

-- Table structure for table `course_noticeboards`

--

CREATE TABLE
    `course_noticeboards` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED NOT NULL,
        `color` enum(
            'warning',
            'danger',
            'neutral',
            'info',
            'success'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `course_noticeboards`

--

INSERT INTO
    `course_noticeboards` (
        `id`,
        `creator_id`,
        `webinar_id`,
        `color`,
        `title`,
        `message`,
        `created_at`
    )
VALUES (
        1,
        1015,
        2008,
        'danger',
        'Important notice',
        '<p>Dear students. I will upload the new assignment for you soon. Please send the previous assignment by the end of the month.</p><p>The final quiz&nbsp;will be held at the end of next month. The exact date of the quiz will be announced.</p>',
        1656083692
    ), (
        2,
        1015,
        2008,
        'warning',
        'Quiz date changed',
        '<p>Hi, Dear students</p><p>The mid-term Quiz date changed.</p><p>We hope to you take mentioned quiz next week.</p><p>Regards.</p>',
        1656136473
    ), (
        3,
        1015,
        2008,
        'info',
        'Upload final chapter',
        '<p>Hi, Dear students.</p><p>We are going to upload the last chapter next month.</p><p>Regards.</p>',
        1656136763
    ), (
        4,
        1015,
        2008,
        'success',
        'Top Students',
        '<p>Hi, Dear students</p><p>We intend to appreciate the top students.</p><p>We will announce the list of top students.</p><p>Regards.</p><p><br></p>',
        1656136896
    ), (
        5,
        929,
        2010,
        'success',
        'Top Students',
        '<p>Hi, Dear students</p><p>We intend to appreciate the top students.</p><p>We will announce the list of top students.</p><p>Regards.</p>',
        1656137511
    ), (
        6,
        929,
        2010,
        'warning',
        'Quiz date changed',
        '<p>Hi, Dear students</p><p>The mid-term Quiz date changed.</p><p>We hope to you take mentioned quiz next week.</p><p>Regards.</p>',
        1656137557
    );

-- --------------------------------------------------------

--

-- Table structure for table `course_noticeboard_status`

--

CREATE TABLE
    `course_noticeboard_status` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `noticeboard_id` int(10) UNSIGNED NOT NULL,
        `seen_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `course_noticeboard_status`

--

INSERT INTO
    `course_noticeboard_status` (
        `id`,
        `user_id`,
        `noticeboard_id`,
        `seen_at`
    )
VALUES (1, 995, 1, 1656103105), (2, 996, 1, 1656103714), (3, 995, 5, 1656142535), (4, 995, 6, 1656142535), (5, 996, 5, 1656219599), (6, 996, 6, 1656219599), (7, 995, 2, 1656406722), (8, 995, 3, 1656406722), (9, 995, 4, 1656406722), (10, 996, 2, 1656407301), (11, 996, 3, 1656407301), (12, 996, 4, 1656407301);

-- --------------------------------------------------------

--

-- Table structure for table `delete_account_requests`

--

CREATE TABLE
    `delete_account_requests` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `delete_account_requests`

--

INSERT INTO
    `delete_account_requests` (`id`, `user_id`, `created_at`)
VALUES (1, 864, 1656194622);

-- --------------------------------------------------------

--

-- Table structure for table `discounts`

--

CREATE TABLE
    `discounts` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `discount_type` enum('percentage', 'fixed_amount') COLLATE utf8mb4_unicode_ci NOT NULL,
        `source` enum(
            'all',
            'course',
            'category',
            'meeting',
            'product'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `percent` int(10) UNSIGNED DEFAULT NULL,
        `amount` int(10) UNSIGNED DEFAULT NULL,
        `max_amount` int(10) UNSIGNED DEFAULT NULL,
        `minimum_order` int(10) UNSIGNED DEFAULT NULL,
        `count` int(11) NOT NULL DEFAULT '1',
        `user_type` enum('all_users', 'special_users') COLLATE utf8mb4_unicode_ci NOT NULL,
        `product_type` enum('all', 'physical', 'virtual') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `for_first_purchase` tinyint(1) NOT NULL DEFAULT '0',
        `status` enum('active', 'disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
        `expired_at` int(10) UNSIGNED NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `discounts`

--

INSERT INTO
    `discounts` (
        `id`,
        `creator_id`,
        `title`,
        `discount_type`,
        `source`,
        `code`,
        `percent`,
        `amount`,
        `max_amount`,
        `minimum_order`,
        `count`,
        `user_type`,
        `product_type`,
        `for_first_purchase`,
        `status`,
        `expired_at`,
        `created_at`
    )
VALUES (
        7,
        1,
        'Black Friday',
        'percentage',
        'all',
        'BLK2021',
        20,
        10,
        NULL,
        NULL,
        20,
        'all_users',
        NULL,
        0,
        'active',
        1639427340,
        1626132792
    ), (
        8,
        1,
        'Store Physical Products Coupon',
        'percentage',
        'product',
        'SPGH22',
        10,
        NULL,
        NULL,
        NULL,
        5,
        'all_users',
        'physical',
        0,
        'active',
        1678494600,
        1656320198
    ), (
        9,
        1,
        'Store Virtual Products Coupon',
        'percentage',
        'product',
        'VKRYT22',
        20,
        NULL,
        NULL,
        NULL,
        10,
        'all_users',
        'virtual',
        0,
        'active',
        1680357600,
        1656320568
    ), (
        10,
        1,
        'Categories Coupon',
        'percentage',
        'category',
        'GJKTPW',
        10,
        NULL,
        10,
        NULL,
        1,
        'all_users',
        'all',
        0,
        'active',
        1702684800,
        1656320749
    );

-- --------------------------------------------------------

--

-- Table structure for table `discount_categories`

--

CREATE TABLE
    `discount_categories` (
        `id` int(10) UNSIGNED NOT NULL,
        `discount_id` int(10) UNSIGNED NOT NULL,
        `category_id` int(10) UNSIGNED NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `discount_categories`

--

INSERT INTO
    `discount_categories` (
        `id`,
        `discount_id`,
        `category_id`,
        `created_at`
    )
VALUES (4, 10, 520, 1656395856), (5, 10, 608, 1656395856), (6, 10, 606, 1656395856);

-- --------------------------------------------------------

--

-- Table structure for table `discount_courses`

--

CREATE TABLE
    `discount_courses` (
        `id` int(10) UNSIGNED NOT NULL,
        `discount_id` int(10) UNSIGNED NOT NULL,
        `course_id` int(10) UNSIGNED NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Table structure for table `discount_groups`

--

CREATE TABLE
    `discount_groups` (
        `id` int(10) UNSIGNED NOT NULL,
        `discount_id` int(10) UNSIGNED NOT NULL,
        `group_id` int(10) UNSIGNED NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Table structure for table `discount_users`

--

CREATE TABLE
    `discount_users` (
        `id` int(10) UNSIGNED NOT NULL,
        `discount_id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- --------------------------------------------------------

--

-- Table structure for table `faqs`

--

CREATE TABLE
    `faqs` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED DEFAULT NULL,
        `bundle_id` int(10) UNSIGNED DEFAULT NULL,
        `order` int(10) UNSIGNED DEFAULT NULL,
        `created_at` int(10) UNSIGNED DEFAULT NULL,
        `updated_at` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `faqs`

--

INSERT INTO
    `faqs` (
        `id`,
        `creator_id`,
        `webinar_id`,
        `bundle_id`,
        `order`,
        `created_at`,
        `updated_at`
    )
VALUES (
        13,
        1016,
        1995,
        NULL,
        NULL,
        1624908798,
        NULL
    ), (
        14,
        1016,
        1995,
        NULL,
        NULL,
        1624908812,
        NULL
    ), (
        15,
        1016,
        1995,
        NULL,
        NULL,
        1624908829,
        NULL
    ), (
        16,
        1016,
        1995,
        NULL,
        NULL,
        1624908852,
        NULL
    ), (
        17,
        1016,
        1995,
        NULL,
        NULL,
        1624908868,
        NULL
    ), (
        18,
        1015,
        1996,
        NULL,
        NULL,
        1624945244,
        NULL
    ), (
        19,
        1015,
        1996,
        NULL,
        NULL,
        1624945306,
        NULL
    ), (
        20,
        1015,
        1996,
        NULL,
        NULL,
        1624945328,
        NULL
    ), (
        21,
        934,
        1997,
        NULL,
        NULL,
        1624956994,
        NULL
    ), (
        22,
        934,
        1997,
        NULL,
        NULL,
        1624957014,
        NULL
    ), (
        23,
        929,
        1999,
        NULL,
        NULL,
        1625039334,
        NULL
    ), (
        24,
        929,
        1999,
        NULL,
        NULL,
        1625039363,
        NULL
    ), (
        25,
        929,
        1999,
        NULL,
        NULL,
        1625039377,
        NULL
    ), (
        26,
        867,
        2000,
        NULL,
        NULL,
        1625046069,
        NULL
    ), (
        27,
        867,
        2000,
        NULL,
        NULL,
        1625046102,
        NULL
    ), (
        28,
        3,
        2001,
        NULL,
        NULL,
        1625079104,
        NULL
    ), (
        29,
        864,
        2003,
        NULL,
        NULL,
        1625300294,
        NULL
    ), (
        30,
        864,
        2003,
        NULL,
        NULL,
        1625300305,
        NULL
    ), (
        31,
        864,
        2003,
        NULL,
        NULL,
        1625300320,
        NULL
    ), (
        32,
        4,
        2005,
        NULL,
        NULL,
        1625691029,
        NULL
    ), (
        33,
        4,
        2005,
        NULL,
        NULL,
        1625691056,
        NULL
    ), (
        34,
        4,
        2005,
        NULL,
        NULL,
        1625691083,
        NULL
    ), (
        35,
        867,
        2006,
        NULL,
        NULL,
        1625694463,
        NULL
    ), (
        36,
        867,
        2006,
        NULL,
        NULL,
        1625694481,
        NULL
    ), (
        37,
        1015,
        1998,
        NULL,
        NULL,
        1626109158,
        NULL
    ), (
        38,
        1015,
        1998,
        NULL,
        NULL,
        1626109178,
        NULL
    ), (
        39,
        1015,
        1998,
        NULL,
        NULL,
        1626109196,
        NULL
    ), (
        40,
        867,
        2007,
        NULL,
        NULL,
        1626234581,
        NULL
    ), (
        41,
        867,
        2007,
        NULL,
        NULL,
        1626234619,
        NULL
    ), (
        42,
        867,
        2007,
        NULL,
        NULL,
        1626234666,
        NULL
    ), (
        43,
        1015,
        2009,
        NULL,
        NULL,
        1646172991,
        NULL
    ), (
        44,
        1015,
        2009,
        NULL,
        NULL,
        1646173018,
        NULL
    ), (
        45,
        1015,
        2009,
        NULL,
        NULL,
        1646173035,
        NULL
    ), (
        46,
        1015,
        2008,
        NULL,
        NULL,
        1646173113,
        NULL
    ), (
        47,
        1015,
        2008,
        NULL,
        NULL,
        1646173127,
        NULL
    ), (
        48,
        1015,
        2008,
        NULL,
        NULL,
        1646173143,
        NULL
    ), (
        49,
        929,
        2010,
        NULL,
        NULL,
        1655801621,
        NULL
    ), (
        50,
        929,
        2010,
        NULL,
        NULL,
        1655801642,
        NULL
    ), (
        51,
        929,
        2010,
        NULL,
        NULL,
        1655803063,
        NULL
    ), (
        52,
        1015,
        NULL,
        1,
        NULL,
        1656082919,
        NULL
    ), (
        53,
        1015,
        NULL,
        1,
        NULL,
        1656082949,
        NULL
    );

-- --------------------------------------------------------

--

-- Table structure for table `faq_translations`

--

CREATE TABLE
    `faq_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `faq_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `answer` text COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `faq_translations`

--

INSERT INTO
    `faq_translations` (
        `id`,
        `faq_id`,
        `locale`,
        `title`,
        `answer`
    )
VALUES (
        1,
        13,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        2,
        14,
        'en',
        'How can I get course updates?',
        'You will receive a notification after each update is released so you can download updated files from the course page.'
    ), (
        3,
        15,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        4,
        16,
        'en',
        'How can I download exercise files?',
        'All of the exercise files could be downloaded from the content tab on the course page.'
    ), (
        5,
        17,
        'en',
        'Can I have a private meeting with the instructor?',
        'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'
    ), (
        6,
        18,
        'en',
        'What is the course level??',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        7,
        19,
        'en',
        'How can I get course updates?',
        'You will receive a notification after each update is released so you can download updated files from the course page.'
    ), (
        8,
        20,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        9,
        21,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        10,
        22,
        'en',
        'How can I get course updates?',
        'You will receive a notification after each update is released so you can download updated files from the course page.'
    ), (
        11,
        23,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        12,
        24,
        'en',
        'How can I download exercise files?',
        'All of the exercise files could be downloaded from the content tab on the course page.'
    ), (
        13,
        25,
        'en',
        'Can I have a private meeting with the instructor?',
        'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'
    ), (
        14,
        26,
        'en',
        'How can I get course updates?',
        'You will receive a notification after each update is released so you can download updated files from the course page.'
    ), (
        15,
        27,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        16,
        28,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        17,
        29,
        'en',
        'How can I get course updates?',
        'You will receive a notification after each update is released so you can download updated files from the course page.'
    ), (
        18,
        30,
        'en',
        'Can I have a private meeting with the instructor?',
        'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'
    ), (
        19,
        31,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        20,
        32,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        21,
        33,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        22,
        34,
        'en',
        'Can I have a private meeting with the instructor?',
        'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'
    ), (
        23,
        35,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        24,
        36,
        'en',
        'Can I have a private meeting with the instructor?',
        'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'
    ), (
        25,
        37,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        26,
        38,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        27,
        39,
        'en',
        'Can I have a private meeting with the instructor?',
        'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'
    ), (
        28,
        40,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        29,
        41,
        'en',
        'How can I get course updates?',
        'You will receive a notification after each update is released so you can download updated files from the course page.'
    ), (
        30,
        42,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        31,
        43,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        32,
        44,
        'en',
        'How can I get course updates?',
        'You will receive a notification after each update is released so you can download updated files from the course page.'
    ), (
        33,
        45,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        34,
        46,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        35,
        47,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        36,
        48,
        'en',
        'Can I have a private meeting with the instructor?',
        'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'
    ), (
        37,
        49,
        'en',
        'What is the course level?',
        'This is a course for beginners so you will get familiar with the topic from scratch.'
    ), (
        38,
        50,
        'en',
        'How can I get course updates?',
        'You will receive a notification after each update is released so you can download updated files from the course page.'
    ), (
        39,
        51,
        'en',
        'Is it a supported course?',
        'Yes, you can get in touch with the instructor using the support system.'
    ), (
        40,
        52,
        'en',
        'How can I get course updates?',
        'You will receive a notification after each update is released so you can download updated files from the course page.'
    ), (
        41,
        53,
        'en',
        'How can I download exercise files?',
        'All of the exercise files could be downloaded from the content tab on the course page.'
    );

-- --------------------------------------------------------

--

-- Table structure for table `favorites`

--

CREATE TABLE
    `favorites` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED DEFAULT NULL,
        `bundle_id` int(10) UNSIGNED DEFAULT NULL,
        `created_at` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- --------------------------------------------------------

--

-- Table structure for table `feature_webinars`

--

CREATE TABLE
    `feature_webinars` (
        `id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED NOT NULL,
        `page` enum(
            'categories',
            'home',
            'home_categories'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `status` enum('publish', 'pending') COLLATE utf8mb4_unicode_ci NOT NULL,
        `updated_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `feature_webinars`

--

INSERT INTO
    `feature_webinars` (
        `id`,
        `webinar_id`,
        `page`,
        `status`,
        `updated_at`
    )
VALUES (
        26,
        1998,
        'home',
        'publish',
        1635438083
    ), (
        28,
        2008,
        'home',
        'publish',
        1646493590
    );

-- --------------------------------------------------------

--

-- Table structure for table `feature_webinar_translations`

--

CREATE TABLE
    `feature_webinar_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `feature_webinar_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `description` text COLLATE utf8mb4_unicode_ci
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `feature_webinar_translations`

--

INSERT INTO
    `feature_webinar_translations` (
        `id`,
        `feature_webinar_id`,
        `locale`,
        `description`
    )
VALUES (
        1,
        26,
        'en',
        'Microsoft Excel is a spreadsheet developed by Microsoft for Windows, macOS, Android and iOS. It features calculation, graphing tools, pivot tables, and a macro programming language called Visual Basic for Applications (VBA).'
    ), (
        2,
        28,
        'en',
        'Learn step-by-step tips that help you get things done with your virtual team by increasing trust and accountability.If you manage a virtual team today, then you\'ll probably continue to do so for the rest of your career.'
    ), (
        3,
        28,
        'es',
        'Aprenda consejos paso a paso que lo ayudarán a hacer las cosas con su equipo virtual al aumentar la confianza y la responsabilidad. Si administra un equipo virtual hoy, probablemente continuará haciéndolo durante el resto de su carrera.'
    ), (
        4,
        28,
        'ar',
        'تعلم نصائح خطوة بخطوة تساعدك على إنجاز المهام مع فريقك الافتراضي من خلال زيادة الثقة والمساءلة ، إذا كنت تدير فريقًا افتراضيًا اليوم ، فمن المحتمل أن تستمر في القيام بذلك لبقية حياتك المهنية.'
    ), (
        5,
        26,
        'ar',
        'Microsoft Excel هو جدول بيانات تم تطويره بواسطة Microsoft لأنظمة Windows و macOS و Android و iOS. يتميز بأدوات الحساب والرسوم البيانية والجداول المحورية ولغة برمجة ماكرو تسمى Visual Basic for Applications (VBA).'
    ), (
        6,
        26,
        'es',
        'Microsoft Excel es una hoja de cálculo desarrollada por Microsoft para Windows, macOS, Android e iOS. Cuenta con cálculo, herramientas gráficas, tablas dinámicas y un lenguaje de programación de macros llamado Visual Basic para Aplicaciones (VBA).'
    );

-- --------------------------------------------------------

--

-- Table structure for table `files`

--

CREATE TABLE
    `files` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED NOT NULL,
        `chapter_id` int(10) UNSIGNED DEFAULT NULL,
        `accessibility` enum('free', 'paid') COLLATE utf8mb4_unicode_ci NOT NULL,
        `downloadable` tinyint(1) DEFAULT '0',
        `storage` enum(
            'upload',
            'youtube',
            'vimeo',
            'external_link',
            'google_drive',
            'dropbox',
            'iframe',
            's3',
            'upload_archive'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `volume` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `file_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `interactive_type` enum(
            'adobe_captivate',
            'i_spring',
            'custom'
        ) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `interactive_file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `interactive_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `check_previous_parts` tinyint(1) NOT NULL DEFAULT '0',
        `access_after_day` int(10) UNSIGNED DEFAULT NULL,
        `online_viewer` tinyint(1) NOT NULL DEFAULT '0',
        `order` int(10) UNSIGNED DEFAULT NULL,
        `status` enum('active', 'inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
        `created_at` int(11) NOT NULL,
        `updated_at` int(11) DEFAULT NULL,
        `deleted_at` int(11) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `files`

--

INSERT INTO
    `files` (
        `id`,
        `creator_id`,
        `webinar_id`,
        `chapter_id`,
        `accessibility`,
        `downloadable`,
        `storage`,
        `file`,
        `volume`,
        `file_type`,
        `interactive_type`,
        `interactive_file_name`,
        `interactive_file_path`,
        `check_previous_parts`,
        `access_after_day`,
        `online_viewer`,
        `order`,
        `status`,
        `created_at`,
        `updated_at`,
        `deleted_at`
    )
VALUES (
        31,
        1016,
        1995,
        4,
        'free',
        0,
        'youtube',
        'https://youtu.be/pCmh6XaMVxs',
        '136.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        2,
        'active',
        1624869878,
        1635416216,
        NULL
    ), (
        32,
        1016,
        1995,
        4,
        'free',
        0,
        'youtube',
        'https://youtu.be/yUOC-Y0f5ZQ',
        '46.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        3,
        'active',
        1624870086,
        1635416357,
        NULL
    ), (
        33,
        1016,
        1995,
        11,
        'free',
        0,
        'vimeo',
        'https://vimeo.com/354744129',
        '280.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        4,
        'active',
        1624871143,
        1635416520,
        NULL
    ), (
        34,
        1016,
        1995,
        4,
        'free',
        0,
        'upload',
        '/store/1016/Become A Product Manager.mp4',
        '5.82 MB',
        'mp4',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        1,
        'active',
        1624942577,
        1635410854,
        NULL
    ), (
        35,
        934,
        1997,
        24,
        'free',
        1,
        'upload',
        '/store/934/Python for Beginners.mp4',
        '7.09 MB',
        'mp4',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1624956937,
        1635417846,
        NULL
    ), (
        36,
        1015,
        1998,
        20,
        'free',
        0,
        'upload',
        '/store/1015/Microsoft Excel - Excel from Beginner to Advanced.mkv',
        '4.10 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1624966718,
        1635417493,
        NULL
    ), (
        37,
        929,
        1999,
        9,
        'free',
        1,
        'upload',
        '/store/929/How To Manage & Influence Your Virtual Team.mkv',
        '10.58 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625038371,
        1635412743,
        NULL
    ), (
        38,
        929,
        1999,
        9,
        'paid',
        1,
        'upload',
        '/store/929/How To Manage & Influence Your Virtual Team.mkv',
        '10.58 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625038447,
        1635414077,
        NULL
    ), (
        39,
        929,
        1999,
        10,
        'paid',
        1,
        'upload',
        '/store/929/How To Manage & Influence Your Virtual Team.mkv',
        '10.58 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625038633,
        1635414206,
        NULL
    ), (
        40,
        929,
        1999,
        10,
        'paid',
        1,
        'upload',
        '/store/929/How To Manage & Influence Your Virtual Team.mkv',
        '10.58 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625039003,
        1635415977,
        NULL
    ), (
        41,
        929,
        1999,
        10,
        'paid',
        1,
        'upload',
        '/store/929/How To Manage & Influence Your Virtual Team.mkv',
        '10.58 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625039096,
        1635416001,
        NULL
    ), (
        42,
        929,
        1999,
        10,
        'paid',
        1,
        'upload',
        '/store/929/How To Manage & Influence Your Virtual Team.mkv',
        '10.58 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625039180,
        1635416049,
        NULL
    ), (
        43,
        867,
        2000,
        18,
        'free',
        1,
        'upload',
        '/store/867/Effective Time Management.mkv',
        '1.59 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625045148,
        1635417295,
        NULL
    ), (
        44,
        863,
        2002,
        14,
        'free',
        0,
        'upload',
        '/store/863/Why Your Fitness Matters.mp4',
        '4.72 MB',
        'mp4',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625123527,
        1635416995,
        NULL
    ), (
        45,
        864,
        2003,
        12,
        'free',
        1,
        'upload',
        '/store/864/Active Listening- You Can Be a Great Listener.mkv',
        '3.78 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625300200,
        1635416686,
        NULL
    ), (
        46,
        929,
        2004,
        8,
        'paid',
        1,
        'upload',
        '/store/929/The Future of Energy.mkv',
        '15.00 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625685492,
        1635412637,
        NULL
    ), (
        47,
        929,
        2004,
        8,
        'paid',
        1,
        'upload',
        '/store/929/The Future of Energy.mkv',
        '15.00 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625685578,
        1635412643,
        NULL
    ), (
        48,
        929,
        2004,
        8,
        'paid',
        1,
        'upload',
        '/store/929/The Future of Energy.mkv',
        '15.00 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625685691,
        1635412656,
        NULL
    ), (
        49,
        4,
        2005,
        7,
        'free',
        0,
        'youtube',
        'https://youtu.be/z-xkbNLIB5w',
        '52.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625690308,
        1635412526,
        NULL
    ), (
        50,
        4,
        2005,
        7,
        'paid',
        0,
        'youtube',
        'https://youtu.be/jx5jmI0UlXU',
        '75.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625690699,
        1635412541,
        NULL
    ), (
        51,
        4,
        2005,
        7,
        'paid',
        0,
        'youtube',
        'https://youtu.be/IyYC-hSFEFQ',
        '168.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625690835,
        1635412551,
        NULL
    ), (
        52,
        867,
        2006,
        5,
        'free',
        1,
        'upload',
        '/store/867/How to Travel Around the World on a Budget.mkv',
        '13.10 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625694176,
        1635412034,
        NULL
    ), (
        53,
        867,
        2006,
        5,
        'paid',
        1,
        'upload',
        '/store/867/How to Travel Around the World on a Budget.mkv',
        '13.10 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625694214,
        1635412043,
        NULL
    ), (
        54,
        867,
        2006,
        6,
        'paid',
        1,
        'upload',
        '/store/867/How to Travel Around the World on a Budget.mkv',
        '13.10 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625694330,
        1635412081,
        NULL
    ), (
        55,
        867,
        2006,
        6,
        'paid',
        1,
        'upload',
        '/store/867/How to Travel Around the World on a Budget.mkv',
        '13.10 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1625694401,
        1635412090,
        NULL
    ), (
        56,
        867,
        2007,
        2,
        'free',
        0,
        'upload',
        '/store/1/123.mp4',
        '7.66 MB',
        'mp4',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1626234339,
        1635408940,
        NULL
    ), (
        57,
        867,
        2007,
        2,
        'free',
        1,
        'upload',
        '/store/867/Travel Management Course.mkv',
        '13.48 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1626234398,
        1635407853,
        NULL
    ), (
        58,
        867,
        2007,
        3,
        'free',
        1,
        'upload',
        '/store/867/Travel Management Course.mkv',
        '13.48 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1626234448,
        1635408073,
        NULL
    ), (
        59,
        867,
        2007,
        3,
        'free',
        1,
        'upload',
        '/store/867/Travel Management Course.mkv',
        '13.48 MB',
        'mkv',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1626234512,
        1635408084,
        NULL
    ), (
        60,
        1015,
        2008,
        28,
        'paid',
        0,
        'upload_archive',
        '/store/1015/scorm/ispring.zip',
        '4.76 MB',
        'archive',
        'i_spring',
        NULL,
        '/store/1015/ispring/story.html',
        0,
        NULL,
        0,
        NULL,
        'active',
        1646119189,
        1646120896,
        NULL
    ), (
        61,
        1015,
        2008,
        28,
        'paid',
        0,
        'upload_archive',
        '/store/1015/scorm/captivate.zip',
        '5.11 MB',
        'archive',
        'adobe_captivate',
        NULL,
        '/store/1015/captivate/index.html',
        0,
        NULL,
        0,
        NULL,
        'active',
        1646119460,
        1646120931,
        NULL
    ), (
        62,
        1015,
        2008,
        28,
        'paid',
        0,
        'upload_archive',
        '/store/1015/scorm/custom.zip',
        '4.75 MB',
        'archive',
        'custom',
        'next.html',
        '/store/1015/custom/next.html',
        0,
        NULL,
        0,
        NULL,
        'active',
        1646119651,
        NULL,
        NULL
    ), (
        63,
        1015,
        2008,
        29,
        'paid',
        0,
        'upload',
        '/store/1015/Learn Linux In 5 Days.mp4',
        '3.95 MB',
        'mp4',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        1,
        'active',
        1646120871,
        1646124268,
        NULL
    ), (
        64,
        1015,
        2008,
        29,
        'paid',
        0,
        'youtube',
        'https://youtu.be/6Vo2v7WCyTs',
        '0 bytes',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        2,
        'active',
        1646124099,
        1646124279,
        NULL
    ), (
        65,
        1015,
        2008,
        29,
        'paid',
        0,
        'vimeo',
        'https://vimeo.com/187511962',
        '0 bytes',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        3,
        'active',
        1646124765,
        NULL,
        NULL
    ), (
        66,
        1015,
        2008,
        29,
        'paid',
        1,
        'external_link',
        'https://drive.google.com/file/d/18CDM0xG2KdOP6YvvTKEvPvtsb4XfQQF3/view',
        '19.00 MB',
        'archive',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        6,
        'active',
        1646124966,
        NULL,
        NULL
    ), (
        67,
        1015,
        2008,
        29,
        'paid',
        0,
        'google_drive',
        '<iframe src=\"https://drive.google.com/file/d/1pu1TgfcTFJeRU6Venxa46i_pStM4GCwH/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>',
        '14.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        8,
        'active',
        1646125437,
        1646128112,
        NULL
    ), (
        68,
        1015,
        2008,
        29,
        'paid',
        0,
        'google_drive',
        '<iframe src=\"https://drive.google.com/file/d/1BdiQQp3-7SPRdmuqeN8cdkO75U4wbU9i/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>',
        '2.00 MB',
        'powerpoint',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        10,
        'active',
        1646126002,
        1646128083,
        NULL
    ), (
        69,
        1015,
        2008,
        29,
        'paid',
        0,
        'google_drive',
        '<iframe src=\"https://drive.google.com/file/d/1KuEkNBCvXxFiWU5U2_Be4LlYLTg4VFq7/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>',
        '2.00 MB',
        'pdf',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        11,
        'active',
        1646126305,
        1646128068,
        NULL
    ), (
        70,
        1015,
        2008,
        29,
        'paid',
        1,
        'external_link',
        'https://uploads.rocket-soft.org/lms/Rocket_LMS_App.apk',
        '19.00 MB',
        'project',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        7,
        'active',
        1646126442,
        1646128137,
        NULL
    ), (
        71,
        1015,
        2008,
        29,
        'paid',
        0,
        'iframe',
        '<div style=\"position:relative;padding-bottom:56.25%;height:0;overflow:hidden;\"> <iframe style=\"width:100%;height:100%;position:absolute;left:0px;top:0px;overflow:hidden\" frameborder=\"0\" type=\"text/html\" src=\"https://www.dailymotion.com/embed/video/x88dvcq?autoplay=1\" width=\"100%\" height=\"100%\" allowfullscreen allow=\"autoplay\"> </iframe> </div>',
        '0 bytes',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        9,
        'active',
        1646127121,
        1646127426,
        NULL
    ), (
        72,
        1015,
        2008,
        29,
        'paid',
        0,
        's3',
        'https://s3.us-east-1.amazonaws.com/daghighy/store/1015/UMgeYxq2Z6Pn6C3bnQLBfjZyJNEx8dcvINbSXJtJ.mkv',
        '4.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        4,
        'active',
        1646130252,
        1646131442,
        NULL
    ), (
        73,
        1015,
        2008,
        29,
        'paid',
        1,
        's3',
        'https://s3.us-east-1.amazonaws.com/daghighy/store/1015/ZXW0cMcembGqD7aJNnpmV6ft5Ovsf8tAGXogzb0N.pdf',
        '2.00 MB',
        'pdf',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        5,
        'active',
        1646130397,
        NULL,
        NULL
    ), (
        74,
        929,
        2010,
        31,
        'paid',
        1,
        'upload',
        '/store/929/The Future of Energy.mkv',
        '15.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1655799640,
        NULL,
        NULL
    ), (
        75,
        929,
        2010,
        31,
        'paid',
        1,
        'upload',
        '/store/929/How To Manage & Influence Your Virtual Team.mkv',
        '10.58 MB',
        'video',
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        0,
        NULL,
        'active',
        1655799735,
        NULL,
        NULL
    ), (
        76,
        929,
        2010,
        31,
        'paid',
        1,
        'upload',
        '/store/929/The Future of Energy.mkv',
        '15.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        1,
        300,
        0,
        NULL,
        'active',
        1655800074,
        1655800089,
        NULL
    ), (
        77,
        929,
        2010,
        32,
        'paid',
        1,
        'upload',
        '/store/929/How To Manage & Influence Your Virtual Team.mkv',
        '10.58 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1655801399,
        NULL,
        NULL
    ), (
        78,
        929,
        2010,
        33,
        'paid',
        1,
        'upload',
        '/store/929/The Future of Energy.mkv',
        '15.00 MB',
        'video',
        NULL,
        NULL,
        NULL,
        0,
        NULL,
        0,
        NULL,
        'active',
        1655801529,
        NULL,
        NULL
    );

-- --------------------------------------------------------

--

-- Table structure for table `file_translations`

--

CREATE TABLE
    `file_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `file_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `description` text COLLATE utf8mb4_unicode_ci
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `file_translations`

--

INSERT INTO
    `file_translations` (
        `id`,
        `file_id`,
        `locale`,
        `title`,
        `description`
    )
VALUES (
        1,
        31,
        'en',
        'Course Overview (Youtube)',
        'Understand the varying role of a Product Manager through different types and sizes of companies'
    ), (
        2,
        32,
        'en',
        'What is a Product? (Youtube)',
        'Let’s get basic – what is a product?\r\n\r\nProducts, like ghosts, are all around you (read that in a spooky voice).\r\n\r\nSure, it sounds simple, but there’s a lot more nuance to this than just looking up the dictionary definition.'
    ), (
        3,
        33,
        'en',
        'Ideas and User Needs (Vimeo)',
        'Welcome to the land of ideas and user needs! Have you ever.'
    ), (
        4,
        34,
        'en',
        'Demo Video',
        'The most complete course available on Product Management.'
    ), (
        5,
        35,
        'en',
        'Introduction video',
        'Python is an interpreted high-level general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant indentation.'
    ), (
        6,
        36,
        'en',
        'Introduction Class',
        'Microsoft Excel is a spreadsheet developed by Microsoft for Windows, macOS, Android and iOS. It features calculation, graphing tools, pivot tables, and a macro programming language called Visual Basic for Applications (VBA).'
    ), (
        7,
        37,
        'en',
        'Introduction',
        'In this welcome  video, I give you a quick overview of what the course is about.'
    ), (
        8,
        38,
        'en',
        'Principles of Behavior Change',
        'In this lecture, I discuss an overview of the \"Principles of Behavior Change\" module, the 4 power principles of behavior change, and what you should know about those principles when managing your virtual team.'
    ), (
        9,
        39,
        'en',
        'The Power of Writing',
        'In this lecture, I discuss the following: The mysterious power of writing things down and The advantages of writing tasks out to your virtual team'
    ), (
        10,
        40,
        'en',
        'Before the Meeting',
        'In this lecture, I discuss the five things you should do before every meeting, and how to manage everyone’s expectations through a well-crafted meeting agenda.'
    ), (
        11,
        41,
        'en',
        'During the Meeting',
        'In this lecture, I discuss the five things you should do during every meeting, and how to facilitate your meetings to keep everyone focused on their tasks.'
    ), (
        12,
        42,
        'en',
        'After the Meeting',
        'In this lecture, I discuss the two things you should do after every meeting, and how to follow up with your team to make sure they are committed to getting their actions completed.'
    ), (
        13,
        43,
        'en',
        'Introduction',
        'If you have ever taken a time management course, you\'ve probably faced the frustration of trying to manage your time better and not succeeding.'
    ), (
        14,
        44,
        'en',
        'Why Your Fitness Matters',
        'Unfortunately, the internet is full of false fitness gurus that sell you all kinds of workouts plans and gimmicks that are overpriced and don\'t work.'
    ), (
        15,
        45,
        'en',
        'Introduction',
        'Improve your reactive habits, define your listening mindset, amplify your curiosity, & add value as a great listener'
    ), (
        16,
        46,
        'en',
        'Exponential',
        'Here you will gain and understanding of how consumption is more important than finds of non-renewable energy. Also other matters that affect the future development of non-renewable key and primary fuels'
    ), (
        17,
        47,
        'en',
        'Importance of Oil',
        'Here we test your knowledge of what you learned hopefully listening to our second lecture.'
    ), (
        18,
        48,
        'en',
        'Behavioural Solutions',
        'Here you will gain and understanding of how consumption is more important than finds of non-renewable energy. Also other matters that affect the future development of non-renewable key and primary fuels'
    ), (
        19,
        49,
        'en',
        'Welcome !!',
        'Today we are going to learn the basics of creating a good design. This can apply from web design to graphic design in general.\r\nI put together my top 5 tips and tricks to create a good design from scratch.'
    ), (
        20,
        50,
        'en',
        'CSS Essentials',
        'Chances are you have heard of relative and absolute position in CSS, but did you know there are still three other positions? In this video I will be covering all five CSS positions (static, relative, absolute, fixed, and sticky) .'
    ), (
        21,
        51,
        'en',
        'Intermediate CSS',
        'Learn more about Intermediate CSS features like CSS Grid, Flexbox, and custom properties (aka. variables). Kyle, from Web Dev Simplified, will walk through a few Intermediate CSS challenges and discuss some of our favorite CSS tips and tricks.'
    ), (
        22,
        52,
        'en',
        'Welcome to the Course!',
        'A warm welcome to the course! Feel free to contact me if you have any questions'
    ), (
        23,
        53,
        'en',
        'Health & Safety',
        'The point of this lecture is to share with you numerous safety tips I\'ve learned during my journey.'
    ), (
        24,
        54,
        'en',
        'Where To Sleep during your Travels?',
        'After this lesson you\'ll know what exactly is Couchsurfing and what to expect.'
    ), (
        25,
        55,
        'en',
        'Ready to go? The last things to do!',
        'In this video I\'ll share with you some tips to earn money on the road and I will take my example as a digital nomad to show you what works.'
    ), (
        26,
        56,
        'en',
        'Overview',
        'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry.'
    ), (
        27,
        57,
        'en',
        'Understanding Maps',
        'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry.'
    ), (
        28,
        58,
        'en',
        'World Time',
        'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry.'
    ), (
        29,
        59,
        'en',
        'Travel Technology',
        'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge require'
    ), (
        30,
        60,
        'en',
        'iSpring SCORM',
        'iSpring Suite is a PowerPoint-based authoring toolkit produced by iSpring Solutions that allows users to create slide-based courses.'
    ), (
        31,
        61,
        'en',
        'Adobe Captivate SCORM',
        'Adobe Captivate is an authoring tool that is used for creating eLearning content such as software demonstrations, software simulations, branched scenarios, and randomized quizzes in Shockwave Flash and HTML5 formats.'
    ), (
        32,
        62,
        'en',
        'Custom SCORM',
        'Always remember to tune \"up\" to a pitch and not down to a pitch. This helps in keeping your guitar in tune.'
    ), (
        33,
        63,
        'en',
        'Upload Source',
        'This course will teach you how to master your fretboard, understand music theory, and most importantly, how to use these tools to craft your unique sound.'
    ), (
        34,
        64,
        'en',
        'Youtube Source',
        'YouTube is an American online video sharing and social media platform owned by Google. It was launched on February 14, 2005, by Steve Chen, Chad Hurley, and Jawed Karim.'
    ), (
        35,
        65,
        'en',
        'Vimeo Source',
        'Vimeo, Inc. is an American video hosting, sharing, and services platform provider headquartered in New York City. Vimeo focuses on the delivery of high-definition video across a range of devices. Vimeo\'s business model is through software as a service.'
    ), (
        36,
        66,
        'en',
        'External Link Source',
        'Rocket LMS mobile app is an Android mobile application for Rocket LMS. Rocket LMS is an online course marketplace that helps you run your online education business easily.'
    ), (
        37,
        67,
        'en',
        'Google Drive Source',
        'Google Drive is a file storage and synchronization service developed by Google. Launched on April 24, 2012, Google Drive allows users to store files in the cloud, synchronize files across devices, and share files.'
    ), (
        38,
        68,
        'en',
        'PowerPoint File',
        'Microsoft PowerPoint is a presentation program, created by Robert Gaskins and Dennis Austin at a software company named Forethought, Inc. It was released on April 20, 1987, initially for Macintosh computers only.'
    ), (
        39,
        69,
        'en',
        'PDF File',
        'Portable Document Format (PDF), standardized as ISO 32000, is a file format developed by Adobe in 1992 to present documents, including text formatting and images, in a manner independent of application software, hardware, and operating systems.'
    ), (
        40,
        70,
        'en',
        'Direct Link',
        'Rocket LMS mobile app is an Android mobile application for Rocket LMS. Rocket LMS is an online course marketplace that helps you run your online education business easily.'
    ), (
        41,
        71,
        'en',
        'iFrame Source',
        'March 20 is the first day of spring for most people, while March 1 is the first spring day for meteorologists.'
    ), (
        42,
        72,
        'en',
        'Amazon S3 Stream',
        'Amazon S3 or Amazon Simple Storage Service is a service offered by Amazon Web Services that provides object storage through a web service interface. Amazon S3 uses the same scalable storage infrastructure that Amazon.com uses to run its global e-commerce network.'
    ), (
        43,
        73,
        'en',
        'Amazon S3 File',
        'Amazon S3 or Amazon Simple Storage Service is a service offered by Amazon Web Services that provides object storage through a web service interface. Amazon S3 uses the same scalable storage infrastructure that Amazon.com uses to run its global e-commerce network.'
    ), (
        44,
        74,
        'en',
        'Introduction video',
        'Here we test your knowledge of what you learned, hopefully listening to our second lecture.'
    ), (
        45,
        75,
        'en',
        'Behavioural Solutions',
        'Here you will gain and understanding of how consumption is more important than finds of non-renewable energy. Also other matters that affect the future development of non-renewable key and primary fuels'
    ), (
        46,
        76,
        'en',
        'Exponential',
        'Here you will gain an understanding of how consumption is more important than finds of non-renewable energy. Also, other matters that affect the future development of non-renewable key and primary fuels.'
    ), (
        47,
        77,
        'en',
        'Why you need this course',
        'I had a passion for education at a young age. I became valedictorian of my graduating class.'
    ), (
        48,
        78,
        'en',
        'Final Part',
        'Simply put, drip content is the practice of releasing your content to your members in parts.'
    );

-- --------------------------------------------------------

--

-- Table structure for table `filters`

--

CREATE TABLE
    `filters` (
        `id` int(10) UNSIGNED NOT NULL,
        `category_id` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `filters`

--

INSERT INTO
    `filters` (`id`, `category_id`)
VALUES (1805, 520), (1819, 520), (1834, 520), (1809, 523), (1823, 523), (1838, 523), (1812, 525), (1826, 525), (1841, 525), (1806, 601), (1820, 601), (1835, 601), (1807, 602), (1821, 602), (1836, 602), (1808, 603), (1822, 603), (1837, 603), (1810, 604), (1824, 604), (1839, 604), (1811, 605), (1825, 605), (1840, 605), (1816, 606), (1831, 606), (1845, 606), (1817, 607), (1832, 607), (1846, 607), (1818, 608), (1833, 608), (1847, 608), (1813, 609), (1827, 609), (1842, 609), (1814, 610), (1829, 610), (1843, 610), (1815, 611), (1830, 611), (1844, 611);

-- --------------------------------------------------------

--

-- Table structure for table `filter_options`

--

CREATE TABLE
    `filter_options` (
        `id` int(10) UNSIGNED NOT NULL,
        `filter_id` int(10) UNSIGNED NOT NULL,
        `order` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `filter_options`

--

INSERT INTO
    `filter_options` (`id`, `filter_id`, `order`)
VALUES (9114, 1805, 1), (9115, 1805, 2), (9116, 1805, 3), (9117, 1806, 1), (9118, 1806, 2), (9119, 1806, 3), (9120, 1807, 1), (9121, 1807, 2), (9122, 1807, 3), (9123, 1808, 1), (9124, 1808, 2), (9125, 1808, 3), (9126, 1809, 1), (9127, 1809, 2), (9128, 1809, 3), (9129, 1810, 1), (9130, 1810, 2), (9131, 1810, 3), (9132, 1811, 1), (9133, 1811, 2), (9134, 1811, 3), (9135, 1812, 1), (9136, 1812, 2), (9137, 1812, 3), (9138, 1813, 1), (9139, 1813, 2), (9140, 1813, 3), (9141, 1814, 1), (9142, 1814, 2), (9143, 1814, 3), (9144, 1815, 1), (9145, 1815, 2), (9146, 1815, 3), (9147, 1816, 1), (9148, 1816, 2), (9149, 1816, 3), (9150, 1817, 1), (9151, 1817, 2), (9152, 1817, 3), (9153, 1818, 1), (9154, 1818, 2), (9155, 1818, 3), (9156, 1819, 1), (9157, 1819, 3), (9158, 1819, 2), (9159, 1819, 4), (9160, 1819, 5), (9161, 1820, 1), (9162, 1820, 3), (9163, 1820, 2), (9164, 1820, 4), (9165, 1820, 5), (9166, 1821, 1), (9167, 1821, 3), (9168, 1821, 2), (9169, 1821, 4), (9170, 1821, 5), (9171, 1822, 1), (9172, 1822, 3), (9173, 1822, 2), (9174, 1822, 4), (9175, 1822, 5), (9176, 1823, 1), (9177, 1823, 3), (9178, 1823, 2), (9179, 1823, 4), (9180, 1823, 5), (9181, 1824, 1), (9182, 1824, 3), (9183, 1824, 2), (9184, 1824, 4), (9185, 1824, 5), (9186, 1825, 1), (9187, 1825, 3), (9188, 1825, 2), (9189, 1825, 4), (9190, 1825, 5), (9191, 1826, 1), (9192, 1826, 3), (9193, 1826, 2), (9194, 1826, 4), (9195, 1826, 5), (9196, 1827, 1), (9197, 1827, 3), (9198, 1827, 2), (9199, 1827, 4), (9200, 1827, 5), (9206, 1829, 1), (9207, 1829, 3), (9208, 1829, 2), (9209, 1829, 4), (9210, 1829, 5), (9211, 1830, 1), (9212, 1830, 3), (9213, 1830, 2), (9214, 1830, 4), (9215, 1830, 5), (9216, 1831, 1), (9217, 1831, 3), (9218, 1831, 2), (9219, 1831, 4), (9220, 1831, 5), (9221, 1832, 1), (9222, 1832, 3), (9223, 1832, 2), (9224, 1832, 4), (9225, 1832, 5), (9226, 1833, 1), (9227, 1833, 3), (9228, 1833, 2), (9229, 1833, 4), (9230, 1833, 5), (9231, 1834, 1), (9232, 1834, 2), (9233, 1834, 3), (9234, 1834, 4), (9235, 1834, 5), (9236, 1835, 1), (9237, 1835, 2), (9238, 1835, 3), (9239, 1835, 4), (9240, 1836, 1), (9241, 1836, 2), (9242, 1836, 3), (9243, 1836, 4), (9244, 1837, 1), (9245, 1837, 2), (9246, 1837, 3), (9247, 1837, 4), (9248, 1837, 5), (9249, 1838, 1), (9250, 1838, 2), (9251, 1838, 3), (9252, 1838, 4), (9253, 1839, 3), (9254, 1839, 1), (9255, 1839, 2), (9256, 1839, 4), (9257, 1840, 1), (9258, 1840, 2), (9259, 1840, 3), (9260, 1840, 4), (9261, 1840, 5), (9262, 1841, 1), (9263, 1841, 2), (9264, 1841, 3), (9265, 1841, 4), (9266, 1842, 1), (9267, 1842, 2), (9268, 1842, 3), (9269, 1842, 4), (9270, 1843, 1), (9271, 1843, 2), (9272, 1843, 3), (9273, 1843, 4), (9274, 1843, 5), (9275, 1844, 1), (9276, 1844, 2), (9277, 1844, 3), (9278, 1844, 4), (9279, 1845, 1), (9280, 1845, 2), (9281, 1845, 3), (9282, 1845, 4), (9283, 1845, 5), (9284, 1846, 1), (9285, 1846, 2), (9286, 1846, 3), (9287, 1846, 4), (9288, 1847, 1), (9289, 1847, 2), (9290, 1847, 3), (9291, 1847, 4), (9292, 1847, 5);

-- --------------------------------------------------------

--

-- Table structure for table `filter_option_translations`

--

CREATE TABLE
    `filter_option_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `filter_option_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `filter_option_translations`

--

INSERT INTO
    `filter_option_translations` (
        `id`,
        `filter_option_id`,
        `locale`,
        `title`
    )
VALUES (1, 9114, 'en', 'Beginner'), (2, 9115, 'en', 'Intermediate'), (3, 9116, 'en', 'Expert'), (4, 9117, 'en', 'Beginner'), (5, 9118, 'en', 'Intermediate'), (6, 9119, 'en', 'Expert'), (7, 9120, 'en', 'Beginner'), (8, 9121, 'en', 'Intermediate'), (9, 9122, 'en', 'Expert'), (10, 9123, 'en', 'Beginner'), (11, 9124, 'en', 'Intermediate'), (12, 9125, 'en', 'Expert'), (13, 9126, 'en', 'Beginner'), (14, 9127, 'en', 'Intermediate'), (15, 9128, 'en', 'Expert'), (16, 9129, 'en', 'Beginner'), (17, 9130, 'en', 'Intermediate'), (18, 9131, 'en', 'Intermediate'), (19, 9132, 'en', 'Beginner'), (20, 9133, 'en', 'Intermediate'), (21, 9134, 'en', 'Expert'), (22, 9135, 'en', 'Beginner'), (23, 9136, 'en', 'Intermediate'), (24, 9137, 'en', 'Expert'), (25, 9138, 'en', 'Beginner'), (26, 9139, 'en', 'Intermediate'), (27, 9140, 'en', 'Expert'), (28, 9141, 'en', 'Beginner'), (29, 9142, 'en', 'Intermediate'), (30, 9143, 'en', 'Expert'), (31, 9144, 'en', 'Beginner'), (32, 9145, 'en', 'Intermediate'), (33, 9146, 'en', 'Expert'), (34, 9147, 'en', 'Beginner'), (35, 9148, 'en', 'Intermediate'), (36, 9149, 'en', 'Expert'), (37, 9150, 'en', 'Beginner'), (38, 9151, 'en', 'Intermediate'), (39, 9152, 'en', 'Expert'), (40, 9153, 'en', 'Beginner'), (41, 9154, 'en', 'Intermediate'), (42, 9155, 'en', 'Expert'), (43, 9156, 'en', 'English'), (44, 9157, 'en', 'Português'), (45, 9158, 'en', 'Español'), (46, 9159, 'en', 'हिन्'), (47, 9160, 'en', 'العربية'), (48, 9161, 'en', 'English'), (49, 9162, 'en', 'Português'), (50, 9163, 'en', 'Español'), (51, 9164, 'en', 'हिन्'), (52, 9165, 'en', 'العربية'), (53, 9166, 'en', 'English'), (54, 9167, 'en', 'Português'), (55, 9168, 'en', 'Español'), (56, 9169, 'en', 'हिन्'), (57, 9170, 'en', 'العربية'), (58, 9171, 'en', 'English'), (59, 9172, 'en', 'Português'), (60, 9173, 'en', 'Español'), (61, 9174, 'en', 'हिन्'), (62, 9175, 'en', 'العربية'), (63, 9176, 'en', 'English'), (64, 9177, 'en', 'Português'), (65, 9178, 'en', 'Español'), (66, 9179, 'en', 'हिन्'), (67, 9180, 'en', 'العربية'), (68, 9181, 'en', 'English'), (69, 9182, 'en', 'Português'), (70, 9183, 'en', 'Español'), (71, 9184, 'en', 'हिन्'), (72, 9185, 'en', 'العربية'), (73, 9186, 'en', 'English'), (74, 9187, 'en', 'Português'), (75, 9188, 'en', 'Español'), (76, 9189, 'en', 'हिन्'), (77, 9190, 'en', 'العربية'), (78, 9191, 'en', 'English'), (79, 9192, 'en', 'Português'), (80, 9193, 'en', 'Español'), (81, 9194, 'en', 'हिन्'), (82, 9195, 'en', 'العربية'), (83, 9196, 'en', 'English'), (84, 9197, 'en', 'Português'), (85, 9198, 'en', 'Español'), (86, 9199, 'en', 'हिन्'), (87, 9200, 'en', 'العربية'), (88, 9206, 'en', 'English'), (89, 9207, 'en', 'Português'), (90, 9208, 'en', 'Español'), (91, 9209, 'en', 'हिन्'), (92, 9210, 'en', 'العربية'), (93, 9211, 'en', 'English'), (94, 9212, 'en', 'Português'), (95, 9213, 'en', 'Español'), (96, 9214, 'en', 'हिन्'), (97, 9215, 'en', 'العربية'), (98, 9216, 'en', 'English'), (99, 9217, 'en', 'Português'), (100, 9218, 'en', 'Español'), (101, 9219, 'en', 'हिन्'), (102, 9220, 'en', 'العربية'), (103, 9221, 'en', 'English'), (104, 9222, 'en', 'Português'), (105, 9223, 'en', 'Español'), (106, 9224, 'en', 'हिन्'), (107, 9225, 'en', 'العربية'), (108, 9226, 'en', 'English'), (109, 9227, 'en', 'Português'), (110, 9228, 'en', 'Español'), (111, 9229, 'en', 'हिन्'), (112, 9230, 'en', 'العربية'), (113, 9231, 'en', 'Photoshop'), (
        114,
        9232,
        'en',
        'Adobe Illustrator'
    ), (115, 9233, 'en', 'Blender'), (116, 9234, 'en', '3D Modeling'), (
        117,
        9235,
        'en',
        'After Effects'
    ), (118, 9236, 'en', 'Math'), (119, 9237, 'en', 'Algebra'), (120, 9238, 'en', 'Calculus'), (121, 9239, 'en', 'Statistics'), (122, 9240, 'en', 'Physics'), (123, 9241, 'en', 'Chemistry'), (124, 9242, 'en', 'Biology'), (125, 9243, 'en', 'Genetics'), (
        126,
        9244,
        'en',
        'English Language'
    ), (
        127,
        9245,
        'en',
        'English Grammar'
    ), (
        128,
        9246,
        'en',
        'Spanish Language'
    ), (
        129,
        9247,
        'en',
        'Arabic Language'
    ), (130, 9248, 'en', 'IELTS'), (131, 9249, 'en', 'Yoga'), (132, 9250, 'en', 'Fitness'), (133, 9251, 'en', 'Health'), (134, 9252, 'en', 'Dance'), (135, 9253, 'en', 'Chess'), (136, 9254, 'en', 'Cooking'), (137, 9255, 'en', 'Drawing'), (138, 9256, 'en', 'Reiki'), (
        139,
        9257,
        'en',
        'Makeup Artistry'
    ), (140, 9258, 'en', 'Hair Styling'), (141, 9259, 'en', 'Skincare'), (142, 9260, 'en', 'Fashion'), (143, 9261, 'en', 'Nail Art'), (
        144,
        9262,
        'en',
        'Digital Marketing'
    ), (145, 9263, 'en', 'SEO'), (
        146,
        9264,
        'en',
        'Marketing Strategy'
    ), (
        147,
        9265,
        'en',
        'Social Media Marketing'
    ), (148, 9266, 'en', 'Leadership'), (
        149,
        9267,
        'en',
        'Management Skills'
    ), (150, 9268, 'en', 'ISO 9001'), (
        151,
        9269,
        'en',
        'Manager Training'
    ), (
        152,
        9270,
        'en',
        'Communication Skills'
    ), (
        153,
        9271,
        'en',
        'Presentation Skills'
    ), (
        154,
        9272,
        'en',
        'Public Speaking'
    ), (
        155,
        9273,
        'en',
        'Business Communication'
    ), (156, 9274, 'en', 'Writing'), (
        157,
        9275,
        'en',
        'Business Strategy'
    ), (
        158,
        9276,
        'en',
        'Strategic Planning'
    ), (
        159,
        9277,
        'en',
        'Marketing Strategy'
    ), (160, 9278, 'en', 'Innovation'), (161, 9279, 'en', 'HTML'), (162, 9280, 'en', 'CSS'), (163, 9281, 'en', 'PHP'), (164, 9282, 'en', 'JavaScript'), (165, 9283, 'en', 'Laravel'), (
        166,
        9284,
        'en',
        'Android Development'
    ), (
        167,
        9285,
        'en',
        'iOS Development'
    ), (
        168,
        9286,
        'en',
        'Google Flutter'
    ), (
        169,
        9287,
        'en',
        'React NativeKotlin'
    ), (170, 9288, 'en', 'Unity'), (
        171,
        9289,
        'en',
        'Unreal Engine'
    ), (
        172,
        9290,
        'en',
        'Unreal Engine Blueprints'
    ), (
        173,
        9291,
        'en',
        '3D Game Development'
    ), (
        174,
        9292,
        'en',
        'Game Development Fundamentals'
    );

-- --------------------------------------------------------

--

-- Table structure for table `filter_translations`

--

CREATE TABLE
    `filter_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `filter_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `filter_translations`

--

INSERT INTO
    `filter_translations` (
        `id`,
        `filter_id`,
        `locale`,
        `title`
    )
VALUES (1, 1805, 'en', 'Level'), (2, 1806, 'en', 'Level'), (3, 1807, 'en', 'Level'), (4, 1808, 'en', 'Level'), (5, 1809, 'en', 'Level'), (6, 1810, 'en', 'Level'), (7, 1811, 'en', 'Level'), (8, 1812, 'en', 'Level'), (9, 1813, 'en', 'Level'), (10, 1814, 'en', 'Level'), (11, 1815, 'en', 'Level'), (12, 1816, 'en', 'Level'), (13, 1817, 'en', 'Level'), (14, 1818, 'en', 'Level'), (15, 1819, 'en', 'Language'), (16, 1820, 'en', 'Language'), (17, 1821, 'en', 'Language'), (18, 1822, 'en', 'Language'), (19, 1823, 'en', 'Language'), (20, 1824, 'en', 'Language'), (21, 1825, 'en', 'Language'), (22, 1826, 'en', 'Language'), (23, 1827, 'en', 'Language'), (24, 1829, 'en', 'Language'), (25, 1830, 'en', 'Language'), (26, 1831, 'en', 'Language'), (27, 1832, 'en', 'Language'), (28, 1833, 'en', 'Language'), (29, 1834, 'en', 'Topic'), (30, 1835, 'en', 'Topic'), (31, 1836, 'en', 'Topic'), (32, 1837, 'en', 'Topic'), (33, 1838, 'en', 'Topic'), (34, 1839, 'en', 'Topic'), (35, 1840, 'en', 'Topic'), (36, 1841, 'en', 'Topic'), (37, 1842, 'en', 'Topic'), (38, 1843, 'en', 'Topic'), (39, 1844, 'en', 'Topic'), (40, 1845, 'en', 'Topic'), (41, 1846, 'en', 'Topic'), (42, 1847, 'en', 'Topic');

-- --------------------------------------------------------

--

-- Table structure for table `follows`

--

CREATE TABLE
    `follows` (
        `id` int(10) UNSIGNED NOT NULL,
        `follower` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `status` enum(
            'requested',
            'accepted',
            'rejected'
        ) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- --------------------------------------------------------

--

-- Table structure for table `forums`

--

CREATE TABLE
    `forums` (
        `id` int(10) UNSIGNED NOT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `role_id` int(10) UNSIGNED DEFAULT NULL,
        `group_id` int(10) UNSIGNED DEFAULT NULL,
        `parent_id` int(10) UNSIGNED DEFAULT NULL,
        `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `status` enum('disabled', 'active') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `close` tinyint(1) NOT NULL DEFAULT '0',
        `order` int(11) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `forums`

--

INSERT INTO
    `forums` (
        `id`,
        `slug`,
        `role_id`,
        `group_id`,
        `parent_id`,
        `icon`,
        `status`,
        `close`,
        `order`
    )
VALUES (
        1,
        'Lifestyle',
        NULL,
        NULL,
        NULL,
        '/store/1/default_images/forums/icons/makeup.png',
        'active',
        0,
        NULL
    ), (
        2,
        'Beauty-Makeup',
        NULL,
        NULL,
        1,
        '/store/1/default_images/forums/icons/makeup.png',
        'active',
        0,
        1
    ), (
        3,
        'Food-Beverage',
        NULL,
        NULL,
        1,
        '/store/1/default_images/forums/icons/donut.png',
        'active',
        0,
        2
    ), (
        4,
        'Travel',
        NULL,
        NULL,
        1,
        '/store/1/default_images/forums/icons/airplane.png',
        'active',
        0,
        3
    ), (
        5,
        'Music',
        NULL,
        NULL,
        NULL,
        '/store/1/default_images/forums/icons/love-song.png',
        'active',
        0,
        NULL
    ), (
        6,
        'Marketing',
        NULL,
        NULL,
        NULL,
        '/store/1/default_images/forums/icons/advertising.png',
        'active',
        0,
        NULL
    ), (
        7,
        'Digital-Marketing',
        NULL,
        NULL,
        6,
        '/store/1/default_images/forums/icons/digital-marketing.png',
        'active',
        0,
        1
    ), (
        8,
        'Public-Relations',
        NULL,
        NULL,
        6,
        '/store/1/default_images/forums/icons/security.png',
        'active',
        0,
        2
    ), (
        9,
        'Advertising',
        NULL,
        NULL,
        6,
        '/store/1/default_images/forums/icons/ads.png',
        'active',
        0,
        3
    ), (
        10,
        'Social-Media',
        NULL,
        NULL,
        6,
        '/store/1/default_images/forums/icons/twitter.png',
        'active',
        0,
        4
    );

-- --------------------------------------------------------

--

-- Table structure for table `forum_featured_topics`

--

CREATE TABLE
    `forum_featured_topics` (
        `id` int(10) UNSIGNED NOT NULL,
        `topic_id` int(10) UNSIGNED NOT NULL,
        `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `forum_featured_topics`

--

INSERT INTO
    `forum_featured_topics` (
        `id`,
        `topic_id`,
        `icon`,
        `created_at`
    )
VALUES (
        1,
        9,
        '/store/1/default_images/forums/icons/food_forum.svg',
        1655791906
    ), (
        2,
        8,
        '/store/1/default_images/forums/icons/forum_makeup.svg',
        1655793090
    ), (
        3,
        5,
        '/store/1/default_images/forums/icons/forum_music.svg',
        1655793433
    ), (
        4,
        10,
        '/store/1/default_images/forums/icons/marketing.svg',
        1656100506
    );

-- --------------------------------------------------------

--

-- Table structure for table `forum_recommended_topics`

--

CREATE TABLE
    `forum_recommended_topics` (
        `id` int(10) UNSIGNED NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `forum_recommended_topics`

--

INSERT INTO
    `forum_recommended_topics` (
        `id`,
        `title`,
        `icon`,
        `created_at`
    )
VALUES (
        1,
        'Food & Health',
        '/store/1/default_images/forums/icons/dish.png',
        1655794486
    ), (
        2,
        'Math',
        '/store/1/default_images/forums/icons/drawing-compass.png',
        1655796024
    ), (
        3,
        'Marketing',
        '/store/1/default_images/forums/icons/target.png',
        1655796482
    ), (
        4,
        'Language',
        '/store/1/default_images/forums/icons/translate.png',
        1655796824
    );

-- --------------------------------------------------------

--

-- Table structure for table `forum_recommended_topic_items`

--

CREATE TABLE
    `forum_recommended_topic_items` (
        `id` int(10) UNSIGNED NOT NULL,
        `recommended_topic_id` int(10) UNSIGNED NOT NULL,
        `topic_id` int(10) UNSIGNED NOT NULL,
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `forum_recommended_topic_items`

--

INSERT INTO
    `forum_recommended_topic_items` (
        `id`,
        `recommended_topic_id`,
        `topic_id`,
        `created_at`
    )
VALUES (35, 4, 2, 1656142901), (36, 4, 3, 1656142901), (37, 4, 7, 1656142901), (38, 4, 9, 1656142901), (39, 4, 10, 1656142901), (40, 3, 7, 1656142907), (41, 3, 9, 1656142907), (42, 3, 4, 1656142907), (43, 3, 2, 1656142907), (44, 3, 10, 1656142907), (45, 2, 4, 1656142913), (46, 2, 7, 1656142913), (47, 2, 8, 1656142913), (48, 2, 9, 1656142913), (49, 2, 10, 1656142913), (50, 1, 9, 1656142919), (51, 1, 8, 1656142919), (52, 1, 7, 1656142919), (53, 1, 3, 1656142919), (54, 1, 10, 1656142919);

-- --------------------------------------------------------

--

-- Table structure for table `forum_topics`

--

CREATE TABLE
    `forum_topics` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `forum_id` int(10) UNSIGNED NOT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `pin` tinyint(1) NOT NULL DEFAULT '0',
        `close` tinyint(1) NOT NULL DEFAULT '0',
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `forum_topics`

--

INSERT INTO
    `forum_topics` (
        `id`,
        `creator_id`,
        `forum_id`,
        `slug`,
        `title`,
        `description`,
        `pin`,
        `close`,
        `created_at`
    )
VALUES (
        1,
        1015,
        8,
        'What-do-you-think-of-Mark-Zuckerberg',
        'What do you think of Mark Zuckerberg?',
        '<p>I\'ll start this discussion by saying I think the way he got his start was kinda sleazy...he made a website comparing the looks of his college classmates. That site was the precursor to his most famous creation: Facebook.</p><p><br></p>',
        0,
        0,
        1655716308
    ), (
        2,
        1015,
        4,
        'test',
        'Bar Train Tour on Heterocera',
        '<p style=\"color: rgb(89, 90, 94); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Dear Second Life residents and friends,</p><p style=\"color: rgb(89, 90, 94); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">I am pleased to announce a unique way to travel and explore the continent of Heterocera by train.</p><p style=\"color: rgb(89, 90, 94); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">The Bellisserian Bureau for Bureaucracy, the Embassies of Bellisseria and the Mainland Tour project collaborated with Greg Timmerman and his Bar &amp; Lounge project offer a special tour.</p><p style=\"color: rgb(89, 90, 94); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Join us on the&nbsp;<span style=\"font-weight: bolder;\">Bar Train</span>&nbsp;for a journey by railway along the SLRR lines around Heterocera. We will also stop for a halt at the Woodland Station, the home of the Bar Train, where you will be able to collect a new stamp!</p>',
        0,
        0,
        1655716703
    ), (
        3,
        1017,
        4,
        'Trying-to-Find-a-Water-to-Land-Race',
        'Trying to Find a Water-to-Land Race!',
        '<p>I don\'t have a lot of info but a friend of mine told me that there is a HUD (or was) that pings GPS points on the map. And you start this race in a car, then get in a boat, then get in a car again.... and at the end, there\'s some cool party. There is NO amount of googling that is helping me find this so I\'m reaching out to the SL hivemind. Help.</p>',
        0,
        0,
        1655787049
    ), (
        4,
        870,
        10,
        'Looking-for-friends-but-im-also-really-really-shy',
        'Looking for friends but, im shy',
        '<p>Looking for friends to just hand with and have fun with. I love gaming and listening to music. I\'m 25 years young but would love to get to know some people. I started SecondLife a few months ago so I still knew. Would love to meet some genuine ppl!</p>',
        0,
        0,
        1655788542
    ), (
        5,
        996,
        5,
        'How-do-you-put-a-Group-Link-in-a-note-card',
        'How do you put a Group Link in a note card',
        '<p>I want to create a note card that lists clickable LMs (EASY to do) to the 14 music hangouts (nearly all are open stage/decks, 6 to 8 have regular weekly events) in my community region.</p><p><br></p><p>But how do you add to a notecard clickable LINKS TO GROUPS we have 6 groups which i would like to list too.</p>',
        0,
        0,
        1655789512
    ), (
        6,
        923,
        9,
        'How-to-greatly-reduce-or-eliminate-networked-advertising',
        'How to reduce networked advertising',
        '<p>We hear over and over about the evil of networked advertising on mainland, about how it is the bane of mainlanders existence, about how it should be eliminated now and forever.</p><p>But how?</p><p>We hear that networked advertising is mainly a phenomenon of micro parcels, since what else can you do with 5 prims except stick a sign on it?</p><p>Its been suggested that parcels not be allowed to be cut smaller than a certain size, but that would cause a lot of unintended consequences.</p><p>Similarly, banning the sale of micro parcels would cause also undesirable consequences.</p><p>A forum resident suggested charging each micro parcel  the equivalent of a 512 sq m tier, which is both unworkable and unfair.</p><p>My suggesting is simple, clear and fair.</p><p>I propose that Linden Labs make a new rule banning construction on any parcel under  64 sq m</p><p>Parcels under that size would only be allowed to have natural elements rezzed on them such as trees, flowers, and rocks.</p><p>As soon as this rule change is implemented, all those 16 sq m networked advertising holdings would be rendered worthless, either for use or for sale at inflated prices.</p><p>Networked advertisers could divest themselves of their holdings by offering them for sale at reasonable prices to neighboring land owners, or just abandoning them</p><p>Lets face it, no one will pay hundreds of $Ls for a 16 sq m parcel just to put a rock or shrub on.</p><p>Under this new rule, networked advertising won\'t be eliminated since it would still be legal, but I think it will certainly be greatly reduced.</p><p>Implement this suggestion, and take a giant step to beautifying the mainland by largely eliminating the \"scourge\" of networked advertising once and for all.</p><p>Note to LL, if you do implement this rule, please publish it. Don\'t just sneakily change the TOS and say gotcha.</p>',
        0,
        0,
        1655790004
    ), (
        7,
        3,
        7,
        'Marketing-Agent-wanted',
        'Marketing Agent wanted',
        '<p>I am looking for an experience and successful Marketing agent to work for me in order to increase my product sales which mostly include houses and furniture. If you are interested contact me on chat by contacting Romin McDonnell. References are required</p>',
        0,
        0,
        1655790607
    ), (
        8,
        930,
        2,
        'The-best-texture-quality-settings-for-makeup',
        'The best texture quality settings for makeup',
        '<p>Hello everyone ❣️ I don\'t know if I\'m at the right place for my question, but I hope so... 😅</p><p>In your opinion, what is the best size, dpi and the rest of the settings related to the quality of the PNG file, in order to make the texture looking great and non blurry after uploading it in SL?&nbsp;</p><p>What file format do you prefer to upload in SL - PNG or JPEG?&nbsp;</p><p>What editor/ app/ program do you use to create your textures?&nbsp;</p><p>Also, I work with Photoshop, so I would be very thankful if you can give me a few tips and tricks about the process of creation of textures exactly with this program.&nbsp;</p><p>Thank you for your time!&nbsp; Have an awesome day ☀️</p>',
        0,
        0,
        1655790834
    ), (
        9,
        995,
        3,
        'What-favorite-food-and-or-beverage-do-you-enjoy',
        'What favorite food and or beverage do you enjoy',
        '<p>I am amazed&nbsp; and thankful to SL for all the wonderful things and ability to reach&nbsp; out to others in so many different places all over the world. That being said&nbsp; at least for me as i am building ...in rl my favorite beverage&nbsp; is coffee or a mocha latte . For food prefer fruit if i am in world during lunch . How about you.<br></p>',
        0,
        0,
        1655791192
    ), (
        10,
        995,
        10,
        'What-is-social-media',
        'What is social media?',
        '<p>Social media is a collective term for websites and applications that focus on communication, community-based input, interaction, content-sharing and collaboration.</p><p><br></p><p>People use social media to stay in touch and interact with friends, family and various communities. Businesses use social applications to market and promote their products and track customer concerns.</p><p><br></p><p>Business-to-consumer websites include social components, such as comment fields for users. Various tools help businesses track, measure and analyze the attention the company gets from social media, including brand perception and customer insight.</p><p><br></p><p>Social media has enormous traction globally. Mobile applications make these platforms easily accessible. Some popular examples of general social media platforms include Twitter, Facebook and LinkedIn.</p><p><br></p><p>What are the business applications of social media?</p><p>In business, social media is used to market products, promote brands, connect to customers and foster new business. As a communication platform, social media promotes customer feedback and makes it easy for customers to share their experiences with a company. Businesses can respond quickly to positive and negative feedback, address customer problems and maintain or rebuild customer confidence.</p><p><br></p><p>Social media is also used for crowdsourcing. That\'s the practice of using social networking to gather knowledge, goods or services. Companies use crowdsourcing to get ideas from employees, customers and the general public for improving products or developing future products or services.</p>',
        0,
        0,
        1656101498
    );

-- --------------------------------------------------------

--

-- Table structure for table `forum_topic_attachments`

--

CREATE TABLE
    `forum_topic_attachments` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `topic_id` int(10) UNSIGNED NOT NULL,
        `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `forum_topic_attachments`

--

INSERT INTO
    `forum_topic_attachments` (
        `id`,
        `creator_id`,
        `topic_id`,
        `path`
    )
VALUES (
        1,
        1017,
        3,
        '/store/1017/background-sea-water.jpg'
    );

-- --------------------------------------------------------

--

-- Table structure for table `forum_topic_bookmarks`

--

CREATE TABLE
    `forum_topic_bookmarks` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `topic_id` int(10) UNSIGNED NOT NULL,
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Table structure for table `forum_topic_likes`

--

CREATE TABLE
    `forum_topic_likes` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `topic_id` int(10) UNSIGNED DEFAULT NULL,
        `topic_post_id` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Table structure for table `forum_topic_posts`

--

CREATE TABLE
    `forum_topic_posts` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `topic_id` int(10) UNSIGNED NOT NULL,
        `parent_id` int(10) UNSIGNED DEFAULT NULL,
        `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `attach` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `pin` tinyint(1) NOT NULL DEFAULT '0',
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `forum_topic_posts`

--

INSERT INTO
    `forum_topic_posts` (
        `id`,
        `user_id`,
        `topic_id`,
        `parent_id`,
        `description`,
        `attach`,
        `pin`,
        `created_at`
    )
VALUES (
        1,
        929,
        2,
        NULL,
        '<p><span style=\"color: rgb(89, 90, 94); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\">I will be there!</span><br style=\"color: rgb(89, 90, 94); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\"><span style=\"color: rgb(89, 90, 94); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\">An opportunity for everyone who wants to see more of SL instead of only the clubs and beaches.</span><br></p>',
        NULL,
        0,
        1655718839
    ), (
        2,
        979,
        1,
        NULL,
        '<p>Didn\'t he call his early users dumb? :o I don\'t really think about him...I find FB very boring and hard to navigate, but I can\'t persuade family members to quit it...</p><p><br></p><p>Did you know, he is being sued by a cryptocurrency developer called Internet Computer...they say he stole their logo for Meta!&nbsp;</p>',
        NULL,
        0,
        1655786658
    ), (
        3,
        930,
        1,
        NULL,
        '<p>he looked after the 3,000 or so startup employees who built Facebook from nothing. When the company went public those employees share options pool was worth a combined $23billion</p>',
        NULL,
        0,
        1655786705
    ), (
        4,
        923,
        3,
        NULL,
        '<p>That sounds like the weekly grid drive put on by the drivers of SL group.</p><p><br></p><p>Their headquarters is here: http://maps.secondlife.com/secondlife/Bruissac/109/72/36</p><p><br></p><p>Or maybe I could be totally off base. I know I did something that sounds exactly like what was described in the OP once with a friend over a year ago.</p>',
        NULL,
        0,
        1655787619
    ), (
        5,
        1017,
        3,
        NULL,
        '<p>Thanks</p>',
        NULL,
        0,
        1655787999
    ), (
        6,
        3,
        4,
        NULL,
        '<p>Hi, I\'m in SL for a little over a year and I\'m mostly on my own. I\'d like to meet friends who I could hang out with so I won\'t be alone all the time. In SL I mostly shop, modify my avi or take pictures (which I\'m not good at lol) but I\'m for anything which could be fun. In RL, I\'m from Europe. Czech or English language - if you speak slowly we can voice. I\'m a fan of Chinese costume drama and novels, pop. My active time in SL is usually during weekends - in working days I\'m usually AFK at some club while working. IM me in-world if you want.<br></p>',
        NULL,
        0,
        1655788607
    ), (
        7,
        930,
        5,
        NULL,
        '<p>If it was me, who\'s really dumb about scripting, I\'d just place a group joiner for the appropriate group at each arrival point.</p>',
        NULL,
        0,
        1655789536
    ), (
        8,
        859,
        5,
        NULL,
        '<p>Ah, I didn\'t understand what you meant.&nbsp; The best you can do is include a full perm object that contains a group joiner script and the UUIDs of each of the six groups.&nbsp; Then a person just has to rez the object and click it to get the joiner menu.</p><p><br></p><p>Or do as Lindal suggested, which is much easier.&nbsp; ;)</p><p><br></p>',
        NULL,
        0,
        1655789585
    ), (
        9,
        3,
        6,
        NULL,
        '<p>I doubt the Lab will make any significant changes to existing Mainland rules.</p><p><br></p><p>On the other hand, they\'ve definitely moved away from allowing new land to be subdivided, joined, etc. That\'s always been the rule in Linden\'s \"urban\" zoned areas such as Bay City, Nova Albion, Nautilus City, etc., and applies to a big chunk of Zindra. Also, of course, Belli and the old Linden Homes continents, and most predictive of anything to be added in future: the Horizons continent. So, basically, they realize that virtual land is most productive when it follows the same practices as Estates, and that just doesn\'t include microparcels.</p><p><br></p><p>If they did anything, I\'d favor just banning everything under 144 sq.m. from being set for sale at all, just as they can\'t appear in Search.They were just a mistake, so let them die out as painlessly as possible.</p><p><br></p><p>Networked advertising, qua advertising, has never really been a thing. There have been a few folks who genuinely misunderstood and thought it might be a business, but that\'s never been why there are microparcels, and most microparcel-based network \"advertisers\" know darn well they couldn\'t pay to light the pixels with the eyeballs and clickthrus. It\'s always been just a cover for land extortion, with a handful of saps who mistook it for actual advertising. There\'s just no business to be had there.</p>',
        NULL,
        0,
        1655790272
    ), (
        10,
        934,
        7,
        NULL,
        '<p>Hi James,</p><p><br></p><p>Love To Decorate is dedicated to showcasing the talents and impeccable design within the Home &amp; Garden design market in the virtual world of Second Life.&nbsp;</p><p><br></p><p>Through our Website, we make it our goal to inspire the residents of Second Life and give our full support to the content creators who support us and make this world a beautiful place to log into each day.</p><p><br></p><p>We would be glad to help you with marketing and advertising your brand.&nbsp;</p>',
        NULL,
        0,
        1655790650
    ), (
        11,
        929,
        8,
        NULL,
        '<p style=\"\"><font color=\"#595a5e\" face=\"Roboto, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\"><span style=\"font-size: 14px;\">To add to Orwar\'s great explanation:</span></font></p><p style=\"\"><font color=\"#595a5e\" face=\"Roboto, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\"><span style=\"font-size: 14px;\">In the end, anything you upload to SL will become a JPEG and will lose some detail. The reason why you should save your work as PNG/TGA/PSD/etc is to keep the original quality on your computer as you made it.</span></font></p><p style=\"\"><font color=\"#595a5e\" face=\"Roboto, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\"><span style=\"font-size: 14px;\">The difference between PNG vs TGA is that PNG is losslessly compressed (to save space without sacrificing quality), while TGA is uncompressed. Realistically it doesn\'t matter, since they have the exact same capabilities.</span></font></p>',
        NULL,
        0,
        1655790902
    ), (
        12,
        870,
        8,
        NULL,
        '<p>I upload using TGA format, as I use masking in my work. Something to think about...if you use them.</p><p><br></p>',
        NULL,
        0,
        1655790940
    ), (
        13,
        996,
        9,
        NULL,
        '<p>Depends on the time of day.</p><p><br></p><p>If it\'s morning, it\'s coffee. Afternoon, tea or water. Evening, water.</p><p><br></p><p>I don\'t tend to eat often while I\'m online. I\'ll wait until I finish whatever I\'m doing, then log off and take a break for a while.&nbsp;</p>',
        NULL,
        0,
        1655791222
    ), (
        14,
        1015,
        9,
        NULL,
        '<p>If I’m playing this game sober then something is wrong.</p><p>Cheap alcohol, and I mean cheeaaaaap. Like plastic bottle 5$ vodka at room temperature.&nbsp;</p><p>I don’t eat when in front of the computer, makes you fat.</p>',
        NULL,
        0,
        1655791289
    ), (
        15,
        3,
        9,
        NULL,
        '<p>Mugs of coffee and cubes of cheese.</p>',
        NULL,
        0,
        1655791331
    ), (
        16,
        995,
        10,
        NULL,
        '<p>What are the different types of social media?</p><div><br></div>',
        NULL,
        0,
        1656101542
    ), (
        17,
        1016,
        10,
        16,
        '<p>The four main categories of social platforms are these:</p><p><br></p><p>Social networks. People use these networks to connect with one another and share information, thoughts and ideas. The focus of these networks is usually on the user. User profiles help participants identify other users with common interests or concerns. Facebook and LinkedIn are good examples.</p><p><br></p><p>Media-sharing networks. These networks focus is on content. For example, on YouTube, interaction is around videos that users create. Other media-sharing networks are TikTok and Instagram. Streaming platforms like Twitch are considered a subset of this category.</p><p><br></p><p>Community-based networks. The focus of this type of social network is in-depth discussion, much like a blog forum. Users leave prompts for discussion that spiral into detailed comment threads. Communities often form around select topics. Reddit is an example of a community-based network.</p><p><br></p><p>Review board networks. With these networks, the focus is on a review, usually of a product or service. For example, on Yelp, users can write reviews on restaurants and endorse each other\'s reviews to boost visibility.</p>',
        NULL,
        0,
        1656101670
    ), (
        18,
        870,
        10,
        NULL,
        '<p>What are enterprise social media best practices?</p><div><br></div>',
        NULL,
        0,
        1656101717
    ), (
        19,
        929,
        10,
        18,
        '<p>It is important for companies to have a social media strategy and establish social media goals. These help to build trust, educate their target audience and create brand awareness. They also enable real people to find and learn about a business.<br></p>',
        NULL,
        0,
        1656101751
    );

-- --------------------------------------------------------

--

-- Table structure for table `forum_topic_reports`

--

CREATE TABLE
    `forum_topic_reports` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `topic_id` int(10) UNSIGNED DEFAULT NULL,
        `topic_post_id` int(10) UNSIGNED DEFAULT NULL,
        `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `forum_topic_reports`

--

INSERT INTO
    `forum_topic_reports` (
        `id`,
        `user_id`,
        `topic_id`,
        `topic_post_id`,
        `message`,
        `created_at`
    )
VALUES (
        1,
        996,
        NULL,
        18,
        'This is a spam comment.',
        1656323052
    );

-- --------------------------------------------------------

--

-- Table structure for table `forum_translations`

--

CREATE TABLE
    `forum_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `forum_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `description` text COLLATE utf8mb4_unicode_ci
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `forum_translations`

--

INSERT INTO
    `forum_translations` (
        `id`,
        `forum_id`,
        `locale`,
        `title`,
        `description`
    )
VALUES (
        1,
        1,
        'en',
        'Lifestyle',
        'Lifestyle is the interests, opinions, behaviours, and behavioural orientations of an individual, group, or culture. The term was introduced by Austrian psychologist Alfred Adler in his 1929 book, The Case of Miss R., with the meaning of \"a person\'s basic character as established early in childhood\".'
    ), (
        2,
        2,
        'en',
        'Beauty & Makeup',
        'How to create your natural skincare perfect'
    ), (
        3,
        3,
        'en',
        'Food & Beverage',
        'A practical forum to take your cooking skills from dull to delicious'
    ), (
        4,
        4,
        'en',
        'Travel',
        'How You Can Afford a Life of Travel and Adventure!'
    ), (
        5,
        5,
        'en',
        'Music',
        'Discuss music with The World\'s Top instructors'
    ), (
        6,
        6,
        'en',
        'Marketing',
        'Marketing is the process of exploring.'
    ), (
        7,
        7,
        'en',
        'Digital Marketing',
        'Master Digital Marketing Strategy'
    ), (
        8,
        8,
        'en',
        'Public Relations',
        'Everything you need to know to be successful at PR'
    ), (
        9,
        9,
        'en',
        'Advertising',
        'Learn the inner workings of a massive digital industry'
    ), (
        10,
        10,
        'en',
        'Social Media',
        'MASTER online marketing on Twitter, Pinterest, Instagram'
    );

-- --------------------------------------------------------

--

-- Table structure for table `groups`

--

CREATE TABLE
    `groups` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `discount` int(11) DEFAULT NULL,
        `commission` int(11) DEFAULT NULL,
        `status` enum('active', 'inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `groups`

--

INSERT INTO
    `groups` (
        `id`,
        `creator_id`,
        `name`,
        `discount`,
        `commission`,
        `status`,
        `created_at`
    )
VALUES (
        2,
        1,
        'Vip Instructors',
        20,
        10,
        'active',
        1613379096
    ), (
        3,
        1,
        'Special Students',
        10,
        NULL,
        'active',
        1614530208
    );

-- --------------------------------------------------------

--

-- Table structure for table `groups_registration_packages`

--

CREATE TABLE
    `groups_registration_packages` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `group_id` int(10) UNSIGNED NOT NULL,
        `instructors_count` int(11) DEFAULT NULL,
        `students_count` int(11) DEFAULT NULL,
        `courses_capacity` int(11) DEFAULT NULL,
        `courses_count` int(11) DEFAULT NULL,
        `meeting_count` int(11) DEFAULT NULL,
        `status` enum('disabled', 'active') COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Table structure for table `group_users`

--

CREATE TABLE
    `group_users` (
        `id` int(10) UNSIGNED NOT NULL,
        `group_id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `group_users`

--

INSERT INTO
    `group_users` (
        `id`,
        `group_id`,
        `user_id`,
        `created_at`
    )
VALUES (64, 3, 996, 1625974235), (65, 2, 3, 1625974258), (66, 2, 1016, 1625974260);

-- --------------------------------------------------------

--

-- Table structure for table `home_sections`

--

CREATE TABLE
    `home_sections` (
        `id` int(10) UNSIGNED NOT NULL,
        `name` enum(
            'featured_classes',
            'latest_bundles',
            'latest_classes',
            'best_rates',
            'trend_categories',
            'full_advertising_banner',
            'best_sellers',
            'discount_classes',
            'free_classes',
            'store_products',
            'testimonials',
            'subscribes',
            'find_instructors',
            'reward_program',
            'become_instructor',
            'forum_section',
            'video_or_image_section',
            'instructors',
            'half_advertising_banner',
            'organizations',
            'blog'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `order` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `home_sections`

--

INSERT INTO
    `home_sections` (`id`, `name`, `order`)
VALUES (1, 'latest_classes', 2), (2, 'featured_classes', 1), (3, 'latest_bundles', 3), (4, 'best_rates', 4), (5, 'best_sellers', 6), (6, 'free_classes', 7), (7, 'trend_categories', 5), (
        8,
        'full_advertising_banner',
        8
    ), (9, 'discount_classes', 9), (10, 'store_products', 10), (11, 'subscribes', 11), (12, 'become_instructor', 12), (13, 'forum_section', 13), (14, 'find_instructors', 14), (15, 'reward_program', 16), (16, 'instructors', 17), (
        17,
        'video_or_image_section',
        15
    ), (18, 'testimonials', 19), (
        19,
        'half_advertising_banner',
        18
    ), (20, 'organizations', 20), (21, 'blog', 21);

-- --------------------------------------------------------

--

-- Table structure for table `jazzcash_transactions`

--

CREATE TABLE
    `jazzcash_transactions` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `txn_ref_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `order` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Order data fields and values',
        `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Jazzcash request data fields and values',
        `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'Jazzcash response data fields and values',
        `status` enum(
            'pending',
            'error',
            'completed'
        ) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Table structure for table `meetings`

--

CREATE TABLE
    `meetings` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `amount` int(10) UNSIGNED DEFAULT NULL,
        `discount` int(11) DEFAULT NULL,
        `in_person` tinyint(1) NOT NULL DEFAULT '0',
        `in_person_amount` int(11) DEFAULT NULL,
        `group_meeting` tinyint(1) NOT NULL DEFAULT '0',
        `online_group_min_student` int(11) DEFAULT NULL,
        `online_group_max_student` int(11) DEFAULT NULL,
        `online_group_amount` int(11) DEFAULT NULL,
        `in_person_group_min_student` int(11) DEFAULT NULL,
        `in_person_group_max_student` int(11) DEFAULT NULL,
        `in_person_group_amount` int(11) DEFAULT NULL,
        `disabled` tinyint(1) DEFAULT '0',
        `created_at` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `meetings`

--

INSERT INTO
    `meetings` (
        `id`,
        `creator_id`,
        `amount`,
        `discount`,
        `in_person`,
        `in_person_amount`,
        `group_meeting`,
        `online_group_min_student`,
        `online_group_max_student`,
        `online_group_amount`,
        `in_person_group_min_student`,
        `in_person_group_max_student`,
        `in_person_group_amount`,
        `disabled`,
        `created_at`
    )
VALUES (
        29,
        923,
        100,
        10,
        1,
        200,
        0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1625916131
    ), (
        30,
        1015,
        100,
        NULL,
        1,
        250,
        1,
        20,
        200,
        50,
        5,
        30,
        150,
        0,
        1625938321
    ), (
        31,
        934,
        100,
        NULL,
        0,
        NULL,
        0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1625939199
    ), (
        32,
        929,
        200,
        NULL,
        1,
        500,
        0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1625939298
    ), (
        33,
        870,
        100,
        NULL,
        1,
        200,
        1,
        20,
        100,
        80,
        5,
        30,
        150,
        0,
        1625939436
    ), (
        34,
        3,
        50,
        NULL,
        0,
        NULL,
        0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1625939607
    ), (
        35,
        1016,
        60,
        NULL,
        0,
        NULL,
        0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        1625941278
    );

-- --------------------------------------------------------

--

-- Table structure for table `meeting_times`

--

CREATE TABLE
    `meeting_times` (
        `id` int(10) UNSIGNED NOT NULL,
        `meeting_id` int(10) UNSIGNED NOT NULL,
        `meeting_type` enum('all', 'in_person', 'online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
        `day_label` enum(
            'saturday',
            'sunday',
            'monday',
            'tuesday',
            'wednesday',
            'thursday',
            'friday'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `time` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `description` text COLLATE utf8mb4_unicode_ci,
        `created_at` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `meeting_times`

--

INSERT INTO
    `meeting_times` (
        `id`,
        `meeting_id`,
        `meeting_type`,
        `day_label`,
        `time`,
        `description`,
        `created_at`
    )
VALUES (
        84,
        29,
        'all',
        'monday',
        '09:00AM-10:00AM',
        NULL,
        1625916149
    ), (
        85,
        29,
        'all',
        'wednesday',
        '08:30AM-10:00AM',
        NULL,
        1625916235
    ), (
        86,
        29,
        'all',
        'thursday',
        '06:30PM-07:30PM',
        NULL,
        1625916372
    ), (
        87,
        29,
        'all',
        'monday',
        '07:00PM-09:00PM',
        NULL,
        1625916397
    ), (
        88,
        29,
        'all',
        'thursday',
        '09:30PM-10:30PM',
        NULL,
        1625916437
    ), (
        89,
        29,
        'all',
        'wednesday',
        '10:15AM-11:45AM',
        NULL,
        1625916467
    ), (
        90,
        29,
        'all',
        'wednesday',
        '07:30PM-09:00PM',
        NULL,
        1625916508
    ), (
        91,
        29,
        'all',
        'tuesday',
        '09:00PM-10:00PM',
        NULL,
        1625916577
    ), (
        92,
        29,
        'all',
        'friday',
        '08:30PM-10:00PM',
        NULL,
        1625916611
    ), (
        93,
        30,
        'all',
        'saturday',
        '10:00AM-11:30AM',
        NULL,
        1625938350
    ), (
        94,
        30,
        'all',
        'sunday',
        '05:00PM-06:00PM',
        NULL,
        1625938383
    ), (
        95,
        30,
        'all',
        'sunday',
        '06:30PM-07:30PM',
        NULL,
        1625938416
    ), (
        96,
        30,
        'all',
        'monday',
        '09:45AM-10:15AM',
        NULL,
        1625938436
    ), (
        97,
        30,
        'all',
        'monday',
        '11:00AM-11:45AM',
        NULL,
        1625938462
    ), (
        98,
        30,
        'all',
        'monday',
        '06:00PM-07:30PM',
        NULL,
        1625938497
    ), (
        99,
        30,
        'all',
        'tuesday',
        '08:30AM-09:30AM',
        NULL,
        1625938517
    ), (
        100,
        30,
        'all',
        'wednesday',
        '10:30AM-11:30AM',
        NULL,
        1625938585
    ), (
        101,
        30,
        'all',
        'thursday',
        '04:50PM-05:50PM',
        NULL,
        1625938619
    ), (
        102,
        30,
        'all',
        'wednesday',
        '06:00PM-07:30PM',
        NULL,
        1625938647
    ), (
        103,
        30,
        'all',
        'wednesday',
        '08:30PM-09:45PM',
        NULL,
        1625938681
    ), (
        104,
        30,
        'all',
        'wednesday',
        '10:00PM-10:30PM',
        NULL,
        1625938700
    ), (
        105,
        30,
        'all',
        'thursday',
        '06:00PM-08:00PM',
        NULL,
        1625938755
    ), (
        106,
        30,
        'all',
        'friday',
        '10:15AM-11:45AM',
        NULL,
        1625938776
    ), (
        107,
        32,
        'all',
        'wednesday',
        '09:00AM-11:30AM',
        NULL,
        1625939319
    ), (
        108,
        32,
        'all',
        'monday',
        '09:00AM-10:30AM',
        NULL,
        1625939339
    ), (
        109,
        32,
        'all',
        'monday',
        '10:45AM-11:45AM',
        NULL,
        1625939358
    ), (
        110,
        32,
        'all',
        'tuesday',
        '06:00PM-07:30PM',
        NULL,
        1625939384
    ), (
        111,
        33,
        'all',
        'monday',
        '08:00AM-09:30AM',
        NULL,
        1625939462
    ), (
        112,
        33,
        'all',
        'thursday',
        '08:30AM-09:30AM',
        NULL,
        1625939477
    ), (
        113,
        33,
        'all',
        'tuesday',
        '10:30AM-11:30AM',
        NULL,
        1625939493
    ), (
        114,
        33,
        'all',
        'wednesday',
        '08:00AM-09:00AM',
        NULL,
        1625939508
    ), (
        115,
        33,
        'all',
        'thursday',
        '09:30AM-10:30AM',
        NULL,
        1625939527
    ), (
        116,
        33,
        'all',
        'monday',
        '10:30AM-11:30AM',
        NULL,
        1625939551
    ), (
        117,
        34,
        'all',
        'monday',
        '09:30AM-10:30AM',
        NULL,
        1625939631
    ), (
        118,
        34,
        'all',
        'tuesday',
        '09:30AM-10:30AM',
        NULL,
        1625939646
    ), (
        119,
        34,
        'all',
        'monday',
        '10:45AM-11:45AM',
        NULL,
        1625939660
    ), (
        120,
        34,
        'all',
        'wednesday',
        '08:00AM-10:00AM',
        NULL,
        1625939678
    ), (
        121,
        34,
        'all',
        'wednesday',
        '10:30AM-11:30AM',
        NULL,
        1625939700
    ), (
        122,
        34,
        'all',
        'wednesday',
        '05:00PM-06:30PM',
        NULL,
        1625939744
    ), (
        123,
        34,
        'all',
        'thursday',
        '08:00PM-09:30PM',
        NULL,
        1625939763
    ), (
        124,
        35,
        'all',
        'monday',
        '09:30AM-10:30AM',
        NULL,
        1625941315
    ), (
        125,
        35,
        'all',
        'monday',
        '11:00AM-11:45AM',
        NULL,
        1625941331
    ), (
        126,
        35,
        'all',
        'tuesday',
        '08:00AM-09:30AM',
        NULL,
        1625941347
    ), (
        127,
        35,
        'all',
        'wednesday',
        '08:00AM-09:30AM',
        NULL,
        1625941388
    ), (
        128,
        35,
        'all',
        'wednesday',
        '10:00AM-11:30AM',
        NULL,
        1625941418
    ), (
        129,
        35,
        'all',
        'monday',
        '05:00PM-06:30PM',
        NULL,
        1625941460
    ), (
        130,
        35,
        'all',
        'wednesday',
        '08:00PM-09:30PM',
        NULL,
        1625941475
    ), (
        131,
        35,
        'all',
        'thursday',
        '08:00AM-09:00AM',
        NULL,
        1625941557
    ), (
        132,
        35,
        'all',
        'thursday',
        '09:30AM-10:30AM',
        NULL,
        1625941580
    ), (
        133,
        35,
        'all',
        'thursday',
        '10:45AM-11:45AM',
        NULL,
        1625941611
    ), (
        134,
        35,
        'all',
        'monday',
        '07:30PM-08:30PM',
        NULL,
        1625941640
    ), (
        135,
        35,
        'all',
        'thursday',
        '10:00PM-11:00PM',
        NULL,
        1625941668
    ), (
        136,
        35,
        'all',
        'monday',
        '09:00PM-10:00PM',
        NULL,
        1625941731
    ), (
        137,
        35,
        'all',
        'monday',
        '10:15PM-11:00PM',
        NULL,
        1625941832
    ), (
        138,
        35,
        'all',
        'friday',
        '09:00AM-10:00AM',
        NULL,
        1625941864
    ), (
        139,
        35,
        'all',
        'friday',
        '10:30AM-11:30AM',
        NULL,
        1625941879
    ), (
        140,
        31,
        'all',
        'monday',
        '08:40AM-09:40AM',
        NULL,
        1625942014
    ), (
        141,
        31,
        'all',
        'monday',
        '10:00AM-11:30AM',
        NULL,
        1625942028
    ), (
        142,
        31,
        'all',
        'monday',
        '05:00PM-06:30PM',
        NULL,
        1625942048
    ), (
        143,
        31,
        'all',
        'monday',
        '06:45PM-07:45PM',
        NULL,
        1625942079
    ), (
        144,
        31,
        'all',
        'monday',
        '08:00PM-09:30PM',
        NULL,
        1625942101
    ), (
        145,
        31,
        'all',
        'monday',
        '10:00PM-10:30PM',
        NULL,
        1625942137
    ), (
        146,
        31,
        'all',
        'tuesday',
        '08:30AM-09:30AM',
        NULL,
        1625942159
    ), (
        147,
        31,
        'all',
        'tuesday',
        '10:00AM-11:00AM',
        NULL,
        1625942173
    ), (
        148,
        31,
        'all',
        'tuesday',
        '06:00PM-07:00PM',
        NULL,
        1625942191
    ), (
        149,
        31,
        'all',
        'saturday',
        '09:30AM-10:30AM',
        NULL,
        1625942210
    ), (
        150,
        31,
        'all',
        'sunday',
        '08:30AM-09:30AM',
        NULL,
        1625942229
    ), (
        151,
        31,
        'all',
        'sunday',
        '09:45AM-10:00AM',
        NULL,
        1625942247
    ), (
        152,
        31,
        'all',
        'sunday',
        '10:30AM-11:45AM',
        NULL,
        1625942266
    ), (
        153,
        31,
        'all',
        'saturday',
        '10:45AM-11:45AM',
        NULL,
        1625942311
    ), (
        154,
        31,
        'all',
        'sunday',
        '05:00PM-06:30PM',
        NULL,
        1625942351
    ), (
        155,
        31,
        'all',
        'wednesday',
        '08:15AM-09:15AM',
        NULL,
        1625942379
    ), (
        156,
        31,
        'all',
        'wednesday',
        '09:30AM-10:30AM',
        NULL,
        1625942395
    ), (
        157,
        31,
        'all',
        'wednesday',
        '10:45AM-11:45AM',
        NULL,
        1625942414
    ), (
        158,
        31,
        'all',
        'thursday',
        '07:30AM-08:30AM',
        NULL,
        1625942446
    ), (
        159,
        31,
        'all',
        'thursday',
        '08:45AM-09:45AM',
        NULL,
        1625942461
    ), (
        160,
        31,
        'all',
        'thursday',
        '10:00AM-11:00AM',
        NULL,
        1625942474
    ), (
        161,
        31,
        'all',
        'thursday',
        '05:30PM-07:00PM',
        NULL,
        1625942499
    ), (
        162,
        31,
        'all',
        'friday',
        '09:00AM-10:00AM',
        NULL,
        1625942521
    ), (
        163,
        31,
        'all',
        'friday',
        '10:30AM-11:30AM',
        NULL,
        1625942564
    ), (
        164,
        31,
        'all',
        'tuesday',
        '08:00PM-09:00PM',
        NULL,
        1625942840
    ), (
        165,
        31,
        'all',
        'saturday',
        '06:00PM-07:00PM',
        NULL,
        1625943005
    ), (
        166,
        29,
        'in_person',
        'saturday',
        '09:30AM-10:30AM',
        'Business Management Workshop.',
        1646352042
    ), (
        167,
        32,
        'in_person',
        'saturday',
        '06:30PM-08:30PM',
        'School Management Workshop',
        1646352258
    ), (
        168,
        30,
        'in_person',
        'sunday',
        '10:00AM-11:30AM',
        'School Management Workshop.',
        1646352499
    ), (
        169,
        30,
        'in_person',
        'tuesday',
        '10:30AM-11:30AM',
        'Risk Management Workshop.',
        1646352560
    ), (
        170,
        30,
        'online',
        'friday',
        '04:30PM-05:30PM',
        NULL,
        1646352585
    ), (
        171,
        30,
        'online',
        'friday',
        '06:00PM-07:30PM',
        'Risk Management Workshop.',
        1646352619
    ), (
        172,
        30,
        'in_person',
        'friday',
        '08:00PM-09:30PM',
        'Risk Management Workshop.',
        1646352638
    ), (
        173,
        30,
        'in_person',
        'saturday',
        '12:15PM-01:45PM',
        'Risk Management Workshop.',
        1646352676
    );

-- --------------------------------------------------------

--

-- Table structure for table `migrations`

--

CREATE TABLE
    `migrations` (
        `id` int(10) UNSIGNED NOT NULL,
        `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `batch` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `migrations`

--

INSERT INTO
    `migrations` (`id`, `migration`, `batch`)
VALUES (
        1,
        '2014_10_12_000000_create_users_table',
        1
    ), (
        2,
        '2014_10_12_100000_create_password_resets_table',
        1
    ), (
        3,
        '2020_08_09_145553_create_roles_table',
        1
    ), (
        4,
        '2020_08_09_145834_create_sections_table',
        1
    ), (
        5,
        '2020_08_09_145926_create_permissions_table',
        1
    ), (
        6,
        '2020_08_24_163003_create_webinars_table',
        1
    ), (
        7,
        '2020_08_24_164823_create_webinar_partner_teacher_table',
        1
    ), (
        8,
        '2020_08_24_165658_create_tags_table',
        1
    ), (
        9,
        '2020_08_24_165835_create_webinar_tag_table',
        1
    ), (
        10,
        '2020_08_24_171611_create_categories_table',
        1
    ), (
        11,
        '2020_08_29_052437_create_filters_table',
        1
    ), (
        12,
        '2020_08_29_052900_create_filter_options_table',
        1
    ), (
        13,
        '2020_08_29_054455_add_category_id_in_webinar_table',
        1
    ), (
        14,
        '2020_09_01_174741_add_seo_description_and_start_end_time_in_webinar_table',
        1
    ), (
        15,
        '2020_09_02_180508_create_webinar_filter_option_table',
        1
    ), (
        16,
        '2020_09_02_193923_create_tickets_table',
        1
    ), (
        17,
        '2020_09_02_210447_create_sessions_table',
        1
    ), (
        18,
        '2020_09_02_212642_create_files_table',
        1
    ), (
        19,
        '2020_09_03_175543_create_faqs_table',
        1
    ), (
        20,
        '2020_09_08_175539_delete_webinar_tag_and_update_tag_table',
        1
    ), (
        21,
        '2020_09_09_154522_create_quizzes_table',
        1
    ), (
        22,
        '2020_09_09_174646_create_quizzes_questions_table',
        1
    ), (
        23,
        '2020_09_09_182726_create_quizzes_questions_answers_table',
        1
    ), (
        24,
        '2020_09_14_160028_create_prerequisites_table',
        1
    ), (
        25,
        '2020_09_14_183235_nullable_item_id_in_quizzes_table',
        1
    ), (
        26,
        '2020_09_14_190110_create_webinar_quizzes_table',
        1
    ), (
        27,
        '2020_09_16_163835_create_quizzes_results_table',
        1
    ), (
        28,
        '2020_09_24_102115_add_total_mark_in_quize_table',
        1
    ), (
        29,
        '2020_09_24_132242_create_comment_table',
        1
    ), (
        30,
        '2020_09_24_132639_create_favorites_table',
        1
    ), (
        31,
        '2020_09_26_181200_create_certificate_table',
        1
    ), (
        32,
        '2020_09_26_181444_create_certificates_templates_table',
        1
    ), (
        33,
        '2020_09_30_170451_add_slug_in_webinars_table',
        1
    ), (
        34,
        '2020_09_30_191202_create_purchases_table',
        1
    ), (
        35,
        '2020_10_02_063828_create_rating_table',
        1
    ), (
        36,
        '2020_10_02_094723_edit_table_and_add_foreign_key',
        1
    ), (
        37,
        '2020_10_08_055408_add_reviwes_table',
        1
    ), (
        38,
        '2020_10_08_084100_edit_status_comments_table',
        1
    ), (
        39,
        '2020_10_08_121041_create_meetings_table',
        2
    ), (
        40,
        '2020_10_08_121621_create_meeting_times_table',
        2
    ), (
        41,
        '2020_10_08_121848_create_meeting_requests_table',
        2
    ), (
        42,
        '2020_10_15_172913_add_about_and_head_line_in_users_table',
        2
    ), (
        43,
        '2020_10_15_173645_create_follow_table',
        2
    ), (
        46,
        '2020_10_17_100606_create_badges_table',
        3
    ), (
        47,
        '2020_10_08_121848_create_reserve_meetings_table',
        4
    ), (
        48,
        '2020_10_20_193013_update_users_table',
        5
    ), (
        50,
        '2020_10_18_220323_convert_creatore_user_id_to_creator_id',
        7
    ), (
        51,
        '2020_10_22_153502_create_cart_table',
        7
    ), (
        52,
        '2020_10_22_154636_create_orders_table',
        7
    ), (
        53,
        '2020_10_22_155930_create_order_items_table',
        7
    ), (
        54,
        '2020_10_23_204203_create_sales_table',
        7
    ), (
        55,
        '2020_10_23_211459_create_accounting_table',
        7
    ), (
        56,
        '2020_10_23_213515_create_discounts_table',
        7
    ), (
        57,
        '2020_10_23_213934_create_discount_users_table',
        7
    ), (
        58,
        '2020_10_23_235444_create_ticket_users_table',
        7
    ), (
        59,
        '2020_10_25_172331_create_groups_table',
        7
    ), (
        60,
        '2020_10_25_172523_create_group_users_table',
        7
    ), (
        62,
        '2020_11_02_202754_edit_email_in_users_table',
        8
    ), (
        63,
        '2020_11_03_200314_edit_some_tables',
        9
    ), (
        64,
        '2020_11_06_193300_create_settings_table',
        10
    ), (
        67,
        '2020_11_09_202533_create_feature_webinars_table',
        11
    ), (
        68,
        '2020_11_10_193459_edit_webinars_table',
        12
    ), (
        69,
        '2020_11_11_203344_create_trend_categories_table',
        13
    ), (
        72,
        '2020_11_11_222833_create_blog_categories_table',
        14
    ), (
        75,
        '2020_11_11_231204_create_blog_table',
        15
    ), (
        76,
        '2020_10_25_223247_add_sub_title_tickets_table',
        16
    ), (
        77,
        '2020_10_28_001340_add_count_in_discount_users_table',
        16
    ), (
        78,
        '2020_10_28_221509_create_payment_channels_table',
        16
    ), (
        79,
        '2020_11_01_120909_change_class_name_enum_payment_channels_table',
        16
    ), (
        80,
        '2020_11_07_233948_add_some_raw_in_order_items__table',
        16
    ), (
        81,
        '2020_11_10_061350_add_discount_id_in_order_items_table',
        16
    ), (
        82,
        '2020_11_10_071651_decimal_orders_order_items_sales_table',
        16
    ), (
        83,
        '2020_11_11_193138_change_reference_id_type_in_orders_tabel',
        16
    ), (
        84,
        '2020_11_11_222413_change_meeting_id_to_meeting_time_id_in_order_items_table',
        16
    ), (
        85,
        '2020_11_11_225421_add_locked_at_and_reserved_at_and_change_request_time_to_day_in_reserve_meetings_table',
        17
    ), (
        86,
        '2020_11_12_000116_add_type_in_orders_table',
        17
    ), (
        87,
        '2020_11_12_001912_change_meeting_id_to_meeting_time_id_in_accounting_table',
        17
    ), (
        88,
        '2020_11_12_133009_decimal_paid_amount_in_reserve_meetings_table',
        17
    ), (
        91,
        '2020_11_12_170109_add_blog_id_to_comments_table',
        18
    ), (
        98,
        '2020_11_14_201228_add_bio_and_ban_to_users_table',
        20
    ), (
        99,
        '2020_11_14_224447_create_users_badges_table',
        21
    ), (
        100,
        '2020_11_14_233319_create_payout_request_table',
        22
    ), (
        101,
        '2020_11_15_010622_change_byer_id_and_add_seller_id_in_sales_table',
        22
    ), (
        102,
        '2020_11_16_195009_create_supports_table',
        22
    ), (
        103,
        '2020_11_16_201814_create_support_departments_table',
        22
    ), (
        107,
        '2020_11_16_202254_create_supports_table',
        23
    ), (
        109,
        '2020_11_17_192744_create_support_conversations_table',
        24
    ), (
        110,
        '2020_11_17_072348_create_offline_payments_table',
        25
    ), (
        111,
        '2020_11_19_191943_add_replied_status_to_comments_table',
        25
    ), (
        114,
        '2020_11_20_215748_create_subscribes_table',
        26
    ), (
        115,
        '2020_11_21_185519_create_notification_templates_table',
        27
    ), (
        116,
        '2020_11_22_210832_create_promotions_table',
        28
    ), (
        118,
        '2020_11_23_194153_add_status_column_to_discounts_table',
        29
    ), (
        119,
        '2020_11_23_213532_create_users_occupations_table',
        30
    ), (
        120,
        '2020_11_30_220855_change_amount_in_payouts_table',
        31
    ), (
        121,
        '2020_11_30_231334_add_pay_date_in_offline_payments_table',
        31
    ), (
        122,
        '2020_11_30_233018_add_charge_enum_in_type_in_orders_table',
        31
    ), (
        123,
        '2020_12_01_193948_create_testimonials_table',
        32
    ), (
        124,
        '2020_12_02_202043_edit_and_add_types_to_webinars_table',
        33
    ), (
        128,
        '2020_12_04_204048_add_column_creator_id_to_some_tables',
        34
    ), (
        129,
        '2020_12_05_205320_create_text_lessons_table',
        35
    ), (
        130,
        '2020_12_05_210052_create_text_lessons_attachments_table',
        36
    ), (
        131,
        '2020_12_06_215701_add_order_column_to_webinar_items_tables',
        37
    ), (
        132,
        '2020_12_11_114844_add_column_storage_to_files_table',
        38
    ), (
        133,
        '2020_12_07_211009_add_subscribe_id_in_order_items_table',
        39
    ), (
        134,
        '2020_12_07_211657_nullable_payment_method_in_orders_table',
        39
    ), (
        135,
        '2020_12_07_212306_add_subscribe_enum__type_in_orders_table',
        39
    ), (
        136,
        '2020_12_07_223237_changes_in_sales_table',
        39
    ), (
        137,
        '2020_12_07_224925_add_subscribe_id_in_accounting_table',
        39
    ), (
        138,
        '2020_12_07_230200_create_subscribe_uses_table',
        39
    ), (
        139,
        '2020_12_11_123209_add_subscribe_type_account_in_accounting_table',
        39
    ), (
        140,
        '2020_12_11_132819_add_sale_id_in_subscribe_use_in_subscribe_uses_table',
        39
    ), (
        141,
        '2020_12_11_135824_add_subscribe_payment_method_in_sales_table',
        39
    ), (
        143,
        '2020_12_13_205751_create_advertising_banners_table',
        41
    ), (
        145,
        '2020_12_14_204251_create_become_instructors_table',
        42
    ), (
        146,
        '2020_11_12_232207_create_reports_table',
        43
    ), (
        147,
        '2020_11_12_232207_create_comments_reports_table',
        44
    ), (
        148,
        '2020_12_17_210822_create_webinar_reports_table',
        45
    ), (
        150,
        '2020_12_18_181551_create_notifications_table',
        46
    ), (
        151,
        '2020_12_18_195833_create_notifications_status_table',
        47
    ), (
        152,
        '2020_12_19_195152_add_status_column_to_payment_channels_table',
        48
    ), (
        154,
        '2020_12_20_231434_create_contacts_table',
        49
    ), (
        155,
        '2020_12_21_210345_edit_quizzes_table',
        50
    ), (
        156,
        '2020_12_24_221715_add_column_to_users_table',
        50
    ), (
        157,
        '2020_12_24_084728_create_special_offers_table',
        51
    ), (
        158,
        '2020_12_25_204545_add_promotion_enum_type_in_orders_table',
        51
    ), (
        159,
        '2020_12_25_205139_add_promotion_id_in_order_items_table',
        51
    ), (
        160,
        '2020_12_25_205811_add_promotion_id_in_accounting_table',
        51
    ), (
        161,
        '2020_12_25_210341_add_promotion_id_in_sales_table',
        51
    ), (
        162,
        '2020_12_25_212453_add_promotion_type_account_enum_in_accounting_table',
        51
    ), (
        163,
        '2020_12_25_231005_add_promotion_type_enum_in_sales_table',
        51
    ), (
        166,
        '2020_12_29_192943_add_column_reply_to_contacts_table',
        53
    ), (
        167,
        '2020_12_30_225001_create_payu_transactions_table',
        54
    ), (
        168,
        '2021_01_06_202649_edit_column_password_from_users_table',
        55
    ), (
        169,
        '2021_01_08_134022_add_api_column_to_sessions_table',
        56
    ), (
        170,
        '2021_01_10_215540_add_column_store_type_to_accounting',
        57
    ), (
        173,
        '2021_01_13_214145_edit_carts_table',
        58
    ), (
        174,
        '2021_01_13_230725_delete_column_type_from_orders_table',
        59
    ), (
        175,
        '2021_01_20_214653_add_discount_column_to_reserve_meetings_table',
        60
    ), (
        177,
        '2021_01_27_193915_add_foreign_key_to_support_conversations_table',
        61
    ), (
        178,
        '2021_02_02_203821_add_viewed_at_column_to_comments_table',
        62
    ), (
        180,
        '2021_02_12_134504_add_financial_approval_column_to_users_table',
        64
    ), (
        181,
        '2021_02_12_131916_create_verifications_table',
        65
    ), (
        182,
        '2021_02_15_221518_add_certificate_to_users_table',
        66
    ), (
        183,
        '2021_02_16_194103_add_cloumn_private_to_webinars_table',
        66
    ), (
        184,
        '2021_02_18_213601_edit_rates_column_webinar_reviews_table',
        67
    ), (
        188,
        '2021_02_27_212131_create_noticeboards_table',
        68
    ), (
        189,
        '2021_02_27_213940_create_noticeboards_status_table',
        68
    ), (
        191,
        '2021_02_28_195025_edit_groups_table',
        69
    ), (
        192,
        '2021_03_06_205221_create_newsletters_table',
        70
    ), (
        193,
        '2021_03_12_105526_add_is_main_column_to_roles_table',
        71
    ), (
        194,
        '2021_03_12_202441_add_description_column_to_feature_webinars_table',
        72
    ), (
        195,
        '2021_03_18_130248_edit_status_column_from_supports_table',
        73
    ), (
        196,
        '2021_03_19_113306_add_column_order_to_categories_table',
        74
    ), (
        197,
        '2021_03_19_115939_add_column_order_to_filter_options_table',
        75
    ), (
        199,
        '2021_03_24_100005_edit_discounts_table',
        76
    ), (
        200,
        '2021_03_27_204551_create_sales_status_table',
        77
    ), (
        202,
        '2021_03_28_182558_add_column_page_to_settings_table',
        78
    ), (
        206,
        '2021_03_31_195835_add_new_status_in_reserve_meetings_table',
        79
    ), (
        207,
        '2020_12_12_204705_create_course_learning_table',
        80
    ), (
        208,
        '2021_04_19_195452_add_meta_description_column_to_blog_table',
        81
    ), (
        209,
        '2021_04_21_200131_add_icon_column_to_categories_table',
        82
    ), (
        210,
        '2021_04_21_203746_add_is_popular_column_to_subscribes_table',
        83
    ), (
        211,
        '2021_04_25_203955_add_is_charge_account_column_to_order_items',
        84
    ), (
        212,
        '2021_04_25_203955_add_is_charge_account_column_to_orders',
        85
    ), (
        213,
        '2021_05_13_111720_add_moderator_secret_column_to_sessions_table',
        86
    ), (
        214,
        '2021_05_13_123920_add_zoom_id_column_to_sessions_table',
        87
    ), (
        215,
        '2021_05_14_182848_create_session_reminds_table',
        88
    ), (
        217,
        '2021_05_25_193743_create_users_zoom_api_table',
        89
    ), (
        218,
        '2021_05_25_205716_add_new_column_to_sessions_table',
        90
    ), (
        219,
        '2021_05_27_095128_add_user_id_to_newsletters_table',
        91
    ), (
        220,
        '2020_12_27_192459_create_pages_table',
        92
    ), (
        221,
        '2021_07_03_222439_add_special_offer_id_to_cart_table',
        93
    ), (
        222,
        '2021_09_02_101422_add_payment_data_to_orders_table',
        94
    ), (
        223,
        '2021_09_02_110519_add_sender_id_to_notifications_table',
        95
    ), (
        224,
        '2021_09_06_113524_create_webinar_chapters_table',
        96
    ), (
        228,
        '2021_09_06_114459_add_chapter_id_to_files_table',
        97
    ), (
        229,
        '2021_09_06_114532_add_chapter_id_to_text_lessons_table',
        97
    ), (
        230,
        '2021_09_06_114547_add_chapter_id_to_sessions_table',
        97
    ), (
        231,
        '2021_09_13_134659_add_chapter_id_to_quizzes_table',
        98
    ), (
        234,
        '2021_09_14_122505_create_affiliates_table',
        100
    ), (
        235,
        '2021_09_14_122117_create_affiliates_codes_table',
        101
    ), (
        239,
        '2021_09_14_142927_add_affiliate_column_to_users_table',
        105
    ), (
        241,
        '2021_09_14_142302_add_affiliate_column_to_accounting_table',
        106
    ), (
        244,
        '2021_09_18_155914_create_blog_translations_table',
        107
    ), (
        246,
        '2021_09_19_190400_create_page_translations_table',
        108
    ), (
        248,
        '2021_09_19_203526_create_setting_translations_table',
        109
    ), (
        250,
        '2021_09_20_140241_create_advertising_banners_translations_table',
        110
    ), (
        252,
        '2021_09_20_175518_create_category_translations_table',
        111
    ), (
        255,
        '2021_09_20_184724_create_filter_translations_table',
        112
    ), (
        256,
        '2021_09_20_185132_create_filter_option_translations_table',
        112
    ), (
        258,
        '2021_09_21_160650_create_subscribe_translations_table',
        113
    ), (
        260,
        '2021_09_21_162922_create_promotion_translations_table',
        114
    ), (
        262,
        '2021_09_21_164954_create_testimonial_translations_table',
        115
    ), (
        264,
        '2021_09_21_182251_create_feature_webinar_translations_table',
        116
    ), (
        266,
        '2021_09_21_184239_create_certificate_template_translations_table',
        117
    ), (
        268,
        '2021_09_21_195731_create_support_department_translations_table',
        118
    ), (
        270,
        '2021_09_21_201512_create_badge_translations_table',
        119
    ), (
        272,
        '2021_09_22_120723_create_webinar_translations_table',
        120
    ), (
        274,
        '2021_09_22_135518_create_ticket_translations_table',
        121
    ), (
        276,
        '2021_09_22_144342_create_webinar_chapter_translations_table',
        122
    ), (
        278,
        '2021_09_22_162502_create_session_translations_table',
        123
    ), (
        280,
        '2021_09_22_172309_create_file_translations_table',
        124
    ), (
        282,
        '2021_09_22_173500_create_faq_translations_table',
        125
    ), (
        284,
        '2021_09_23_094903_create_text_lesson_translations_table',
        126
    ), (
        286,
        '2021_09_27_194537_create_quiz_translations_table',
        127
    ), (
        288,
        '2021_09_28_112529_create_quiz_question_translations_table',
        128
    ), (
        290,
        '2021_09_28_122513_create_quizzes_questions_answer_translations_table',
        129
    ), (
        291,
        '2021_12_03_103010_add_agora_session_api_to_sessions_table',
        130
    ), (
        292,
        '2021_12_03_103558_add_agora_to_sessions_table',
        131
    ), (
        293,
        '2021_12_03_114009_create_agora_history_table',
        132
    ), (
        295,
        '2021_12_04_183524_create_regions_table',
        133
    ), (
        298,
        '2021_12_25_151304_add_new_column_to_meetings_table',
        135
    ), (
        299,
        '2021_12_26_142304_add_new_column_to_meeting_times_table',
        136
    ), (
        302,
        '2022_01_01_162247_add_new_column_to_reserve_meetings_table',
        137
    ), (
        305,
        '2022_01_02_142927_create_rewards_table',
        138
    ), (
        307,
        '2022_01_03_153517_create_rewards_accounting_table',
        139
    ), (
        308,
        '2022_01_04_161756_add_score_column_to_badges_table',
        140
    ), (
        309,
        '2022_01_04_165147_add_points_column_to_webinars_table',
        141
    ), (
        312,
        '2022_01_08_154504_edit_storage_column_and_add_new_value_to_files_table',
        142
    ), (
        313,
        '2022_01_11_162839_add_timezone_column_to_users_table',
        143
    ), (
        314,
        '2022_01_12_142238_add_timezone_column_to_webinars_table',
        144
    ), (
        315,
        '2022_01_15_131828_create_registration_packages_table',
        145
    ), (
        319,
        '2022_01_15_203133_edit_columns_in_accounting_table',
        146
    ), (
        320,
        '2022_01_16_102825_edit_columns_in_order_items_table',
        147
    ), (
        321,
        '2022_01_17_152605_add_registration_package_id_to_sales_table',
        148
    ), (
        322,
        '2022_01_18_103414_create_users_registration_packages_table',
        149
    ), (
        323,
        '2022_01_18_113331_create_groups_registration_packages_table',
        150
    ), (
        325,
        '2022_01_20_110119_add_become_instructor_id_column_to_order_items_table',
        152
    ), (
        326,
        '2022_01_18_160228_add_column_role_to_become_instructors_table',
        153
    ), (
        327,
        '2022_01_26_080434_add_reserve_date_columns_to_reserve_meetings_table',
        154
    ), (
        328,
        '2022_01_28_094259_edit_column_in_discounts_table',
        155
    ), (
        329,
        '2022_01_28_094515_create_discount_courses_table',
        155
    ), (
        330,
        '2022_01_28_094527_create_discount_groups_table',
        155
    ), (
        331,
        '2022_01_31_093231_add_column_description_to_meeting_times_table',
        156
    ), (
        332,
        '2022_01_31_093306_add_column_description_to_reserve_meetings_table',
        156
    ), (
        334,
        '2022_02_01_092922_create_newsletters_history_table',
        157
    ), (
        335,
        '2022_02_01_104529_create_discount_categories_table',
        158
    ), (
        337,
        '2022_02_02_092820_add_attachment_column_to_offline_payments_table',
        159
    ), (
        339,
        '2022_02_02_184235_add_column_video_demo_source_to_webinars_table',
        160
    ), (
        340,
        '2021_12_05_193333_add_new_column_to_users_table',
        161
    ), (
        341,
        '2022_02_27_072819_add_forign_key_for_region_to_users_table',
        162
    ), (
        347,
        '2022_03_05_123830_create_product_categories_table',
        163
    ), (
        348,
        '2022_03_05_125138_create_product_filters_table',
        163
    ), (
        350,
        '2022_03_06_091528_create_product_filter_options_table',
        163
    ), (
        351,
        '2022_03_07_081257_create_product_specifications_table',
        164
    ), (
        353,
        '2022_03_07_081808_create_product_specification_categories_table',
        165
    ), (
        357,
        '2022_03_05_125434_create_products_table',
        166
    ), (
        358,
        '2022_03_07_093128_create_product_discounts_table',
        166
    ), (
        362,
        '2022_03_08_101832_create_product_media_table',
        167
    ), (
        363,
        '2022_03_09_054031_create_product_selected_filter_options_table',
        168
    ), (
        364,
        '2022_03_09_083337_create_product_specification_meta_table',
        169
    ), (
        369,
        '2022_03_09_084108_create_product_selected_specifications_table',
        170
    ), (
        370,
        '2022_03_09_140558_create_product_faqs_table',
        171
    ), (
        374,
        '2022_03_11_180436_create_product_reviews_table',
        174
    ), (
        375,
        '2022_03_11_182715_add_product_id_to_comments_reports_table',
        175
    ), (
        376,
        '2022_03_08_094452_create_product_files_table',
        176
    ), (
        377,
        '2022_03_11_180746_add_product_id_to_comments_table',
        177
    ), (
        378,
        '2022_03_12_102233_add_new_position_to_advertising_banners_table',
        178
    ), (
        383,
        '2022_03_13_072108_add_product_id_to_sales_table',
        179
    ), (
        385,
        '2022_03_13_081212_create_product_orders_table',
        180
    ), (
        386,
        '2022_03_19_171559_create_product_selected_specification_translations_table',
        181
    ), (
        387,
        '2022_03_21_161055_add_create_store_column_to_users_table',
        182
    ), (
        388,
        '2022_03_26_065509_add_new_type_to_rewards_table',
        183
    ), (
        389,
        '2022_03_28_051949_add_product_count_column_to_registration_packages_table',
        184
    ), (
        391,
        '2022_03_28_054322_add_product_type_column_to_discounts_table',
        185
    ), (
        392,
        '2022_03_28_062248_edit_type_column_of_rewards_accounting_table',
        186
    ), (
        393,
        '2022_03_28_083906_edit_type_column_to_badges_table',
        187
    ), (
        394,
        '2022_04_02_051515_create_webinar_chapter_items_table',
        188
    ), (
        395,
        '2022_04_02_085059_remove_type_column_from_webinar_chapters_table',
        189
    ), (
        396,
        '2022_04_02_131352_add_check_sequence_content_fields_to_contents_tables',
        190
    ), (
        399,
        '2022_04_04_075541_add_assignment_type_to_webinar_chapter_items_table',
        192
    ), (
        400,
        '2022_04_04_071203_create_webinar_assignments_table',
        193
    ), (
        401,
        '2022_04_04_071303_create_webinar_assignment_attachments_table',
        193
    ), (
        405,
        '2022_04_05_053308_create_webinar_assignment_history_table',
        194
    ), (
        406,
        '2022_04_05_060030_create_webinar_assignment_history_messages_table',
        194
    ), (
        407,
        '2022_04_06_121240_add_new_type_passed_assignment_to_rewards_table',
        195
    ), (
        408,
        '2022_04_09_064609_add_access_content_column_to_users_table',
        196
    ), (
        409,
        '2022_04_10_073822_create_bundles_table',
        197
    ), (
        410,
        '2022_04_10_092348_create_bundle_filter_option_table',
        198
    ), (
        413,
        '2022_04_10_130733_create_bundle_webinars_table',
        200
    ), (
        421,
        '2022_04_10_093457_add_bundle_id_to_needle_tables',
        201
    ), (
        422,
        '2022_04_12_153052_add_access_time_to_webinars_table',
        202
    ), (
        423,
        '2022_04_13_053947_create_course_noticeboards_table',
        203
    ), (
        424,
        '2022_04_13_054536_create_course_noticeboard_status_table',
        203
    ), (
        425,
        '2022_04_13_130155_add_column_forum_to_webinars_table',
        204
    ), (
        427,
        '2022_04_14_060606_create_course_forums_table',
        205
    ), (
        428,
        '2022_04_14_063316_create_course_forum_answers_table',
        206
    ), (
        447,
        '2022_04_21_133513_add_new_type_in_rewards_table',
        216
    ), (
        448,
        '2022_04_21_135212_add_new_type_in_badges_table',
        217
    ), (
        449,
        '2022_04_24_081637_add_new_type_instructor_blog_in_rewards_table',
        218
    ), (
        450,
        '2022_04_24_082515_add_new_type_instructor_blog_in_badges_table',
        219
    ), (
        452,
        '2022_04_25_043945_create_users_cookie_security_table',
        220
    ), (
        453,
        '2022_04_25_143142_add_organization_price__column_to_webinars_table',
        221
    ), (
        454,
        '2022_04_25_165256_add_image_and_video_to_quizzes_questions_table',
        222
    ), (
        456,
        '2022_04_26_060018_edit_certificates_templates_table',
        223
    ), (
        458,
        '2022_04_26_082017_edit_certificates_table',
        224
    ), (
        459,
        '2022_04_26_155421_create_subscribe_reminds_table',
        225
    ), (
        460,
        '2022_04_26_163428_add_instructor_id_to_noticeboards_table',
        226
    ), (
        461,
        '2022_04_27_133655_add_unlimited_download_to_subscribes_table',
        227
    ), (
        462,
        '2022_04_27_133655_add_infinite_use_to_subscribes_table',
        228
    ), (
        463,
        '2022_04_27_140844_add_extra_time_to_join_to_sessions_table',
        229
    ), (
        464,
        '2022_04_28_052318_create_webinar_extra_description_table',
        230
    ), (
        466,
        '2022_05_09_125820_create_navbar_buttons_table',
        232
    ), (
        467,
        '2021_06_07_000000_create_payku_transactions_table',
        233
    ), (
        468,
        '2021_06_07_000001_create_payku_payments_table',
        233
    ), (
        469,
        '2021_11_30_122831_create_jazzcash_transactions_table',
        233
    ), (
        470,
        '2021_12_15_000000_add_new_columns_to_tables',
        233
    ), (
        471,
        '2022_05_23_081324_create_product_specification_multi_values_table',
        234
    ), (
        472,
        '2022_05_23_091527_create_product_selected_specification_multi_values_table',
        235
    ), (
        475,
        '2022_05_23_151601_add_product_delivery_fee_column_to_sales_table',
        236
    ), (
        476,
        '2022_04_18_103856_create_forums_table',
        237
    ), (
        477,
        '2022_04_18_152201_create_forum_topics_table',
        237
    ), (
        478,
        '2022_04_18_152845_create_forum_topic_attachments_table',
        237
    ), (
        479,
        '2022_04_19_071911_create_forum_topic_posts_table',
        237
    ), (
        480,
        '2022_04_19_123745_create_forum_topic_reports_table',
        237
    ), (
        481,
        '2022_04_19_135314_create_forum_topic_bookmarks_table',
        237
    ), (
        482,
        '2022_04_19_152929_create_forum_topic_likes_table',
        237
    ), (
        483,
        '2022_04_20_152756_create_forum_featured_topics_table',
        237
    ), (
        484,
        '2022_04_21_054043_create_forum_recommended_topics_table',
        237
    ), (
        485,
        '2022_04_21_054815_create_forum_recommended_topic_items_table',
        237
    ), (
        486,
        '2022_05_26_085212_change_some_column_varchar_to_text',
        238
    ), (
        487,
        '2022_05_27_142612_add_avarat_settings_to_users_table',
        239
    ), (
        489,
        '2022_05_01_151107_add_manual_added_column_to_sales_table',
        240
    ), (
        490,
        '2022_05_29_162315_create_delete_account_requests_table',
        241
    ), (
        491,
        '2020_10_20_211927_create_users_metas_table',
        242
    ), (
        492,
        '2022_05_31_133347_add_certificate_column_to_webinars_table',
        243
    ), (
        494,
        '2022_05_31_165839_add_online_viewer_column_to_files_table',
        244
    ), (
        495,
        '2022_06_08_071712_create_home_sections_table',
        245
    );

-- --------------------------------------------------------

--

-- Table structure for table `navbar_buttons`

--

CREATE TABLE
    `navbar_buttons` (
        `id` int(10) UNSIGNED NOT NULL,
        `role_id` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `navbar_buttons`

--

INSERT INTO
    `navbar_buttons` (`id`, `role_id`)
VALUES (1, 1), (2, 2), (4, 3), (3, 4);

-- --------------------------------------------------------

--

-- Table structure for table `navbar_button_translations`

--

CREATE TABLE
    `navbar_button_translations` (
        `id` int(10) UNSIGNED NOT NULL,
        `navbar_button_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `navbar_button_translations`

--

INSERT INTO
    `navbar_button_translations` (
        `id`,
        `navbar_button_id`,
        `locale`,
        `title`,
        `url`
    )
VALUES (
        1,
        1,
        'en',
        'Become instructor',
        '/become-instructor'
    ), (
        2,
        1,
        'ar',
        'أصبح مدربا',
        '/become-instructor'
    ), (
        3,
        1,
        'es',
        'Convertirse en instructora',
        '/become-instructor'
    ), (
        4,
        2,
        'en',
        'Admin panel',
        '/admin'
    ), (
        5,
        3,
        'en',
        'Create a new course',
        '/panel/webinars/new'
    ), (
        6,
        3,
        'es',
        'Crear un nuevo curso',
        '/panel/webinars/new'
    ), (
        7,
        3,
        'ar',
        'أنشئ دورة جديدة',
        '/panel/webinars/new'
    ), (
        8,
        4,
        'en',
        'Create a new course',
        '/panel/webinars/new'
    ), (
        9,
        4,
        'es',
        'Crear un nuevo curso',
        '/panel/webinars/new'
    ), (
        10,
        4,
        'ar',
        'أنشئ دورة جديدة',
        '/panel/webinars/new'
    );

-- --------------------------------------------------------

--

-- Table structure for table `newsletters`

--

CREATE TABLE
    `newsletters` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED DEFAULT NULL,
        `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `newsletters`

--

INSERT INTO
    `newsletters` (
        `id`,
        `user_id`,
        `email`,
        `created_at`
    )
VALUES (
        8,
        995,
        'cameronschofield@gmail.com',
        1625090411
    ), (
        9,
        1017,
        'a.pmelaa@gmail.com',
        1646389129
    ), (
        10,
        996,
        'robert2002@gmail.com',
        1646414262
    );

-- --------------------------------------------------------

--

-- Table structure for table `newsletters_history`

--

CREATE TABLE
    `newsletters_history` (
        `id` int(10) UNSIGNED NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
        `send_method` enum(
            'send_to_all',
            'send_to_bcc',
            'send_to_excel'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `bcc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `email_count` int(11) DEFAULT NULL,
        `created_at` bigint(20) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `newsletters_history`

--

INSERT INTO
    `newsletters_history` (
        `id`,
        `title`,
        `description`,
        `send_method`,
        `bcc_email`,
        `email_count`,
        `created_at`
    )
VALUES (
        1,
        'Black Friday OFF',
        '<p>Hello,</p><p>Be sure to check our Black Friday discounts.</p><p>Regards.</p>',
        'send_to_all',
        NULL,
        2,
        1646389249
    );

-- --------------------------------------------------------

--

-- Table structure for table `noticeboards`

--

CREATE TABLE
    `noticeboards` (
        `id` int(10) UNSIGNED NOT NULL,
        `organ_id` int(10) UNSIGNED DEFAULT NULL,
        `instructor_id` int(10) UNSIGNED DEFAULT NULL,
        `webinar_id` int(10) UNSIGNED DEFAULT NULL,
        `user_id` int(10) UNSIGNED DEFAULT NULL,
        `type` enum(
            'all',
            'organizations',
            'students',
            'instructors',
            'students_and_instructors'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `noticeboards`

--

INSERT INTO
    `noticeboards` (
        `id`,
        `organ_id`,
        `instructor_id`,
        `webinar_id`,
        `user_id`,
        `type`,
        `sender`,
        `title`,
        `message`,
        `created_at`
    )
VALUES (
        10,
        NULL,
        NULL,
        NULL,
        NULL,
        'all',
        'Staff',
        'Top summer classes',
        '<p>You can find top summer courses on the platform homepage and get all of them with 50% discount by using \"mysummer\" discount coupon.</p>',
        1625921717
    ), (
        11,
        NULL,
        NULL,
        NULL,
        NULL,
        'instructors',
        'Staff',
        'Instructor terms of services changed',
        '<p>Instructors terms of services changed on July 17. You can read terms on the terms page.</p>',
        1625921872
    ), (
        12,
        NULL,
        NULL,
        NULL,
        NULL,
        'all',
        'Staff',
        'New Year Sales Festival',
        '<p>Due to the New Year Festival, users who buy more than $ 200 will be given a 20% discount code.</p>',
        1626132374
    ), (
        13,
        867,
        NULL,
        NULL,
        NULL,
        'students_and_instructors',
        'Light Moon',
        'New Class Published',
        '\"Effective Time Management\" Live Class <font color=\"#6ba54a\" style=\"\">Published</font>, for getting the final certificate it is necessary to Enroll in this class.',
        1626165028
    ), (
        14,
        867,
        NULL,
        NULL,
        NULL,
        'students_and_instructors',
        'Light Moon',
        'New Private Course Published',
        '<p>Dear students and instructors. Travel Management Course published privately for you. please enroll on this course<br></p>',
        1626235132
    );

-- --------------------------------------------------------

--

-- Table structure for table `noticeboards_status`

--

CREATE TABLE
    `noticeboards_status` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `noticeboard_id` int(10) UNSIGNED NOT NULL,
        `seen_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `noticeboards_status`

--

INSERT INTO
    `noticeboards_status` (
        `id`,
        `user_id`,
        `noticeboard_id`,
        `seen_at`
    )
VALUES (5, 995, 13, 1626165137), (6, 1015, 13, 1626165555), (7, 1015, 11, 1626204347);

-- --------------------------------------------------------

--

-- Table structure for table `notifications`

--

CREATE TABLE
    `notifications` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED DEFAULT NULL,
        `sender_id` int(10) UNSIGNED DEFAULT NULL,
        `group_id` int(10) UNSIGNED DEFAULT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `sender` enum('system', 'admin') COLLATE utf8mb4_unicode_ci DEFAULT 'system',
        `type` enum(
            'single',
            'all_users',
            'students',
            'instructors',
            'organizations',
            'group'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `notifications`

--

INSERT INTO
    `notifications` (
        `id`,
        `user_id`,
        `sender_id`,
        `group_id`,
        `title`,
        `message`,
        `sender`,
        `type`,
        `created_at`
    )
VALUES (
        1263,
        1016,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Become a Product Manager</p>',
        'system',
        'single',
        1624870230
    ), (
        1264,
        1016,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Become a Product Manager</p>',
        'system',
        'single',
        1624872525
    ), (
        1265,
        1016,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Become a Product Manager approved</p>',
        'system',
        'single',
        1624904613
    ), (
        1266,
        1016,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Become a Product Manager</p>',
        'system',
        'single',
        1624907184
    ), (
        1267,
        1016,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Become a Product Manager approved</p>',
        'system',
        'single',
        1624907798
    ), (
        1268,
        1016,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Become a Product Manager</p>',
        'system',
        'single',
        1624908934
    ), (
        1269,
        1016,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Become a Product Manager approved</p>',
        'system',
        'single',
        1624908947
    ), (
        1270,
        1016,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Become a Product Manager</p>',
        'system',
        'single',
        1624911781
    ), (
        1271,
        1016,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Become a Product Manager approved</p>',
        'system',
        'single',
        1624911801
    ), (
        1272,
        1016,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Become a Product Manager approved</p>',
        'system',
        'single',
        1624942128
    ), (
        1273,
        1016,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Become a Product Manager</p>',
        'system',
        'single',
        1624942267
    ), (
        1274,
        1016,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Become a Product Manager approved</p>',
        'system',
        'single',
        1624942277
    ), (
        1275,
        1016,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Become a Product Manager approved</p>',
        'system',
        'single',
        1624942627
    ), (
        1276,
        1015,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Learn Linux in 5 Days</p>',
        'system',
        'single',
        1624945432
    ), (
        1277,
        1015,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn Linux in 5 Days approved</p>',
        'system',
        'single',
        1624945452
    ), (
        1278,
        934,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Learn Python Programming</p>',
        'system',
        'single',
        1624957035
    ), (
        1279,
        934,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn Python Programming approved</p>',
        'system',
        'single',
        1624957054
    ), (
        1280,
        934,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn Python Programming approved</p>',
        'system',
        'single',
        1624959946
    ), (
        1281,
        1015,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Excel from Beginner to Advanced</p>',
        'system',
        'single',
        1624966729
    ), (
        1282,
        1015,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Excel from Beginner to Advanced approved</p>',
        'system',
        'single',
        1624966741
    ), (
        1283,
        1015,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Excel from Beginner to Advanced</p>',
        'system',
        'single',
        1625003468
    ), (
        1284,
        1015,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Excel from Beginner to Advanced approved</p>',
        'system',
        'single',
        1625003516
    ), (
        1285,
        929,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title How to Manage & Influence Your Virtual Team</p>',
        'system',
        'single',
        1625041045
    ), (
        1286,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title How to Manage & Influence Your Virtual Team approved</p>',
        'system',
        'single',
        1625041074
    ), (
        1287,
        929,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title How to Manage & Influence Your Virtual Team</p>',
        'system',
        'single',
        1625043168
    ), (
        1288,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title How to Manage & Influence Your Virtual Team approved</p>',
        'system',
        'single',
        1625043180
    ), (
        1289,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title How to Manage & Influence Your Virtual Team approved</p>',
        'system',
        'single',
        1625043319
    ), (
        1290,
        867,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Effective Time Management</p>',
        'system',
        'single',
        1625046155
    ), (
        1291,
        923,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Effective Time Management approved</p>',
        'system',
        'single',
        1625046173
    ), (
        1292,
        3,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn and Understand AngularJS approved</p>',
        'system',
        'single',
        1625084229
    ), (
        1293,
        3,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>',
        'system',
        'single',
        1625085106
    ), (
        1294,
        3,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn and Understand AngularJS approved</p>',
        'system',
        'single',
        1625085118
    ), (
        1295,
        3,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn and Understand AngularJS approved</p>',
        'system',
        'single',
        1625088480
    ), (
        1296,
        3,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>',
        'system',
        'single',
        1625088678
    ), (
        1297,
        3,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn and Understand AngularJS approved</p>',
        'system',
        'single',
        1625088698
    ), (
        1298,
        3,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn and Understand AngularJS approved</p>',
        'system',
        'single',
        1625088760
    ), (
        1299,
        863,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Health And Fitness Masterclass: Beginner To Advanced</p>',
        'system',
        'single',
        1625124082
    ), (
        1300,
        870,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Health And Fitness Masterclass approved</p>',
        'system',
        'single',
        1625124100
    ), (
        1301,
        934,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Learn Python Programming</p>',
        'system',
        'single',
        1625286023
    ), (
        1302,
        934,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn Python Programming approved</p>',
        'system',
        'single',
        1625286038
    ), (
        1303,
        1015,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Excel from Beginner to Advanced approved</p>',
        'system',
        'single',
        1625293759
    ), (
        1304,
        870,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Health And Fitness Masterclass approved</p>',
        'system',
        'single',
        1625293821
    ), (
        1305,
        923,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Effective Time Management approved</p>',
        'system',
        'single',
        1625293844
    ), (
        1306,
        864,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Active Listening: You Can Be a Great Listener</p>',
        'system',
        'single',
        1625300387
    ), (
        1307,
        3,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Active Listening: You Can Be a Great Listener approved</p>',
        'system',
        'single',
        1625300399
    ), (
        1308,
        864,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Active Listening: You Can Be a Great Listener</p>',
        'system',
        'single',
        1625300598
    ), (
        1309,
        3,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Active Listening: You Can Be a Great Listener approved</p>',
        'system',
        'single',
        1625300612
    ), (
        1310,
        870,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Health And Fitness Masterclass approved</p>',
        'system',
        'single',
        1625301355
    ), (
        1311,
        3,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>',
        'system',
        'single',
        1625301679
    ), (
        1312,
        3,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>',
        'system',
        'single',
        1625301721
    ), (
        1313,
        3,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Learn and Understand AngularJS approved</p>',
        'system',
        'single',
        1625301754
    ), (
        1314,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received New User&nbsp;badge.</p>',
        'system',
        'single',
        1625553784
    ), (
        1315,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received New User&nbsp;badge.</p>',
        'system',
        'single',
        1625553799
    ), (
        1316,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received New User&nbsp;badge.</p>',
        'system',
        'single',
        1625553801
    ), (
        1317,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received New User&nbsp;badge.</p>',
        'system',
        'single',
        1625553801
    ), (
        1318,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received New User&nbsp;badge.</p>',
        'system',
        'single',
        1625553802
    ), (
        1319,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received New User&nbsp;badge.</p>',
        'system',
        'single',
        1625553802
    ), (
        1320,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received New User&nbsp;badge.</p>',
        'system',
        'single',
        1625553815
    ), (
        1321,
        864,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received New User&nbsp;badge.</p>',
        'system',
        'single',
        1625553917
    ), (
        1322,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1625554209
    ), (
        1323,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1625554210
    ), (
        1324,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1625554210
    ), (
        1325,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1625554211
    ), (
        1326,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625554498
    ), (
        1327,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625554499
    ), (
        1328,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625554499
    ), (
        1329,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625554777
    ), (
        1330,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625554779
    ), (
        1331,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625554782
    ), (
        1332,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625554784
    ), (
        1333,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625554784
    ), (
        1334,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625554785
    ), (
        1335,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625554976
    ), (
        1336,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625558907
    ), (
        1337,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625558908
    ), (
        1338,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625602049
    ), (
        1339,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625602050
    ), (
        1340,
        864,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625635046
    ), (
        1341,
        864,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625635048
    ), (
        1342,
        996,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1625636389
    ), (
        1343,
        859,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625642664
    ), (
        1344,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625643033
    ), (
        1345,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625643034
    ), (
        1346,
        868,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625643807
    ), (
        1347,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625644582
    ), (
        1348,
        995,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1625681178
    ), (
        1349,
        929,
        NULL,
        NULL,
        'Your class created',
        '<p>Your class The Future of Energy successfully created. It will be published after approval.</p>',
        'system',
        'single',
        1625685731
    ), (
        1350,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625685748
    ), (
        1351,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625685768
    ), (
        1352,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625685818
    ), (
        1353,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625685843
    ), (
        1354,
        4,
        NULL,
        NULL,
        'Your class created',
        '<p>Your class Web Design for Beginners successfully created. It will be published after approval.</p>',
        'system',
        'single',
        1625691113
    ), (
        1355,
        934,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Web Design for Beginners successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625691133
    ), (
        1356,
        1016,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Become a Product Manager successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625691301
    ), (
        1357,
        1016,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Become a Product Manager successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625692122
    ), (
        1358,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625692134
    ), (
        1359,
        934,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Web Design for Beginners successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625692139
    ), (
        1360,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625693949
    ), (
        1361,
        867,
        NULL,
        NULL,
        'Your class created',
        '<p>Your class How to Travel Around the World on a Budget successfully created. It will be published after approval.</p>',
        'system',
        'single',
        1625694536
    ), (
        1362,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Travel Around the World on a Budget successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625694552
    ), (
        1363,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625694573
    ), (
        1364,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625694573
    ), (
        1365,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1625694574
    ), (
        1366,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Travel Around the World successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625694594
    ), (
        1368,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert B. Gray left a new comment on your class The Future of Energy .</p>',
        'system',
        'single',
        1625863108
    ), (
        1369,
        930,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1625863166
    ), (
        1370,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>',
        'system',
        'single',
        1625863203
    ), (
        1371,
        979,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1625863218
    ), (
        1372,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Morgan Sullivan left a new comment on your class How to Manage & Influence Your Virtual Team .</p>',
        'system',
        'single',
        1625863345
    ), (
        1373,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>',
        'system',
        'single',
        1625863462
    ), (
        1374,
        934,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>',
        'system',
        'single',
        1625863587
    ), (
        1375,
        929,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Morgan Sullivan left a new comment on your class How to Manage & Influence Your Virtual Team .</p>',
        'system',
        'single',
        1625863590
    ), (
        1376,
        1015,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>',
        'system',
        'single',
        1625863593
    ), (
        1377,
        929,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert B. Gray left a new comment on your class The Future of Energy .</p>',
        'system',
        'single',
        1625863596
    ), (
        1378,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>James Kong left a new comment on your class Learn Python Programming .</p>',
        'system',
        'single',
        1625864259
    ), (
        1379,
        934,
        NULL,
        NULL,
        'New comment for your class',
        '<p>James Kong left a new comment on your class Learn Python Programming .</p>',
        'system',
        'single',
        1625864266
    ), (
        1380,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Ricardo dave left a new comment on your class How to Travel Around the World .</p>',
        'system',
        'single',
        1625864416
    ), (
        1381,
        923,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Ricardo dave left a new comment on your class How to Travel Around the World .</p>',
        'system',
        'single',
        1625864421
    ), (
        1382,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Cameron Schofield left a new comment on your class The Future of Energy .</p>',
        'system',
        'single',
        1625864526
    ), (
        1383,
        929,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Cameron Schofield left a new comment on your class The Future of Energy .</p>',
        'system',
        'single',
        1625864533
    ), (
        1384,
        1,
        NULL,
        NULL,
        'New support ticket',
        '<p>New support ticket received with subject Convert Videos .</p>',
        'system',
        'single',
        1625891270
    ), (
        1385,
        1,
        NULL,
        NULL,
        'New support ticket',
        '<p>New support ticket received with subject Pre-purchase question .</p>',
        'system',
        'single',
        1625891677
    ), (
        1386,
        1,
        NULL,
        NULL,
        'New support ticket',
        '<p>New support ticket received with subject Pending Offline Payment .</p>',
        'system',
        'single',
        1625891851
    ), (
        1387,
        1,
        NULL,
        NULL,
        'New support ticket',
        '<p>New support ticket received with subject Commission Rate .</p>',
        'system',
        'single',
        1625892221
    ), (
        1388,
        1,
        NULL,
        NULL,
        'New support ticket',
        '<p>New support ticket received with subject Class delay .</p>',
        'system',
        'single',
        1625895874
    ), (
        1389,
        1,
        NULL,
        NULL,
        'New reply on support ticket',
        '<p>The support ticket with the subject Class delay updated with a new reply.</p>',
        'system',
        'single',
        1625897110
    ), (
        1390,
        1,
        NULL,
        NULL,
        'New reply on support ticket',
        '<p>The support ticket with the subject Class delay updated with a new reply.</p>',
        'system',
        'single',
        1625898890
    ), (
        1391,
        996,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 500 submitted successfully.</p>',
        'system',
        'single',
        1625944192
    ), (
        1392,
        996,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 500 successfully approved.</p>',
        'system',
        'single',
        1625944212
    ), (
        1393,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class  .</p>',
        'system',
        'single',
        1625944345
    ), (
        1394,
        996,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class  successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1625944345
    ), (
        1395,
        996,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Robert B. Gray for 2021-07-12  with the amount 150 .</p>',
        'system',
        'single',
        1625944346
    ), (
        1396,
        1015,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Robert B. Gray for 2021-07-12  with the amount 150 .</p>',
        'system',
        'single',
        1625944346
    ), (
        1397,
        996,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 165.00 .</p>',
        'system',
        'single',
        1625944347
    ), (
        1398,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Learn Linux in 5 Days successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625947994
    ), (
        1399,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625948044
    ), (
        1400,
        934,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Learn Python Programming successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625949854
    ), (
        1401,
        1016,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Become a Product Manager successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1625950395
    ), (
        1402,
        995,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 1000 submitted successfully.</p>',
        'system',
        'single',
        1625950563
    ), (
        1403,
        930,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class [c.title] with type addiction and amount 600 .</p>',
        'system',
        'single',
        1625950715
    ), (
        1404,
        995,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 1000 successfully approved.</p>',
        'system',
        'single',
        1625950749
    ), (
        1405,
        934,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class  .</p>',
        'system',
        'single',
        1625952628
    ), (
        1406,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class  successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1625952628
    ), (
        1407,
        995,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Cameron Schofield for 2021-08-05  with the amount 100 .</p>',
        'system',
        'single',
        1625952629
    ), (
        1408,
        934,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Cameron Schofield for 2021-08-05  with the amount 100 .</p>',
        'system',
        'single',
        1625952629
    ), (
        1409,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 110.00 .</p>',
        'system',
        'single',
        1625952630
    ), (
        1410,
        4,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Web Design for Beginners .</p>',
        'system',
        'single',
        1625953196
    ), (
        1411,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Web Design for Beginners successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1625953197
    ), (
        1412,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Web Design for Beginners with type deduction and amount 11.00 .</p>',
        'system',
        'single',
        1625953197
    ), (
        1413,
        934,
        NULL,
        NULL,
        'New class support message',
        '<p>user Cameron Schofield send new support message for course with title Web Design for Beginners .</p>',
        'system',
        'single',
        1625953303
    ), (
        1414,
        996,
        NULL,
        NULL,
        'Your user group changed',
        '<p>Your user group changed to Special Students .</p>',
        'system',
        'single',
        1625974235
    ), (
        1415,
        3,
        NULL,
        NULL,
        'Your user group changed',
        '<p>Your user group changed to Vip Instructors .</p>',
        'system',
        'single',
        1625974258
    ), (
        1416,
        1016,
        NULL,
        NULL,
        'Your user group changed',
        '<p>Your user group changed to Vip Instructors .</p>',
        'system',
        'single',
        1625974260
    ), (
        1417,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1625974480
    ), (
        1418,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1625980530
    ), (
        1419,
        979,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 400 submitted successfully.</p>',
        'system',
        'single',
        1625992349
    ), (
        1420,
        979,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 400 successfully approved.</p>',
        'system',
        'single',
        1625992548
    ), (
        1421,
        1016,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 100 submitted successfully.</p>',
        'system',
        'single',
        1625992606
    ), (
        1422,
        1016,
        NULL,
        NULL,
        'Offline payment rejected',
        '<p>Sorry, offline payment request with the amount 100&nbsp;rejected.</p>',
        'system',
        'single',
        1625992620
    ), (
        1423,
        923,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 300 submitted successfully.</p>',
        'system',
        'single',
        1625993378
    ), (
        1424,
        923,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 300 submitted successfully.</p>',
        'system',
        'single',
        1625993428
    ), (
        1425,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 250 submitted successfully.</p>',
        'system',
        'single',
        1625993489
    ), (
        1426,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class  .</p>',
        'system',
        'single',
        1625996812
    ), (
        1427,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class  successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1625996813
    ), (
        1428,
        995,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Cameron Schofield for 2021-07-14  with the amount 125 .</p>',
        'system',
        'single',
        1625996815
    ), (
        1429,
        1015,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Cameron Schofield for 2021-07-14  with the amount 125 .</p>',
        'system',
        'single',
        1625996816
    ), (
        1430,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 137.50 .</p>',
        'system',
        'single',
        1625996816
    ), (
        1431,
        995,
        NULL,
        NULL,
        'Meeting finished',
        '<p>The meeting finished. Instructor: Linda Anderson Student:&nbsp; Cameron Schofield&nbsp; Meeting time: 2021-08-05 .</p>',
        'system',
        'single',
        1625996841
    ), (
        1432,
        934,
        NULL,
        NULL,
        'Meeting finished',
        '<p>The meeting finished. Instructor: Linda Anderson Student:&nbsp; Cameron Schofield&nbsp; Meeting time: 2021-08-05 .</p>',
        'system',
        'single',
        1625996842
    ), (
        1433,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1625996905
    ), (
        1434,
        929,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class How to Manage & Influence Your Virtual Team .</p>',
        'system',
        'single',
        1625996941
    ), (
        1435,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class How to Manage & Influence Your Virtual Team successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1625996942
    ), (
        1436,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class How to Manage & Influence Your Virtual Team with type deduction and amount 55.00 .</p>',
        'system',
        'single',
        1625996942
    ), (
        1437,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>',
        'system',
        'single',
        1625996978
    ), (
        1438,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1625996978
    ), (
        1439,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 55.00 .</p>',
        'system',
        'single',
        1625996979
    ), (
        1440,
        3,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Learn and Understand AngularJS .</p>',
        'system',
        'single',
        1625997104
    ), (
        1441,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Learn and Understand AngularJS successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1625997105
    ), (
        1442,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Learn and Understand AngularJS with type deduction and amount 17.60 .</p>',
        'system',
        'single',
        1625997105
    ), (
        1443,
        929,
        NULL,
        NULL,
        'New pending quiz',
        '<p>Cameron Schofield passed First Quiz quiz of the How to Manage & Influence Your Virtual Team class and waiting for correction to get results.</p>',
        'system',
        'single',
        1625997328
    ), (
        1444,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626009973
    ), (
        1445,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626009973
    ), (
        1446,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626060376
    ), (
        1447,
        867,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class How to Travel Around the World .</p>',
        'system',
        'single',
        1626060487
    ), (
        1448,
        996,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class How to Travel Around the World successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626060487
    ), (
        1449,
        996,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class How to Travel Around the World with type deduction and amount 24.75 .</p>',
        'system',
        'single',
        1626060488
    ), (
        1450,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>',
        'system',
        'single',
        1626060552
    ), (
        1451,
        996,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626060552
    ), (
        1452,
        996,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 44.00 .</p>',
        'system',
        'single',
        1626060553
    ), (
        1453,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626060704
    ), (
        1454,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>',
        'system',
        'single',
        1626060835
    ), (
        1455,
        930,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626060836
    ), (
        1456,
        930,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 55.00 .</p>',
        'system',
        'single',
        1626060836
    ), (
        1457,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received King Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626060860
    ), (
        1458,
        1015,
        NULL,
        NULL,
        'Payout request submitted',
        '<p>Your payout request successfully submitted for 332 . You will receive an email when processed.</p>',
        'system',
        'single',
        1626061191
    ), (
        1459,
        1,
        NULL,
        NULL,
        'New payout request',
        '<p>New payout request received with the amount 332 . You can manage it using the admin panel.</p>',
        'system',
        'single',
        1626061192
    ), (
        1460,
        1015,
        NULL,
        NULL,
        'Payout has been processed',
        'Your payout has been processed with the amount 332.00&nbsp;&nbsp;to your account Qatar National Bank .',
        'system',
        'single',
        1626061220
    ), (
        1461,
        934,
        NULL,
        NULL,
        'Payout request submitted',
        '<p>Your payout request successfully submitted for 80 . You will receive an email when processed.</p>',
        'system',
        'single',
        1626061254
    ), (
        1462,
        1,
        NULL,
        NULL,
        'New payout request',
        '<p>New payout request received with the amount 80 . You can manage it using the admin panel.</p>',
        'system',
        'single',
        1626061254
    ), (
        1463,
        929,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class The Future of Energy .</p>',
        'system',
        'single',
        1626061332
    ), (
        1464,
        979,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class The Future of Energy successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626061333
    ), (
        1465,
        979,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class The Future of Energy with type deduction and amount 66.00 .</p>',
        'system',
        'single',
        1626061333
    ), (
        1466,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626061342
    ), (
        1467,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626061342
    ), (
        1468,
        863,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Health And Fitness Masterclass .</p>',
        'system',
        'single',
        1626061373
    ), (
        1469,
        979,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Health And Fitness Masterclass successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626061373
    ), (
        1470,
        979,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Health And Fitness Masterclass with type deduction and amount 22.00 .</p>',
        'system',
        'single',
        1626061374
    ), (
        1471,
        867,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>',
        'system',
        'single',
        1626061374
    ), (
        1472,
        979,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626061375
    ), (
        1473,
        979,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 33.00 .</p>',
        'system',
        'single',
        1626061375
    ), (
        1474,
        NULL,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Bronze Subscribe .</p>',
        'system',
        'single',
        1626061450
    ), (
        1475,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Bronze Subscribe successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626061450
    ), (
        1476,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class [c.title] with type deduction and amount 22.00 .</p>',
        'system',
        'single',
        1626061450
    ), (
        1477,
        995,
        NULL,
        NULL,
        'Subscription plan activated',
        '<p>Bronze subscription package activated by user Cameron Schofield .</p>',
        'system',
        'single',
        1626061451
    ), (
        1478,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626061477
    ), (
        1479,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626061477
    ), (
        1480,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626061483
    ), (
        1481,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626061484
    ), (
        1482,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626061490
    ), (
        1483,
        1015,
        NULL,
        NULL,
        'New class support message',
        '<p>user Robert B. Gray send new support message for course with title Learn Linux in 5 Days .</p>',
        'system',
        'single',
        1626062396
    ), (
        1484,
        1015,
        NULL,
        NULL,
        'New reply on support conversation',
        '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>',
        'system',
        'single',
        1626062467
    ), (
        1485,
        1015,
        NULL,
        NULL,
        'New reply on support conversation',
        '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>',
        'system',
        'single',
        1626062520
    ), (
        1486,
        1015,
        NULL,
        NULL,
        'New reply on support conversation',
        '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>',
        'system',
        'single',
        1626062578
    ), (
        1487,
        1015,
        NULL,
        NULL,
        'New reply on support conversation',
        '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>',
        'system',
        'single',
        1626062690
    ), (
        1488,
        1015,
        NULL,
        NULL,
        'New reply on support conversation',
        '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>',
        'system',
        'single',
        1626062756
    ), (
        1489,
        1015,
        NULL,
        NULL,
        'New class support message',
        '<p>user Cameron Schofield send new support message for course with title Learn Linux in 5 Days .</p>',
        'system',
        'single',
        1626062941
    ), (
        1490,
        1015,
        NULL,
        NULL,
        'New reply on support conversation',
        '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>',
        'system',
        'single',
        1626063058
    ), (
        1491,
        1,
        NULL,
        NULL,
        'New support ticket',
        '<p>New support ticket received with subject Refund Request #64237 .</p>',
        'system',
        'single',
        1626063457
    ), (
        1492,
        1,
        NULL,
        NULL,
        'New reply on support ticket',
        '<p>The support ticket with the subject Refund Request #64237 updated with a new reply.</p>',
        'system',
        'single',
        1626063547
    ), (
        1493,
        929,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class How to Manage & Influence Your Virtual Team received a 5 stars rating from Cameron Schofield .</p>',
        'system',
        'single',
        1626091671
    ), (
        1494,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626091708
    ), (
        1495,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1626091708
    ), (
        1496,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626128217
    ), (
        1497,
        1016,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Become a Product Manager received a 5 stars rating from Cameron Schofield .</p>',
        'system',
        'single',
        1626129736
    ), (
        1498,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626129748
    ), (
        1499,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1626129749
    ), (
        1500,
        1016,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Become a Product Manager received a 4.25 stars rating from Robert B. Gray .</p>',
        'system',
        'single',
        1626129826
    ), (
        1501,
        1016,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Become a Product Manager received a 4.5 stars rating from Robert B. Gray .</p>',
        'system',
        'single',
        1626129947
    ), (
        1502,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Silver Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626129963
    ), (
        1503,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626132407
    ), (
        1504,
        1015,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 500 submitted successfully.</p>',
        'system',
        'single',
        1626132546
    ), (
        1505,
        1015,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 500 successfully approved.</p>',
        'system',
        'single',
        1626132570
    ), (
        1506,
        863,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Health And Fitness Masterclass .</p>',
        'system',
        'single',
        1626132844
    ), (
        1507,
        1015,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Health And Fitness Masterclass successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626132844
    ), (
        1508,
        1015,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Health And Fitness Masterclass with type deduction and amount 17.60 .</p>',
        'system',
        'single',
        1626132845
    ), (
        1509,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626132861
    ), (
        1510,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626132861
    ), (
        1511,
        1014,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received New User&nbsp;badge.</p>',
        'system',
        'single',
        1626150992
    ), (
        1512,
        1015,
        NULL,
        NULL,
        'New pending quiz',
        '<p>Cameron Schofield passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>',
        'system',
        'single',
        1626204790
    ), (
        1513,
        995,
        NULL,
        NULL,
        'Waiting quiz result',
        '<p>Your pending quiz corrected and your result is passed for Final Quiz quiz of Learn Linux in 5 Days class.</p>',
        'system',
        'single',
        1626204825
    ), (
        1514,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Expert Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1626214437
    ), (
        1515,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Expert Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1626214438
    ), (
        1516,
        923,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class How to Travel Around the World received a 5 stars rating from Robert B. Gray .</p>',
        'system',
        'single',
        1626214531
    ), (
        1517,
        1015,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Excel from Beginner to Advanced received a 4.75 stars rating from Robert B. Gray .</p>',
        'system',
        'single',
        1626214590
    ), (
        1518,
        934,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Learn Python Programming received a 5 stars rating from Robert B. Gray .</p>',
        'system',
        'single',
        1626214647
    ), (
        1519,
        1015,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Learn Linux in 5 Days received a 4 stars rating from Robert B. Gray .</p>',
        'system',
        'single',
        1626214731
    ), (
        1520,
        1016,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Become a Product Manager received a 5 stars rating from Robert B. Gray .</p>',
        'system',
        'single',
        1626214849
    ), (
        1521,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626232841
    ), (
        1522,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1626232843
    ), (
        1523,
        934,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Web Design for Beginners received a 4.25 stars rating from Cameron Schofield .</p>',
        'system',
        'single',
        1626232945
    ), (
        1524,
        929,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class The Future of Energy received a 2.5 stars rating from Cameron Schofield .</p>',
        'system',
        'single',
        1626233054
    ), (
        1525,
        3,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Learn and Understand AngularJS received a 2.75 stars rating from Cameron Schofield .</p>',
        'system',
        'single',
        1626233222
    ), (
        1526,
        1016,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Become a Product Manager received a 3.75 stars rating from Cameron Schofield .</p>',
        'system',
        'single',
        1626233313
    ), (
        1527,
        929,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class How to Manage & Influence Your Virtual Team received a 3.75 stars rating from Cameron Schofield .</p>',
        'system',
        'single',
        1626233413
    ), (
        1528,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626233555
    ), (
        1529,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1626233556
    ), (
        1530,
        867,
        NULL,
        NULL,
        'Your class created',
        '<p>Your class Travel Management Course successfully created. It will be published after approval.</p>',
        'system',
        'single',
        1626234714
    ), (
        1531,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626234749
    ), (
        1532,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626234771
    ), (
        1533,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>',
        'system',
        'single',
        1626234771
    ), (
        1534,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert Ransdell left a new comment on your class Health And Fitness Masterclass .</p>',
        'system',
        'single',
        1626235679
    ), (
        1535,
        870,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert Ransdell left a new comment on your class Health And Fitness Masterclass .</p>',
        'system',
        'single',
        1626235693
    ), (
        1536,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>',
        'system',
        'single',
        1626235711
    ), (
        1537,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626235803
    ), (
        1538,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1626235803
    ), (
        1539,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>',
        'system',
        'single',
        1626235937
    ), (
        1540,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Silver Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626236007
    ), (
        1541,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>',
        'system',
        'single',
        1626236007
    ), (
        1542,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Good Support&nbsp;badge.</p>',
        'system',
        'single',
        1626236028
    ), (
        1543,
        1015,
        NULL,
        NULL,
        'New pending quiz',
        '<p>Morgan Sullivan passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>',
        'system',
        'single',
        1626237968
    ), (
        1544,
        979,
        NULL,
        NULL,
        'Waiting quiz result',
        '<p>Your pending quiz corrected and your result is passed for Final Quiz quiz of Learn Linux in 5 Days class.</p>',
        'system',
        'single',
        1626237996
    ), (
        1545,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Good Support&nbsp;badge.</p>',
        'system',
        'single',
        1626239421
    ), (
        1546,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Cameron Schofield left a new comment on your class Become a Product Manager .</p>',
        'system',
        'single',
        1626240118
    ), (
        1547,
        1016,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Cameron Schofield left a new comment on your class Become a Product Manager .</p>',
        'system',
        'single',
        1626240131
    ), (
        1548,
        1016,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Ricardo dave left a new comment on your class Become a Product Manager .</p>',
        'system',
        'single',
        1626240383
    ), (
        1549,
        870,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626240665
    ), (
        1550,
        870,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626240714
    ), (
        1551,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626240740
    ), (
        1552,
        3,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Active Listening: You Can Be a Great Listener successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626240800
    ), (
        1553,
        3,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Learn and Understand AngularJS successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626240827
    ), (
        1554,
        929,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 300 submitted successfully.</p>',
        'system',
        'single',
        1626241046
    ), (
        1555,
        929,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 300 successfully approved.</p>',
        'system',
        'single',
        1626241074
    ), (
        1556,
        NULL,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class The Future of Energy .</p>',
        'system',
        'single',
        1626241152
    ), (
        1557,
        929,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class The Future of Energy successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626241152
    ), (
        1558,
        929,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class The Future of Energy with type deduction and amount 55.00 .</p>',
        'system',
        'single',
        1626241152
    ), (
        1559,
        929,
        NULL,
        NULL,
        'Promotion plan activated',
        '<p>Promotion plan Bronze&nbsp;&nbsp;activated for the call The Future of Energy .</p>',
        'system',
        'single',
        1626241153
    ), (
        1560,
        864,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Active Listening: You Can Be a Great Listener .</p>',
        'system',
        'single',
        1626241212
    ), (
        1561,
        929,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Active Listening: You Can Be a Great Listener successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626241213
    ), (
        1562,
        929,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Active Listening: You Can Be a Great Listener with type deduction and amount 33.00 .</p>',
        'system',
        'single',
        1626241213
    ), (
        1563,
        864,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1626241242
    ), (
        1564,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>',
        'system',
        'single',
        1626241320
    ), (
        1565,
        1016,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>',
        'system',
        'single',
        1626241345
    ), (
        1566,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>',
        'system',
        'single',
        1626241386
    ), (
        1567,
        3,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>',
        'system',
        'single',
        1626241400
    ), (
        1568,
        3,
        NULL,
        NULL,
        'New comment for your class',
        '<p>James Kong left a new comment on your class Active Listening: You Can Be a Great Listener .</p>',
        'system',
        'single',
        1626242090
    ), (
        1569,
        1016,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>',
        'system',
        'single',
        1626242094
    ), (
        1570,
        1,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1626242992
    ), (
        1571,
        996,
        NULL,
        NULL,
        'Meeting finished',
        '<p>The meeting finished. Instructor: Robert Ransdell Student:&nbsp; Robert B. Gray&nbsp; Meeting time: 2021-07-12 .</p>',
        'system',
        'single',
        1626243180
    ), (
        1572,
        1015,
        NULL,
        NULL,
        'Meeting finished',
        '<p>The meeting finished. Instructor: Robert Ransdell Student:&nbsp; Robert B. Gray&nbsp; Meeting time: 2021-07-12 .</p>',
        'system',
        'single',
        1626243180
    ), (
        1573,
        1015,
        NULL,
        NULL,
        'New pending quiz',
        '<p>Kate Williams passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>',
        'system',
        'single',
        1626243488
    );

INSERT INTO
    `notifications` (
        `id`,
        `user_id`,
        `sender_id`,
        `group_id`,
        `title`,
        `message`,
        `sender`,
        `type`,
        `created_at`
    )
VALUES (
        1574,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Learn Linux in 5 Days successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626246628
    ), (
        1575,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626246694
    ), (
        1576,
        870,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626246793
    ), (
        1577,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1626246814
    ), (
        1578,
        870,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class  .</p>',
        'system',
        'single',
        1626247195
    ), (
        1579,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class  successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626247195
    ), (
        1580,
        995,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Cameron Schofield for 2021-09-01  with the amount 100 .</p>',
        'system',
        'single',
        1626247196
    ), (
        1581,
        870,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Cameron Schofield for 2021-09-01  with the amount 100 .</p>',
        'system',
        'single',
        1626247196
    ), (
        1582,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 110.00 .</p>',
        'system',
        'single',
        1626247196
    ), (
        1583,
        1,
        NULL,
        NULL,
        'New support ticket',
        '<p>New support ticket received with subject Problem with quiz .</p>',
        'system',
        'single',
        1626250124
    ), (
        1584,
        870,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Health And Fitness Masterclass received a 5 stars rating from Cameron Schofield .</p>',
        'system',
        'single',
        1626283457
    ), (
        1585,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626283475
    ), (
        1586,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1626283486
    ), (
        1587,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626283490
    ), (
        1588,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1626283496
    ), (
        1589,
        870,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Health And Fitness Masterclass received a 5 stars rating from Morgan Sullivan .</p>',
        'system',
        'single',
        1626283559
    ), (
        1590,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>',
        'system',
        'single',
        1626493830
    ), (
        1591,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1626508221
    ), (
        1592,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Bronze Classes&nbsp;badge.</p>',
        'system',
        'single',
        1626508287
    ), (
        1593,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>',
        'system',
        'single',
        1626508287
    ), (
        1594,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>',
        'system',
        'single',
        1626508287
    ), (
        1595,
        867,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>',
        'system',
        'single',
        1626508956
    ), (
        1596,
        996,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1626508957
    ), (
        1597,
        996,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 29.70 .</p>',
        'system',
        'single',
        1626508957
    ), (
        1598,
        923,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Effective Time Management received a 5 stars rating from Robert B. Gray .</p>',
        'system',
        'single',
        1626508980
    ), (
        1599,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>',
        'system',
        'single',
        1626509207
    ), (
        1600,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>',
        'system',
        'single',
        1626509327
    ), (
        1601,
        1,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert Ransdell left a new comment on your class Become a Product Manager .</p>',
        'system',
        'single',
        1626509546
    ), (
        1602,
        3,
        NULL,
        NULL,
        'New comment for your class',
        '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>',
        'system',
        'single',
        1626509591
    ), (
        1603,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1627543283
    ), (
        1604,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1628619121
    ), (
        1605,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1628619122
    ), (
        1606,
        930,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 250 successfully approved.</p>',
        'system',
        'single',
        1628704280
    ), (
        1607,
        923,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 300 successfully approved.</p>',
        'system',
        'single',
        1628704284
    ), (
        1608,
        996,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 200 submitted successfully.</p>',
        'system',
        'single',
        1628704322
    ), (
        1609,
        995,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 100 submitted successfully.</p>',
        'system',
        'single',
        1628704347
    ), (
        1610,
        995,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 200 submitted successfully.</p>',
        'system',
        'single',
        1628704369
    ), (
        1611,
        995,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 200 successfully approved.</p>',
        'system',
        'single',
        1628704378
    ), (
        1612,
        995,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 100 successfully approved.</p>',
        'system',
        'single',
        1628704382
    ), (
        1613,
        996,
        NULL,
        NULL,
        'Offline payment approved',
        '<p>Offline payment request with the amount 200 successfully approved.</p>',
        'system',
        'single',
        1628704397
    ), (
        1614,
        979,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 100 submitted successfully.</p>',
        'system',
        'single',
        1628704436
    ), (
        1615,
        979,
        NULL,
        NULL,
        'Offline payment rejected',
        '<p>Sorry, offline payment request with the amount 100&nbsp;rejected.</p>',
        'system',
        'single',
        1628704449
    ), (
        1616,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 100 submitted successfully.</p>',
        'system',
        'single',
        1628785223
    ), (
        1617,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 555 submitted successfully.</p>',
        'system',
        'single',
        1628785232
    ), (
        1618,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 18919 submitted successfully.</p>',
        'system',
        'single',
        1628785247
    ), (
        1619,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 18919 submitted successfully.</p>',
        'system',
        'single',
        1628785251
    ), (
        1620,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 888 submitted successfully.</p>',
        'system',
        'single',
        1628785264
    ), (
        1621,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 44 submitted successfully.</p>',
        'system',
        'single',
        1628785278
    ), (
        1622,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 500 submitted successfully.</p>',
        'system',
        'single',
        1628785293
    ), (
        1623,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 555 submitted successfully.</p>',
        'system',
        'single',
        1628785304
    ), (
        1624,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 555 submitted successfully.</p>',
        'system',
        'single',
        1628785307
    ), (
        1625,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 555 submitted successfully.</p>',
        'system',
        'single',
        1628785327
    ), (
        1626,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 555 submitted successfully.</p>',
        'system',
        'single',
        1628785330
    ), (
        1627,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 444 submitted successfully.</p>',
        'system',
        'single',
        1628785342
    ), (
        1628,
        930,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 78797 submitted successfully.</p>',
        'system',
        'single',
        1628785393
    ), (
        1629,
        996,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received &nbsp;badge.</p>',
        'system',
        'single',
        1635366097
    ), (
        1630,
        995,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received &nbsp;badge.</p>',
        'system',
        'single',
        1635366115
    ), (
        1631,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received &nbsp;badge.</p>',
        'system',
        'single',
        1635404223
    ), (
        1632,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1635405357
    ), (
        1633,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1635405358
    ), (
        1634,
        979,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1635405486
    ), (
        1635,
        1014,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1635406181
    ), (
        1636,
        995,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1635408182
    ), (
        1637,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635410916
    ), (
        1638,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635411032
    ), (
        1639,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635411039
    ), (
        1640,
        867,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>',
        'system',
        'single',
        1635412196
    ), (
        1641,
        929,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1635412196
    ), (
        1642,
        929,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 33.00 .</p>',
        'system',
        'single',
        1635412197
    ), (
        1643,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Curso de gestión de viajes successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635442592
    ), (
        1644,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Cómo viajar por el mundo successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635442687
    ), (
        1645,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Cómo viajar por el mundo successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635442733
    ), (
        1646,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class كيف تسافر حول العالم successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635443083
    ), (
        1647,
        934,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class تصميم المواقع للمبتدئين successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635443257
    ), (
        1648,
        934,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Diseño web para principiantes successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635443302
    ), (
        1649,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class El futuro de la energía successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635443448
    ), (
        1650,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class مستقبل الطاقة successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635443492
    ), (
        1651,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class كيفية إدارة والتأثير على فريقك الافتراضي successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635443668
    ), (
        1652,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Cómo administrar e influir en su equipo virtual successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635443747
    ), (
        1653,
        1016,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Conviértete en gerente de producto successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635443872
    ), (
        1654,
        1016,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class كن مدير منتج successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635443991
    ), (
        1655,
        3,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class الاستماع النشط: يمكنك أن تكون مستمعًا جيدًا successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635444233
    ), (
        1656,
        3,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Escucha activa: puedes ser un gran oyente successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635444317
    ), (
        1657,
        870,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Masterclass de salud y fitness successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635444457
    ), (
        1658,
        870,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class دروس متقدمة في الصحة واللياقة البدنية successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635444517
    ), (
        1659,
        3,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class تعلم وافهم AngularJS successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635444683
    ), (
        1660,
        3,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Aprenda y comprenda AngularJS successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635444769
    ), (
        1661,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Gestión eficaz del tiempo successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635444834
    ), (
        1662,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class ادارة الوقت بفاعلية successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635444866
    ), (
        1663,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class مايكروسوفت اكسل من المبتدئين إلى المتقدمين successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635444974
    ), (
        1664,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class تعلم لينكس في خمسة أيام successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635445120
    ), (
        1665,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Aprenda Linux en cinco días successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635445181
    ), (
        1666,
        934,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Aprenda a programar en Python successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635445296
    ), (
        1667,
        934,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class تعلم برمجة بايثون successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1635445377
    ), (
        1668,
        996,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1639377925
    ), (
        1669,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Travel Around the World successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1639378044
    ), (
        1670,
        870,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1639378097
    ), (
        1671,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1639378108
    ), (
        1672,
        1017,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class [c.title] with type addiction and amount 500 .</p>',
        'system',
        'single',
        1639379205
    ), (
        1673,
        867,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>',
        'system',
        'single',
        1639379284
    ), (
        1674,
        1017,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1639379284
    ), (
        1675,
        1017,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 33.00 .</p>',
        'system',
        'single',
        1639379284
    ), (
        1676,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>',
        'system',
        'single',
        1639379350
    ), (
        1677,
        1017,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1639379351
    ), (
        1678,
        1017,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 110.00 .</p>',
        'system',
        'single',
        1639379351
    ), (
        1679,
        864,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Active Listening: You Can Be a Great Listener .</p>',
        'system',
        'single',
        1639379388
    ), (
        1680,
        1017,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Active Listening: You Can Be a Great Listener successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1639379389
    ), (
        1681,
        1017,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Active Listening: You Can Be a Great Listener with type deduction and amount 33.00 .</p>',
        'system',
        'single',
        1639379394
    ), (
        1682,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1645697363
    ), (
        1683,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Faitful User&nbsp;badge.</p>',
        'system',
        'single',
        1645697399
    ), (
        1684,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Travel Around the World successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1645726175
    ), (
        1685,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Manage & Influence Your Virtual Team successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1645726208
    ), (
        1686,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Manage & Influence Your Virtual Team successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1645726231
    ), (
        1687,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1645782214
    ), (
        1688,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Manage & Influence Your Virtual Team successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646028920
    ), (
        1689,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class The Professional Guitar Masterclass successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646127145
    ), (
        1690,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class The Professional Guitar Masterclass successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646130427
    ), (
        1691,
        1015,
        NULL,
        NULL,
        'Your class created',
        '<p>Your class New in-App Live System successfully created. It will be published after approval.</p>',
        'system',
        'single',
        1646171990
    ), (
        1692,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646172006
    ), (
        1693,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>',
        'system',
        'single',
        1646172086
    ), (
        1694,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class New in-App Live System successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1646172086
    ), (
        1695,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class New in-App Live System with type deduction and amount 11.00 .</p>',
        'system',
        'single',
        1646172087
    ), (
        1696,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>',
        'system',
        'single',
        1646172123
    ), (
        1697,
        996,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class New in-App Live System successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1646172123
    ), (
        1698,
        996,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class New in-App Live System with type deduction and amount 9.90 .</p>',
        'system',
        'single',
        1646172124
    ), (
        1699,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>',
        'system',
        'single',
        1646172159
    ), (
        1700,
        979,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class New in-App Live System successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1646172159
    ), (
        1701,
        979,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class New in-App Live System with type deduction and amount 11.00 .</p>',
        'system',
        'single',
        1646172160
    ), (
        1702,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>',
        'system',
        'single',
        1646172296
    ), (
        1703,
        929,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class New in-App Live System successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1646172296
    ), (
        1704,
        929,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class New in-App Live System with type deduction and amount 11.00 .</p>',
        'system',
        'single',
        1646172296
    ), (
        1705,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Travel Around the World successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646172352
    ), (
        1706,
        923,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646172394
    ), (
        1707,
        1015,
        NULL,
        NULL,
        'Your class created',
        '<p>Your class New in-App Live System successfully created. It will be published after approval.</p>',
        'system',
        'single',
        1646172624
    ), (
        1708,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646172650
    ), (
        1709,
        1015,
        NULL,
        NULL,
        'Your class created',
        '<p>Your class New in-App Live System successfully created. It will be published after approval.</p>',
        'system',
        'single',
        1646173046
    ), (
        1710,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New Learning Page successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646173945
    ), (
        1711,
        1017,
        NULL,
        NULL,
        'New badge',
        '<p>Congratilations! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1646174015
    ), (
        1712,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646174680
    ), (
        1713,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646175192
    ), (
        1714,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646175313
    ), (
        1715,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646175337
    ), (
        1764,
        863,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646263574
    ), (
        1765,
        863,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646263574
    ), (
        1766,
        863,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1646263574
    ), (
        1767,
        868,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646287364
    ), (
        1768,
        996,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646290203
    ), (
        1769,
        995,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646302693
    ), (
        1770,
        923,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646326059
    ), (
        1771,
        923,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Senior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646326060
    ), (
        1772,
        923,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646326060
    ), (
        1773,
        923,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646326060
    ), (
        1774,
        923,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1646326061
    ), (
        1775,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Manage Your Virtual Team successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646350436
    ), (
        1776,
        1015,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class New Learning Page received a 5 stars rating from Cameron Schofield .</p>',
        'system',
        'single',
        1646352833
    ), (
        1777,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class  .</p>',
        'system',
        'single',
        1646379288
    ), (
        1778,
        995,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class  successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1646379289
    ), (
        1779,
        995,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Cameron Schofield for 2022-03-15  with the amount 750 .</p>',
        'system',
        'single',
        1646379289
    ), (
        1780,
        1015,
        NULL,
        NULL,
        'New meeting request',
        '<p>New meeting booked by Cameron Schofield for 2022-03-15  with the amount 750 .</p>',
        'system',
        'single',
        1646379290
    ), (
        1781,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class Reservation Appointment with type deduction and amount 825.00 .</p>',
        'system',
        'single',
        1646379290
    ), (
        1782,
        1017,
        NULL,
        NULL,
        'New badge',
        '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1646379366
    ), (
        1783,
        867,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class [c.title] with type addiction and amount 200 .</p>',
        'system',
        'single',
        1646381415
    ), (
        1784,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646384782
    ), (
        1785,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646384788
    ), (
        1786,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646384788
    ), (
        1787,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646384789
    ), (
        1788,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1646384794
    ), (
        1789,
        930,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646386699
    ), (
        1790,
        NULL,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Pro Registration package .</p>',
        'system',
        'single',
        1646386787
    ), (
        1791,
        930,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Pro Registration package successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1646386787
    ), (
        1792,
        930,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class [c.title] with type deduction and amount 218.90 .</p>',
        'system',
        'single',
        1646386792
    ), (
        1793,
        859,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646387054
    ), (
        1794,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646387094
    ), (
        1795,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>You received Expert Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646387101
    ), (
        1796,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646387102
    ), (
        1797,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>You received King Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646387102
    ), (
        1798,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1646387107
    ), (
        1799,
        859,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class [c.title] with type addiction and amount 500 .</p>',
        'system',
        'single',
        1646387608
    ), (
        1800,
        NULL,
        NULL,
        NULL,
        'New sales',
        '<p>Congratulations! There is a new sales for your class Basic Registration package .</p>',
        'system',
        'single',
        1646387655
    ), (
        1801,
        859,
        NULL,
        NULL,
        'New purchase completed',
        '<p>The class Basic Registration package successfully purchased. Now you can start learning.</p>',
        'system',
        'single',
        1646387655
    ), (
        1802,
        859,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document submitted for your class [c.title] with type deduction and amount 220.00 .</p>',
        'system',
        'single',
        1646387660
    ), (
        1803,
        1017,
        NULL,
        NULL,
        'New badge',
        '<p>You received Loyal User&nbsp;badge.</p>',
        'system',
        'single',
        1646387776
    ), (
        1804,
        996,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646389863
    ), (
        1805,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646389876
    ), (
        1806,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>You received Senior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646389876
    ), (
        1807,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646389881
    ), (
        1808,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646389887
    ), (
        1809,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1646389887
    ), (
        1810,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New In-App Live System successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646392216
    ), (
        1811,
        995,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646396328
    ), (
        1812,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646396360
    ), (
        1813,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646396362
    ), (
        1814,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646396363
    ), (
        1815,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646396363
    ), (
        1816,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1646396368
    ), (
        1817,
        934,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class Web Design for Beginners successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646396836
    ), (
        1818,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class How to Manage Your Virtual Team successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646396847
    ), (
        1819,
        929,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646396857
    ), (
        1820,
        979,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646398166
    ), (
        1821,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646406163
    ), (
        1822,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>You received Senior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646406163
    ), (
        1823,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>You received Bronze Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646406164
    ), (
        1824,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646406169
    ), (
        1825,
        3,
        NULL,
        NULL,
        'New badge',
        '<p>You received Amazing Support&nbsp;badge.</p>',
        'system',
        'single',
        1646406174
    ), (
        1826,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646406175
    ), (
        1827,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646406175
    ), (
        1828,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646406175
    ), (
        1829,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646406181
    ), (
        1830,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1646406181
    ), (
        1831,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646406181
    ), (
        1832,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646406182
    ), (
        1833,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646406187
    ), (
        1834,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646406187
    ), (
        1835,
        863,
        NULL,
        NULL,
        'New badge',
        '<p>You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1646406193
    ), (
        1836,
        864,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646406198
    ), (
        1837,
        864,
        NULL,
        NULL,
        'New badge',
        '<p>You received Junior Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646406198
    ), (
        1838,
        864,
        NULL,
        NULL,
        'New badge',
        '<p>You received Best Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646406198
    ), (
        1839,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646406199
    ), (
        1840,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>You received Expert Vendor&nbsp;badge.</p>',
        'system',
        'single',
        1646406199
    ), (
        1841,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>You received Golden Classes&nbsp;badge.</p>',
        'system',
        'single',
        1646406199
    ), (
        1842,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>You received Top Seller&nbsp;badge.</p>',
        'system',
        'single',
        1646406205
    ), (
        1843,
        867,
        NULL,
        NULL,
        'New badge',
        '<p>You received Fantastic Support&nbsp;badge.</p>',
        'system',
        'single',
        1646406205
    ), (
        1844,
        868,
        NULL,
        NULL,
        'New badge',
        '<p>You received Faithful User&nbsp;badge.</p>',
        'system',
        'single',
        1646406205
    ), (
        1845,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation ! You received Faithful User badge.</p>',
        'system',
        'single',
        1646408504
    ), (
        1846,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation ! You received Junior Vendor badge.</p>',
        'system',
        'single',
        1646408511
    ), (
        1847,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation ! You received Golden Classes badge.</p>',
        'system',
        'single',
        1646408516
    ), (
        1848,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation ! You received Top Seller badge.</p>',
        'system',
        'single',
        1646408522
    ), (
        1849,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation ! You received Fantastic Support badge.</p>',
        'system',
        'single',
        1646408527
    ), (
        1850,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Faithful User badge.</p>',
        'system',
        'single',
        1646408593
    ), (
        1851,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Senior Vendor badge.</p>',
        'system',
        'single',
        1646408594
    ), (
        1852,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Golden Classes badge.</p>',
        'system',
        'single',
        1646408596
    ), (
        1853,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Best Seller badge.</p>',
        'system',
        'single',
        1646408601
    ), (
        1854,
        934,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Fantastic Support badge.</p>',
        'system',
        'single',
        1646408606
    ), (
        1855,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Faithful User badge.</p>',
        'system',
        'single',
        1646408712
    ), (
        1856,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Expert Vendor badge.</p>',
        'system',
        'single',
        1646408713
    ), (
        1857,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Golden Classes badge.</p>',
        'system',
        'single',
        1646408719
    ), (
        1858,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received King Seller badge.</p>',
        'system',
        'single',
        1646408724
    ), (
        1859,
        1015,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Fantastic Support badge.</p>',
        'system',
        'single',
        1646408730
    ), (
        1860,
        995,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Faithful User badge.</p>',
        'system',
        'single',
        1646412265
    ), (
        1861,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Faithful User badge.</p>',
        'system',
        'single',
        1646412316
    ), (
        1862,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Junior Vendor badge.</p>',
        'system',
        'single',
        1646412321
    ), (
        1863,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Golden Classes badge.</p>',
        'system',
        'single',
        1646412322
    ), (
        1864,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Top Seller badge.</p>',
        'system',
        'single',
        1646412323
    ), (
        1865,
        870,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Fantastic Support badge.</p>',
        'system',
        'single',
        1646412328
    ), (
        1866,
        995,
        NULL,
        NULL,
        'Offline payment submitted',
        '<p>An offline payment request with the amount 100 submitted successfully.</p>',
        'system',
        'single',
        1646413097
    ), (
        1867,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Faithful User badge.</p>',
        'system',
        'single',
        1646413370
    ), (
        1868,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Junior Vendor badge.</p>',
        'system',
        'single',
        1646413376
    ), (
        1869,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Golden Classes badge.</p>',
        'system',
        'single',
        1646413376
    ), (
        1870,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Top Seller badge.</p>',
        'system',
        'single',
        1646413377
    ), (
        1871,
        1016,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Fantastic Support badge.</p>',
        'system',
        'single',
        1646413380
    ), (
        1872,
        1016,
        NULL,
        NULL,
        'New feedback',
        '<p>Your class Become a Product Manager received a 5 stars rating from Robert Ransdell .</p>',
        'system',
        'single',
        1646413440
    ), (
        1873,
        996,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Faithful User badge.</p>',
        'system',
        'single',
        1646414245
    ), (
        1874,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New In-App Live System successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646415127
    ), (
        1875,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New Learning Page successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646415140
    ), (
        1876,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Faithful User badge.</p>',
        'system',
        'single',
        1646415745
    ), (
        1877,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Senior Vendor badge.</p>',
        'system',
        'single',
        1646415750
    ), (
        1878,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Golden Classes badge.</p>',
        'system',
        'single',
        1646415755
    ), (
        1879,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Top Seller badge.</p>',
        'system',
        'single',
        1646415756
    ), (
        1880,
        929,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Amazing Support badge.</p>',
        'system',
        'single',
        1646415756
    ), (
        1881,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Faithful User badge.</p>',
        'system',
        'single',
        1646415757
    ), (
        1882,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Senior Vendor badge.</p>',
        'system',
        'single',
        1646415757
    ), (
        1883,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Golden Classes badge.</p>',
        'system',
        'single',
        1646415757
    ), (
        1884,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Top Seller badge.</p>',
        'system',
        'single',
        1646415758
    ), (
        1885,
        923,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Fantastic Support badge.</p>',
        'system',
        'single',
        1646415763
    ), (
        1886,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Faithful User badge.</p>',
        'system',
        'single',
        1646426799
    ), (
        1887,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Junior Vendor badge.</p>',
        'system',
        'single',
        1646426800
    ), (
        1888,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Golden Classes badge.</p>',
        'system',
        'single',
        1646426805
    ), (
        1889,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Best Seller badge.</p>',
        'system',
        'single',
        1646426826
    ), (
        1890,
        4,
        NULL,
        NULL,
        'New badge',
        '<p>Congrolation! You received Fantastic Support badge.</p>',
        'system',
        'single',
        1646426831
    ), (
        1891,
        1015,
        NULL,
        NULL,
        'Your class approved',
        '<p>Your class New Learning Page successfully approved. Now you can find it on the website.</p>',
        'system',
        'single',
        1646492850
    ), (
        1892,
        1015,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655151400
    ), (
        1893,
        1015,
        NULL,
        NULL,
        'new badge',
        '<p>You received Expert Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655151401
    ), (
        1894,
        1015,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1655151401
    ), (
        1895,
        1015,
        NULL,
        NULL,
        'new badge',
        '<p>You received King Seller&nbsp;badge</p>',
        'system',
        'single',
        1655151402
    ), (
        1896,
        1015,
        NULL,
        NULL,
        'new badge',
        '<p>You received Fantastic Support&nbsp;badge</p>',
        'system',
        'single',
        1655151402
    ), (
        1897,
        1016,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655151402
    ), (
        1898,
        1016,
        NULL,
        NULL,
        'new badge',
        '<p>You received Junior Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655151402
    ), (
        1899,
        1016,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1655151403
    ), (
        1900,
        1016,
        NULL,
        NULL,
        'new badge',
        '<p>You received Top Seller&nbsp;badge</p>',
        'system',
        'single',
        1655151403
    ), (
        1901,
        1016,
        NULL,
        NULL,
        'new badge',
        '<p>You received Fantastic Support&nbsp;badge</p>',
        'system',
        'single',
        1655151403
    ), (
        1902,
        995,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655617838
    ), (
        1903,
        1,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655618081
    ), (
        1904,
        934,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655626424
    ), (
        1905,
        934,
        NULL,
        NULL,
        'new badge',
        '<p>You received Senior Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655626430
    ), (
        1906,
        934,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1655626430
    ), (
        1907,
        934,
        NULL,
        NULL,
        'new badge',
        '<p>You received Best Seller&nbsp;badge</p>',
        'system',
        'single',
        1655626430
    ), (
        1908,
        934,
        NULL,
        NULL,
        'new badge',
        '<p>You received Fantastic Support&nbsp;badge</p>',
        'system',
        'single',
        1655626436
    ), (
        1909,
        1017,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655697087
    ), (
        1910,
        929,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655718810
    ), (
        1911,
        929,
        NULL,
        NULL,
        'new badge',
        '<p>You received Senior Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655718816
    ), (
        1912,
        929,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1655718817
    ), (
        1913,
        929,
        NULL,
        NULL,
        'new badge',
        '<p>You received Top Seller&nbsp;badge</p>',
        'system',
        'single',
        1655718817
    ), (
        1914,
        929,
        NULL,
        NULL,
        'new badge',
        '<p>You received Amazing Support&nbsp;badge</p>',
        'system',
        'single',
        1655718818
    ), (
        1915,
        979,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655786599
    ), (
        1916,
        930,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655786673
    ), (
        1917,
        923,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655787580
    ), (
        1918,
        923,
        NULL,
        NULL,
        'new badge',
        '<p>You received Senior Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655787581
    ), (
        1919,
        923,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1655787582
    ), (
        1920,
        923,
        NULL,
        NULL,
        'new badge',
        '<p>You received Fantastic Support&nbsp;badge</p>',
        'system',
        'single',
        1655787582
    ), (
        1921,
        996,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655788012
    ), (
        1922,
        870,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655788252
    ), (
        1923,
        870,
        NULL,
        NULL,
        'new badge',
        '<p>You received Junior Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655788252
    ), (
        1924,
        870,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1655788252
    ), (
        1925,
        870,
        NULL,
        NULL,
        'new badge',
        '<p>You received Fantastic Support&nbsp;badge</p>',
        'system',
        'single',
        1655788253
    ), (
        1926,
        3,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655788547
    ), (
        1927,
        3,
        NULL,
        NULL,
        'new badge',
        '<p>You received Senior Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655788548
    ), (
        1928,
        3,
        NULL,
        NULL,
        'new badge',
        '<p>You received Bronze Classes&nbsp;badge</p>',
        'system',
        'single',
        1655788548
    ), (
        1929,
        3,
        NULL,
        NULL,
        'new badge',
        '<p>You received Best Seller&nbsp;badge</p>',
        'system',
        'single',
        1655788548
    ), (
        1930,
        3,
        NULL,
        NULL,
        'new badge',
        '<p>You received Amazing Support&nbsp;badge</p>',
        'system',
        'single',
        1655788549
    ), (
        1931,
        859,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655789571
    ), (
        1932,
        929,
        NULL,
        NULL,
        'new badge',
        '<p>You received Expert Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655799442
    ), (
        1933,
        929,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title Drip & Assignment Features</p>',
        'system',
        'single',
        1655804545
    ), (
        1934,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Drip & Assignment Features approved</p>',
        'system',
        'single',
        1655804610
    ), (
        1935,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Drip and Assignment Features approved</p>',
        'system',
        'single',
        1655804649
    ), (
        1936,
        867,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655822951
    ), (
        1937,
        867,
        NULL,
        NULL,
        'new badge',
        '<p>You received Expert Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655822952
    ), (
        1938,
        867,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1655822952
    ), (
        1939,
        867,
        NULL,
        NULL,
        'new badge',
        '<p>You received Top Seller&nbsp;badge</p>',
        'system',
        'single',
        1655822952
    ), (
        1940,
        867,
        NULL,
        NULL,
        'new badge',
        '<p>You received Fantastic Support&nbsp;badge</p>',
        'system',
        'single',
        1655822953
    ), (
        1941,
        863,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655822954
    ), (
        1942,
        863,
        NULL,
        NULL,
        'new badge',
        '<p>You received Junior Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655822954
    ), (
        1943,
        863,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1655822954
    ), (
        1944,
        863,
        NULL,
        NULL,
        'new badge',
        '<p>You received Top Seller&nbsp;badge</p>',
        'system',
        'single',
        1655822955
    ), (
        1945,
        864,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655822955
    ), (
        1946,
        863,
        NULL,
        NULL,
        'new badge',
        '<p>You received Fantastic Support&nbsp;badge</p>',
        'system',
        'single',
        1655822955
    );

INSERT INTO
    `notifications` (
        `id`,
        `user_id`,
        `sender_id`,
        `group_id`,
        `title`,
        `message`,
        `sender`,
        `type`,
        `created_at`
    )
VALUES (
        1947,
        864,
        NULL,
        NULL,
        'new badge',
        '<p>You received Junior Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655822955
    ), (
        1948,
        864,
        NULL,
        NULL,
        'new badge',
        '<p>You received Best Seller&nbsp;badge</p>',
        'system',
        'single',
        1655822955
    ), (
        1949,
        4,
        NULL,
        NULL,
        'new badge',
        '<p>You received Faithful User&nbsp;badge</p>',
        'system',
        'single',
        1655823000
    ), (
        1950,
        4,
        NULL,
        NULL,
        'new badge',
        '<p>You received Junior Vendor&nbsp;badge</p>',
        'system',
        'single',
        1655823000
    ), (
        1951,
        4,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1655823001
    ), (
        1952,
        4,
        NULL,
        NULL,
        'new badge',
        '<p>You received Best Seller&nbsp;badge</p>',
        'system',
        'single',
        1655823001
    ), (
        1953,
        4,
        NULL,
        NULL,
        'new badge',
        '<p>You received Fantastic Support&nbsp;badge</p>',
        'system',
        'single',
        1655823001
    ), (
        1954,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Drip and Assignment Features approved</p>',
        'system',
        'single',
        1655871649
    ), (
        1955,
        929,
        NULL,
        NULL,
        'Rating (Feedback)',
        '<p>new feedback submitted for course with title Drip and Assignment Features bu student Robert B. Gray and rate 4</p>',
        'system',
        'single',
        1655875572
    ), (
        1956,
        1015,
        NULL,
        NULL,
        'new badge',
        '<p>You received Loyal User&nbsp;badge</p>',
        'system',
        'single',
        1655907547
    ), (
        1957,
        1019,
        NULL,
        NULL,
        'new badge',
        '<p>You received New User&nbsp;badge</p>',
        'system',
        'single',
        1655970555
    ), (
        1958,
        1015,
        NULL,
        NULL,
        'New sales',
        '<p>new sale for course with title Microsoft Office Beginner to Expert Bundle</p>',
        'system',
        'single',
        1656083262
    ), (
        1959,
        930,
        NULL,
        NULL,
        'New purchase',
        '<p>new purchase for course with title Microsoft Office Beginner to Expert Bundle</p>',
        'system',
        'single',
        1656083262
    ), (
        1960,
        930,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Microsoft Office Beginner to Expert Bundle with type deduction with price 55.00</p>',
        'system',
        'single',
        1656083263
    ), (
        1961,
        1016,
        NULL,
        NULL,
        'new badge',
        '<p>You received Loyal User&nbsp;badge</p>',
        'system',
        'single',
        1656083787
    ), (
        1962,
        1015,
        NULL,
        NULL,
        'Rating (Feedback)',
        '<p>new feedback submitted for course with title Travel Management Course bu student Cameron Schofield and rate 5</p>',
        'system',
        'single',
        1656103090
    ), (
        1963,
        1015,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Learning Page approved</p>',
        'system',
        'single',
        1656103140
    ), (
        1964,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Sherlock Holmes e-book with type deduction with price 5.25</p>',
        'system',
        'single',
        1656103844
    ), (
        1965,
        923,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Painting tools with type deduction with price 31.25</p>',
        'system',
        'single',
        1656104131
    ), (
        1966,
        864,
        NULL,
        NULL,
        'New sales',
        '<p>new sale for course with title Active Listening: You Can Be a Great Listener</p>',
        'system',
        'single',
        1656130482
    ), (
        1967,
        996,
        NULL,
        NULL,
        'New purchase',
        '<p>new purchase for course with title Active Listening: You Can Be a Great Listener</p>',
        'system',
        'single',
        1656130482
    ), (
        1968,
        996,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Active Listening: You Can Be a Great Listener with type deduction with price 39.60</p>',
        'system',
        'single',
        1656130482
    ), (
        1969,
        864,
        NULL,
        NULL,
        'new badge',
        '<p>You received Top Seller&nbsp;badge</p>',
        'system',
        'single',
        1656130495
    ), (
        1970,
        3,
        NULL,
        NULL,
        'Rating (Feedback)',
        '<p>new feedback submitted for course with title Active Listening: You Can Be a Great Listener bu student Robert B. Gray and rate 5</p>',
        'system',
        'single',
        1656130561
    ), (
        1971,
        930,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Advanced microscope with type deduction with price 314.50</p>',
        'system',
        'single',
        1656130707
    ), (
        1972,
        996,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Business Software with type deduction with price 78.75</p>',
        'system',
        'single',
        1656130963
    ), (
        1973,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Drip and Assignment Features approved</p>',
        'system',
        'single',
        1656137686
    ), (
        1974,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title Drip and Assignment Features approved</p>',
        'system',
        'single',
        1656137739
    ), (
        1975,
        934,
        NULL,
        NULL,
        'New sales',
        '<p>new sale for course with title A-Z Web Programming</p>',
        'system',
        'single',
        1656139703
    ), (
        1976,
        979,
        NULL,
        NULL,
        'New purchase',
        '<p>new purchase for course with title A-Z Web Programming</p>',
        'system',
        'single',
        1656139704
    ), (
        1977,
        979,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course A-Z Web Programming with type deduction with price 8.80</p>',
        'system',
        'single',
        1656139704
    ), (
        1978,
        929,
        NULL,
        NULL,
        'New sales',
        '<p>new sale for course with title Solar Energy Design Course From Zero To Hero</p>',
        'system',
        'single',
        1656139705
    ), (
        1979,
        979,
        NULL,
        NULL,
        'New purchase',
        '<p>new purchase for course with title Solar Energy Design Course From Zero To Hero</p>',
        'system',
        'single',
        1656139705
    ), (
        1980,
        979,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Solar Energy Design Course From Zero To Hero with type deduction with price 27.50</p>',
        'system',
        'single',
        1656139705
    ), (
        1981,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Update Features approved</p>',
        'system',
        'single',
        1656142775
    ), (
        1982,
        1015,
        NULL,
        NULL,
        'new badge',
        '<p>You received Store Best Seller&nbsp;badge</p>',
        'system',
        'single',
        1656148218
    ), (
        1983,
        1015,
        NULL,
        NULL,
        'new badge',
        '<p>You received Forums Top User&nbsp;badge</p>',
        'system',
        'single',
        1656148220
    ), (
        1984,
        1017,
        NULL,
        NULL,
        'new badge',
        '<p>You received Loyal User&nbsp;badge</p>',
        'system',
        'single',
        1656148474
    ), (
        1985,
        1017,
        NULL,
        NULL,
        'new badge',
        '<p>You received Forums Top User&nbsp;badge</p>',
        'system',
        'single',
        1656148474
    ), (
        1986,
        1017,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Painting tools with type deduction with price 26.00</p>',
        'system',
        'single',
        1656148574
    ), (
        1987,
        995,
        NULL,
        NULL,
        'new badge',
        '<p>You received Forums Top User&nbsp;badge</p>',
        'system',
        'single',
        1656148637
    ), (
        1988,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course  with type addiction with price 300</p>',
        'system',
        'single',
        1656148789
    ), (
        1989,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Painting tools with type deduction with price 52.25</p>',
        'system',
        'single',
        1656148838
    ), (
        1990,
        1016,
        NULL,
        NULL,
        'new badge',
        '<p>You received Store Best Seller&nbsp;badge</p>',
        'system',
        'single',
        1656194232
    ), (
        1991,
        864,
        NULL,
        NULL,
        'new badge',
        '<p>You received Golden Classes&nbsp;badge</p>',
        'system',
        'single',
        1656194599
    ), (
        1992,
        864,
        NULL,
        NULL,
        'new badge',
        '<p>You received Fantastic Support&nbsp;badge</p>',
        'system',
        'single',
        1656194599
    ), (
        1993,
        870,
        NULL,
        NULL,
        'new badge',
        '<p>You received Forums Top User&nbsp;badge</p>',
        'system',
        'single',
        1656219366
    ), (
        1994,
        996,
        NULL,
        NULL,
        'new badge',
        '<p>You received Forums Top User&nbsp;badge</p>',
        'system',
        'single',
        1656219590
    ), (
        1995,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Update Features approved</p>',
        'system',
        'single',
        1656219955
    ), (
        1996,
        1015,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Learning Page approved</p>',
        'system',
        'single',
        1656220500
    ), (
        1997,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Update Features approved</p>',
        'system',
        'single',
        1656220512
    ), (
        1998,
        995,
        NULL,
        NULL,
        'New financial document',
        '<p>&nbsp;New financial document for course Where the Crawdads Sing e-book with type deduction with price 17.00</p>',
        'system',
        'single',
        1656322658
    ), (
        1999,
        1015,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Learning Page approved</p>',
        'system',
        'single',
        1656362307
    ), (
        2000,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Update Features approved</p>',
        'system',
        'single',
        1656362329
    ), (
        2001,
        1015,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Learning Page approved</p>',
        'system',
        'single',
        1656406697
    ), (
        2002,
        923,
        NULL,
        NULL,
        'new badge',
        '<p>You received Forums Top User&nbsp;badge</p>',
        'system',
        'single',
        1656530749
    ), (
        2003,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Update Features approved</p>',
        'system',
        'single',
        1656662548
    ), (
        2004,
        1015,
        NULL,
        NULL,
        'Course created',
        '<p>you create new course&nbsp;with Title New Learning Page</p>',
        'system',
        'single',
        1656664502
    ), (
        2005,
        1015,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Learning Page approved</p>',
        'system',
        'single',
        1656664518
    ), (
        2006,
        929,
        NULL,
        NULL,
        'Course approve',
        '<p>your course with title New Update Features approved</p>',
        'system',
        'single',
        1656664534
    ), (
        2007,
        995,
        NULL,
        NULL,
        'Certificate',
        '<p>certificate recived for course Travel Management Course</p>',
        'system',
        'single',
        1656664855
    );

-- --------------------------------------------------------

--

-- Table structure for table `notifications_status`

--

CREATE TABLE
    `notifications_status` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `notification_id` int(10) UNSIGNED NOT NULL,
        `seen_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `notifications_status`

--

INSERT INTO
    `notifications_status` (
        `id`,
        `user_id`,
        `notification_id`,
        `seen_at`
    )
VALUES (1, 995, 1431, 1646127235), (2, 995, 1436, 1646127239), (3, 995, 1435, 1646127239), (4, 995, 1438, 1646127241), (5, 995, 1439, 1646127242), (6, 995, 1442, 1646127243), (7, 995, 1441, 1646127245), (8, 995, 1476, 1646127245), (9, 995, 1475, 1646127246), (10, 995, 1477, 1646127248), (11, 995, 1348, 1646127256), (12, 995, 1402, 1646127264), (13, 995, 1404, 1646127265), (14, 995, 1406, 1646127266), (15, 995, 1407, 1646127267), (16, 995, 1409, 1646127269), (17, 995, 1412, 1646127270), (18, 995, 1411, 1646127271), (19, 995, 1427, 1646127272), (20, 995, 1428, 1646127273), (21, 995, 1430, 1646127276), (22, 995, 1513, 1646127280), (23, 995, 1579, 1646127281), (24, 995, 1582, 1646127282), (25, 995, 1580, 1646127282), (26, 995, 1609, 1646127283), (27, 995, 1610, 1646127286);

-- --------------------------------------------------------

--

-- Table structure for table `notification_templates`

--

CREATE TABLE
    `notification_templates` (
        `id` int(10) UNSIGNED NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `template` text COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `notification_templates`

--

INSERT INTO
    `notification_templates` (`id`, `title`, `template`)
VALUES (
        2,
        'new badge',
        '<p>You received [u.b.title]&nbsp;badge</p>'
    ), (
        3,
        'Change user group',
        '<p>your group change to [u.g.title]</p>'
    ), (
        4,
        'Course created',
        '<p>you create new course&nbsp;with Title [c.title]</p>'
    ), (
        5,
        'Course approve',
        '<p>your course with title [c.title] approved</p>'
    ), (
        6,
        'Course rejection',
        '<p>Your course with title [c.title] rejected</p>'
    ), (
        7,
        'New comment',
        '<p>user [u.name] add new comment fro course with title [c.title]</p>'
    ), (
        8,
        'New support message',
        '<p>user [u.name] send new support message for course with title [c.title]</p>'
    ), (
        9,
        'support message replied',
        '<p>support message replied fro course [c.title]</p>'
    ), (
        10,
        'New support for admin',
        '<p>send new support&nbsp; ticket with title&nbsp;[s.t.title]</p>'
    ), (
        11,
        'support ticket replied for admin',
        '<p>replied support&nbsp; ticket with title&nbsp;[s.t.title]</p>'
    ), (
        12,
        'New financial document',
        '<p>&nbsp;New financial document for course [c.title] with type [f.d.type] with price [amount]</p>'
    ), (
        13,
        'Payout request',
        '<p>payout request with amount&nbsp; [payout.amount]</p>'
    ), (
        14,
        'Payout proceed',
        'Payout with amount [payout.amount]&nbsp;&nbsp;proceed by account [payout.account]'
    ), (
        15,
        'New sales',
        '<p>new sale for course with title [c.title]</p>'
    ), (
        16,
        'New purchase',
        '<p>new purchase for course with title [c.title]</p>'
    ), (
        17,
        'Rating (Feedback)',
        '<p>new feedback submitted for course with title [c.title] bu student [student.name] and rate [rate.count]</p>'
    ), (
        18,
        'Offline payment request',
        '<p>Offline payment request with amount [amount]</p>'
    ), (
        19,
        'Offline payment approved',
        '<p>Offline payment request with amount [amount]&nbsp;approved</p>'
    ), (
        20,
        'Offline payment rejected',
        '<p>Offline payment request with amount [amount]&nbsp;rejected</p>'
    ), (
        21,
        'New subscribe plan',
        '<p>New subscribe plan activated by user [u.name] for plan [s.p.name]</p>'
    ), (
        22,
        'New appointment [amount]',
        '<p>New appointment booked by user [u.name] in time [time.date] with price&nbsp;[amount]</p>'
    ), (
        23,
        'New appointment link',
        '<p>appointment&nbsp; link defined by the [instructor.name]. time [time.date] and link is [link]</p>'
    ), (
        24,
        'Appointment reminder',
        '<p>You have an appointment on [time.date]</p>'
    ), (
        25,
        'Meeting finished',
        '<p>meeting finished instructor : [instructor.name] and student :&nbsp; [student.name] and time : [time.date]</p>'
    ), (
        26,
        'New contact message',
        '<p>New contact message with title [c.u.title] and user name [u.name] recived</p>'
    ), (
        27,
        'Webinar reminder',
        '<p>Webinar reminder time [time.date] webinar title [c.title]</p>'
    ), (
        28,
        'Promotion plan',
        '<p>plan [p.p.name]&nbsp;&nbsp;activated for course [c.title]</p>'
    ), (
        29,
        'Promotion plan for admin',
        '<p>new request promotion plan [p.p.name] for course [c.title]</p>'
    ), (
        30,
        'Certificate',
        '<p>certificate recived for course [c.title]</p>'
    ), (
        31,
        'Waiting quiz',
        '<p>student [student.name]&nbsp; waiting for quiz [q.title] for course [c.title]</p>'
    ), (
        32,
        'Waiting quiz result',
        '<p>course [c.title]&nbsp;calculated quiz [q.title] result [q.result] by instructor</p>'
    ), (
        33,
        'product new sale',
        '<p>new sale for product with title [p.title]</p>'
    ), (
        34,
        'Product New purchase',
        '<p>new purchase for product with title [p.title]</p>'
    ), (
        35,
        'Product New comment',
        '<p>user [u.name] add new comment fro product with title [p.title]</p>'
    ), (
        36,
        'Product tracking code',
        '<p>user [u.name] add tracking code for product with title [p.title]</p>'
    ), (
        37,
        'Product Rating (Feedback)',
        '<p>new feedback submitted for product with title [p.title] by user [u.name] and rate [rate.count]</p>'
    ), (
        38,
        'Product receive shipment',
        '<p>user [u.name] received product with title [p.title]</p>'
    ), (
        39,
        'Product out of stock',
        '<p>The product inventory ended with the title [p.title]</p>'
    ), (
        40,
        'Send assignment by the student to the instructor',
        '<p>[student.name] send assignment for course by title [c.title]</p>'
    ), (
        41,
        'when the instructor sends a message for assignment',
        '<p>[instructor.name] send message for course by title [c.title]</p>'
    ), (
        42,
        'assignment grade',
        '<p>The [instructor.name]&nbsp;gave you a grade of [assignment_grade]&nbsp;for course by title [c.title]</p>'
    ), (
        43,
        'user access to content',
        '<p>Your access to content is enabled.</p>'
    ), (
        44,
        'Send post in topic',
        '<p>[u.name] send post in your topic with title [topic_title]&nbsp;</p>'
    ), (
        45,
        'publish instructor blog post',
        '<p>your post with title [blog_title] published.</p>'
    ), (
        46,
        'new comment for instructor blog',
        '<p>user [u.name] add new comment for your blog with title [blog_title]</p>'
    ), (
        47,
        'Meeting reminder',
        '<p>Meeting reminder time [time.date] with instructor by name [instructor.name]</p>'
    ), (
        48,
        'subscribe expire reminder',
        '<p>Your subscribe has been expired in&nbsp;[time.date]</p>'
    ), (
        49,
        'Course Forum new Question',
        '<p>[u.name] registered a question in the [c.title]&nbsp;course forum.</p>'
    ), (
        50,
        'New answer in course forum',
        '<p>[u.name] registered a answer in the [c.title]&nbsp;course forum.</p>'
    );

-- --------------------------------------------------------

--

-- Table structure for table `offline_payments`

--

CREATE TABLE
    `offline_payments` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `amount` int(11) NOT NULL,
        `bank` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `reference_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `status` enum(
            'waiting',
            'approved',
            'reject'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `pay_date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `offline_payments`

--

INSERT INTO
    `offline_payments` (
        `id`,
        `user_id`,
        `amount`,
        `bank`,
        `reference_number`,
        `attachment`,
        `status`,
        `pay_date`,
        `created_at`
    )
VALUES (
        15,
        996,
        500,
        'JPMorgan',
        '493214678',
        NULL,
        'approved',
        '1625906880',
        1625944192
    ), (
        16,
        995,
        1000,
        'Qatar National Bank',
        '5492247188',
        NULL,
        'approved',
        '1625888700',
        1625950563
    ), (
        17,
        979,
        400,
        'State Bank of India',
        '4637249712',
        NULL,
        'approved',
        '1626160980',
        1625992349
    ), (
        18,
        1016,
        100,
        'JPMorgan',
        '56647132456',
        NULL,
        'reject',
        '1626065100',
        1625992606
    ), (
        20,
        923,
        300,
        'Qatar National Bank',
        '8314667560',
        NULL,
        'approved',
        '1626321000',
        1625993428
    ), (
        21,
        930,
        250,
        'JPMorgan',
        '5325469580',
        NULL,
        'approved',
        '1626070800',
        1625993489
    ), (
        22,
        1015,
        500,
        'State Bank of India',
        '583359268',
        NULL,
        'approved',
        '1626183840',
        1626132546
    ), (
        23,
        929,
        300,
        'State Bank of India',
        '56476312144',
        NULL,
        'approved',
        '1626252480',
        1626241046
    ), (
        24,
        996,
        200,
        'Qatar National Bank',
        '261513513513',
        NULL,
        'approved',
        '1627950600',
        1628704322
    ), (
        25,
        995,
        100,
        'State Bank of India',
        '546465654',
        NULL,
        'approved',
        '1629204540',
        1628704347
    ), (
        26,
        995,
        200,
        'JPMorgan',
        '2123135131',
        NULL,
        'approved',
        '1628610420',
        1628704369
    ), (
        27,
        979,
        100,
        'State Bank of India',
        '3416354544',
        NULL,
        'reject',
        '1628606880',
        1628704436
    ), (
        28,
        930,
        100,
        'State Bank of India',
        '5161616',
        NULL,
        'waiting',
        '1630413000',
        1628785223
    ), (
        34,
        930,
        500,
        'Qatar National Bank',
        '3215415665',
        NULL,
        'waiting',
        '1629469800',
        1628785293
    ), (
        41,
        995,
        100,
        'JPMorgan',
        '1647726485',
        '1646413097.png',
        'waiting',
        '1646322780',
        1646413097
    );

-- --------------------------------------------------------

--

-- Table structure for table `orders`

--

CREATE TABLE
    `orders` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `status` enum(
            'pending',
            'paying',
            'paid',
            'fail'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `payment_method` enum('credit', 'payment_channel') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `is_charge_account` tinyint(1) NOT NULL DEFAULT '0',
        `amount` int(10) UNSIGNED NOT NULL,
        `tax` decimal(13, 2) DEFAULT NULL,
        `total_discount` decimal(13, 2) DEFAULT NULL,
        `total_amount` decimal(13, 2) DEFAULT NULL,
        `product_delivery_fee` decimal(13, 2) DEFAULT NULL,
        `reference_id` text COLLATE utf8mb4_unicode_ci,
        `payment_data` text COLLATE utf8mb4_unicode_ci,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `orders`

--

INSERT INTO
    `orders` (
        `id`,
        `user_id`,
        `status`,
        `payment_method`,
        `is_charge_account`,
        `amount`,
        `tax`,
        `total_discount`,
        `total_amount`,
        `product_delivery_fee`,
        `reference_id`,
        `payment_data`,
        `created_at`
    )
VALUES (
        306,
        1015,
        'pending',
        NULL,
        0,
        63,
        '6.30',
        NULL,
        '69.30',
        NULL,
        NULL,
        NULL,
        1625145687
    ), (
        307,
        996,
        'paid',
        'credit',
        0,
        150,
        '15.00',
        '0.00',
        '165.00',
        NULL,
        NULL,
        NULL,
        1625944333
    ), (
        308,
        995,
        'paid',
        'credit',
        0,
        100,
        '10.00',
        '0.00',
        '110.00',
        NULL,
        NULL,
        NULL,
        1625952623
    ), (
        309,
        995,
        'paid',
        'credit',
        0,
        10,
        '1.00',
        '0.00',
        '11.00',
        NULL,
        NULL,
        NULL,
        1625953190
    ), (
        310,
        995,
        'paid',
        'credit',
        0,
        125,
        '12.50',
        '0.00',
        '137.50',
        NULL,
        NULL,
        NULL,
        1625996807
    ), (
        311,
        995,
        'paid',
        'credit',
        0,
        50,
        '5.00',
        '0.00',
        '55.00',
        NULL,
        NULL,
        NULL,
        1625996936
    ), (
        312,
        995,
        'paid',
        'credit',
        0,
        100,
        '5.00',
        '50.00',
        '55.00',
        NULL,
        NULL,
        NULL,
        1625996974
    ), (
        313,
        995,
        'paid',
        'credit',
        0,
        16,
        '1.20',
        '4.00',
        '13.20',
        NULL,
        NULL,
        NULL,
        1625997096
    ), (
        314,
        996,
        'paid',
        'credit',
        0,
        25,
        '2.25',
        '2.50',
        '24.75',
        NULL,
        NULL,
        NULL,
        1626060481
    ), (
        315,
        996,
        'paid',
        'credit',
        0,
        100,
        '4.00',
        '60.00',
        '44.00',
        NULL,
        NULL,
        NULL,
        1626060547
    ), (
        316,
        930,
        'paid',
        'credit',
        0,
        100,
        '5.00',
        '50.00',
        '55.00',
        NULL,
        NULL,
        NULL,
        1626060832
    ), (
        317,
        979,
        'paid',
        'credit',
        0,
        60,
        '6.00',
        '0.00',
        '66.00',
        NULL,
        NULL,
        NULL,
        1626061329
    ), (
        318,
        979,
        'paid',
        'credit',
        0,
        50,
        '5.00',
        '0.00',
        '55.00',
        NULL,
        NULL,
        NULL,
        1626061366
    ), (
        319,
        995,
        'paid',
        'credit',
        0,
        20,
        '2.00',
        NULL,
        '22.00',
        NULL,
        NULL,
        NULL,
        1626061431
    ), (
        320,
        1015,
        'pending',
        NULL,
        0,
        20,
        '2.00',
        '0.00',
        '22.00',
        NULL,
        NULL,
        NULL,
        1626132487
    ), (
        321,
        1015,
        'paid',
        'credit',
        0,
        20,
        '1.60',
        '4.00',
        '17.60',
        NULL,
        NULL,
        NULL,
        1626132840
    ), (
        322,
        929,
        'pending',
        NULL,
        0,
        40,
        '3.00',
        '10.00',
        '33.00',
        NULL,
        NULL,
        NULL,
        1626240993
    ), (
        323,
        929,
        'paid',
        'credit',
        0,
        50,
        '5.00',
        NULL,
        '55.00',
        NULL,
        NULL,
        NULL,
        1626241146
    ), (
        324,
        929,
        'paid',
        'credit',
        0,
        40,
        '3.00',
        '10.00',
        '33.00',
        NULL,
        NULL,
        NULL,
        1626241207
    ), (
        325,
        995,
        'paid',
        'credit',
        0,
        100,
        '10.00',
        '0.00',
        '110.00',
        NULL,
        NULL,
        NULL,
        1626247189
    ), (
        326,
        1015,
        'pending',
        NULL,
        0,
        20,
        '1.60',
        '4.00',
        '17.60',
        NULL,
        NULL,
        NULL,
        1626284818
    ), (
        327,
        996,
        'paid',
        'credit',
        0,
        30,
        '2.70',
        '3.00',
        '29.70',
        NULL,
        NULL,
        NULL,
        1626508952
    ), (
        328,
        929,
        'paid',
        'credit',
        0,
        30,
        '3.00',
        '0.00',
        '33.00',
        NULL,
        NULL,
        NULL,
        1635412190
    ), (
        329,
        979,
        'pending',
        NULL,
        0,
        100,
        '10.00',
        NULL,
        '110.00',
        NULL,
        NULL,
        NULL,
        1635448382
    ), (
        330,
        1017,
        'paid',
        'credit',
        0,
        30,
        '3.00',
        '0.00',
        '33.00',
        NULL,
        NULL,
        NULL,
        1639379271
    ), (
        331,
        1017,
        'paid',
        'credit',
        0,
        100,
        '10.00',
        '0.00',
        '110.00',
        NULL,
        NULL,
        NULL,
        1639379347
    ), (
        332,
        1017,
        'paid',
        'credit',
        0,
        40,
        '3.00',
        '10.00',
        '33.00',
        NULL,
        NULL,
        NULL,
        1639379382
    ), (
        333,
        995,
        'paid',
        'credit',
        0,
        10,
        '1.00',
        '0.00',
        '11.00',
        NULL,
        NULL,
        NULL,
        1646172083
    ), (
        334,
        996,
        'paid',
        'credit',
        0,
        10,
        '0.90',
        '1.00',
        '9.90',
        NULL,
        NULL,
        NULL,
        1646172119
    ), (
        335,
        979,
        'paid',
        'credit',
        0,
        10,
        '1.00',
        '0.00',
        '11.00',
        NULL,
        NULL,
        NULL,
        1646172156
    ), (
        336,
        929,
        'paid',
        'credit',
        0,
        10,
        '1.00',
        '0.00',
        '11.00',
        NULL,
        NULL,
        NULL,
        1646172292
    ), (
        337,
        995,
        'paid',
        'credit',
        0,
        750,
        '75.00',
        '0.00',
        '825.00',
        NULL,
        NULL,
        NULL,
        1646379279
    ), (
        338,
        1017,
        'pending',
        NULL,
        0,
        300,
        '30.00',
        '0.00',
        '330.00',
        NULL,
        NULL,
        NULL,
        1646380150
    ), (
        339,
        930,
        'paid',
        'credit',
        0,
        199,
        '19.90',
        NULL,
        '218.90',
        NULL,
        NULL,
        NULL,
        1646386782
    ), (
        340,
        859,
        'paid',
        'credit',
        0,
        200,
        '20.00',
        NULL,
        '220.00',
        NULL,
        NULL,
        NULL,
        1646387650
    ), (
        341,
        930,
        'paid',
        'credit',
        0,
        50,
        '5.00',
        '0.00',
        '55.00',
        '0.00',
        NULL,
        NULL,
        1656083106
    ), (
        342,
        995,
        'paid',
        'credit',
        0,
        5,
        '0.25',
        '0.00',
        '5.25',
        '0.00',
        NULL,
        NULL,
        1656103838
    ), (
        343,
        923,
        'paid',
        'credit',
        0,
        25,
        '1.25',
        '0.00',
        '31.25',
        '5.00',
        NULL,
        NULL,
        1656104126
    ), (
        344,
        996,
        'paid',
        'credit',
        0,
        40,
        '3.60',
        '4.00',
        '39.60',
        '0.00',
        NULL,
        NULL,
        1656130476
    ), (
        345,
        930,
        'paid',
        'credit',
        0,
        290,
        '14.50',
        '0.00',
        '314.50',
        '10.00',
        NULL,
        NULL,
        1656130702
    ), (
        346,
        996,
        'paid',
        'credit',
        0,
        75,
        '3.75',
        '0.00',
        '78.75',
        '0.00',
        NULL,
        NULL,
        1656130959
    ), (
        347,
        979,
        'paid',
        'credit',
        0,
        33,
        '3.30',
        '0.00',
        '36.30',
        '0.00',
        NULL,
        NULL,
        1656139699
    ), (
        348,
        1017,
        'paid',
        'credit',
        0,
        25,
        '1.00',
        '5.00',
        '26.00',
        '5.00',
        NULL,
        NULL,
        1656148569
    ), (
        349,
        995,
        'pending',
        NULL,
        0,
        50,
        '2.25',
        '5.00',
        '52.25',
        '5.00',
        NULL,
        NULL,
        1656148735
    ), (
        350,
        995,
        'paid',
        'credit',
        0,
        50,
        '2.25',
        '5.00',
        '52.25',
        '5.00',
        NULL,
        NULL,
        1656148833
    ), (
        351,
        995,
        'paid',
        'credit',
        0,
        20,
        '1.00',
        '4.00',
        '17.00',
        '0.00',
        NULL,
        NULL,
        1656322652
    );

-- --------------------------------------------------------

--

-- Table structure for table `order_items`

--

CREATE TABLE
    `order_items` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `order_id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED DEFAULT NULL,
        `bundle_id` int(10) UNSIGNED DEFAULT NULL,
        `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
        `promotion_id` int(10) UNSIGNED DEFAULT NULL,
        `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
        `product_id` int(10) UNSIGNED DEFAULT NULL,
        `product_order_id` int(10) UNSIGNED DEFAULT NULL,
        `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
        `ticket_id` int(10) UNSIGNED DEFAULT NULL,
        `discount_id` int(11) DEFAULT NULL,
        `become_instructor_id` int(10) UNSIGNED DEFAULT NULL,
        `amount` int(10) UNSIGNED DEFAULT NULL,
        `tax` int(10) UNSIGNED DEFAULT NULL,
        `tax_price` decimal(13, 2) DEFAULT NULL,
        `commission` int(10) UNSIGNED DEFAULT NULL,
        `commission_price` decimal(13, 2) DEFAULT NULL,
        `discount` decimal(13, 2) DEFAULT NULL,
        `total_amount` decimal(13, 2) DEFAULT NULL,
        `product_delivery_fee` decimal(13, 2) DEFAULT NULL,
        `created_at` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `order_items`

--

INSERT INTO
    `order_items` (
        `id`,
        `user_id`,
        `order_id`,
        `webinar_id`,
        `bundle_id`,
        `subscribe_id`,
        `promotion_id`,
        `registration_package_id`,
        `product_id`,
        `product_order_id`,
        `reserve_meeting_id`,
        `ticket_id`,
        `discount_id`,
        `become_instructor_id`,
        `amount`,
        `tax`,
        `tax_price`,
        `commission`,
        `commission_price`,
        `discount`,
        `total_amount`,
        `product_delivery_fee`,
        `created_at`
    )
VALUES (
        310,
        1015,
        306,
        1996,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        63,
        10,
        '6.30',
        0,
        '0.00',
        NULL,
        '69.30',
        NULL,
        1625145687
    ), (
        311,
        996,
        307,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        48,
        NULL,
        NULL,
        NULL,
        150,
        10,
        '15.00',
        20,
        '30.00',
        '0.00',
        '165.00',
        NULL,
        1625944333
    ), (
        312,
        995,
        308,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        49,
        NULL,
        NULL,
        NULL,
        100,
        10,
        '10.00',
        20,
        '20.00',
        '0.00',
        '110.00',
        NULL,
        1625952623
    ), (
        313,
        995,
        309,
        2005,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        10,
        10,
        '1.00',
        20,
        '2.00',
        '0.00',
        '11.00',
        NULL,
        1625953190
    ), (
        314,
        995,
        310,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        50,
        NULL,
        NULL,
        NULL,
        125,
        10,
        '12.50',
        20,
        '25.00',
        '0.00',
        '137.50',
        NULL,
        1625996807
    ), (
        315,
        995,
        311,
        1999,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        50,
        10,
        '5.00',
        10,
        '5.00',
        '0.00',
        '55.00',
        NULL,
        1625996936
    ), (
        316,
        995,
        312,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        28,
        NULL,
        NULL,
        100,
        10,
        '5.00',
        20,
        '10.00',
        '50.00',
        '55.00',
        NULL,
        1625996974
    ), (
        317,
        995,
        313,
        2001,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        20,
        10,
        '1.60',
        10,
        '1.60',
        '4.00',
        '17.60',
        NULL,
        1625997096
    ), (
        318,
        996,
        314,
        2006,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        25,
        10,
        '2.25',
        20,
        '4.50',
        '2.50',
        '24.75',
        NULL,
        1626060481
    ), (
        319,
        996,
        315,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        28,
        NULL,
        NULL,
        100,
        10,
        '4.00',
        20,
        '8.00',
        '60.00',
        '44.00',
        NULL,
        1626060548
    ), (
        320,
        930,
        316,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        28,
        NULL,
        NULL,
        100,
        10,
        '5.00',
        20,
        '10.00',
        '50.00',
        '55.00',
        NULL,
        1626060832
    ), (
        321,
        979,
        317,
        2004,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        60,
        10,
        '6.00',
        10,
        '6.00',
        '0.00',
        '66.00',
        NULL,
        1626061329
    ), (
        322,
        979,
        318,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        20,
        10,
        '2.00',
        20,
        '4.00',
        '0.00',
        '22.00',
        NULL,
        1626061366
    ), (
        323,
        979,
        318,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        30,
        10,
        '3.00',
        20,
        '6.00',
        '0.00',
        '33.00',
        NULL,
        1626061366
    ), (
        324,
        995,
        319,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        20,
        10,
        '2.00',
        0,
        '0.00',
        NULL,
        '22.00',
        NULL,
        1626061431
    ), (
        325,
        1015,
        320,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        20,
        10,
        '2.00',
        20,
        '4.00',
        '0.00',
        '22.00',
        NULL,
        1626132487
    ), (
        326,
        1015,
        321,
        2002,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        7,
        NULL,
        20,
        10,
        '1.60',
        20,
        '3.20',
        '4.00',
        '17.60',
        NULL,
        1626132840
    ), (
        327,
        929,
        322,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        31,
        NULL,
        NULL,
        40,
        10,
        '3.00',
        20,
        '6.00',
        '10.00',
        '33.00',
        NULL,
        1626240993
    ), (
        328,
        929,
        323,
        2004,
        NULL,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        50,
        10,
        '5.00',
        0,
        '0.00',
        NULL,
        '55.00',
        NULL,
        1626241146
    ), (
        329,
        929,
        324,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        31,
        NULL,
        NULL,
        40,
        10,
        '3.00',
        20,
        '6.00',
        '10.00',
        '33.00',
        NULL,
        1626241207
    ), (
        330,
        995,
        325,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        51,
        NULL,
        NULL,
        NULL,
        100,
        10,
        '10.00',
        20,
        '20.00',
        '0.00',
        '110.00',
        NULL,
        1626247189
    ), (
        331,
        1015,
        326,
        2001,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        20,
        10,
        '1.60',
        10,
        '1.60',
        '4.00',
        '17.60',
        NULL,
        1626284818
    ), (
        332,
        996,
        327,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        30,
        10,
        '2.70',
        20,
        '5.40',
        '3.00',
        '29.70',
        NULL,
        1626508952
    ), (
        333,
        929,
        328,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        30,
        10,
        '3.00',
        20,
        '6.00',
        '0.00',
        '33.00',
        NULL,
        1635412190
    ), (
        334,
        979,
        329,
        NULL,
        NULL,
        4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        100,
        10,
        '10.00',
        0,
        '0.00',
        NULL,
        '110.00',
        NULL,
        1635448382
    ), (
        335,
        1017,
        330,
        2000,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        30,
        10,
        '3.00',
        20,
        '6.00',
        '0.00',
        '33.00',
        NULL,
        1639379271
    ), (
        336,
        1017,
        331,
        1998,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        100,
        10,
        '10.00',
        20,
        '20.00',
        '0.00',
        '110.00',
        NULL,
        1639379347
    ), (
        337,
        1017,
        332,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        31,
        NULL,
        NULL,
        40,
        10,
        '3.00',
        20,
        '6.00',
        '10.00',
        '33.00',
        NULL,
        1639379382
    ), (
        338,
        995,
        333,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        10,
        10,
        '1.00',
        20,
        '2.00',
        '0.00',
        '11.00',
        NULL,
        1646172083
    ), (
        339,
        996,
        334,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        10,
        10,
        '0.90',
        20,
        '1.80',
        '1.00',
        '9.90',
        NULL,
        1646172119
    ), (
        340,
        979,
        335,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        10,
        10,
        '1.00',
        20,
        '2.00',
        '0.00',
        '11.00',
        NULL,
        1646172156
    ), (
        341,
        929,
        336,
        2009,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        10,
        10,
        '1.00',
        20,
        '2.00',
        '0.00',
        '11.00',
        NULL,
        1646172292
    ), (
        342,
        995,
        337,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        NULL,
        NULL,
        NULL,
        750,
        10,
        '75.00',
        20,
        '150.00',
        '0.00',
        '825.00',
        NULL,
        1646379279
    ), (
        343,
        1017,
        338,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        5,
        NULL,
        NULL,
        NULL,
        300,
        10,
        '30.00',
        20,
        '60.00',
        '0.00',
        '330.00',
        NULL,
        1646380150
    ), (
        344,
        930,
        339,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        5,
        199,
        10,
        '19.90',
        0,
        '0.00',
        NULL,
        '218.90',
        NULL,
        1646386782
    ), (
        345,
        859,
        340,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        6,
        200,
        10,
        '20.00',
        0,
        '0.00',
        NULL,
        '220.00',
        NULL,
        1646387650
    ), (
        346,
        930,
        341,
        NULL,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        50,
        10,
        '5.00',
        20,
        '10.00',
        '0.00',
        '55.00',
        '0.00',
        1656083106
    ), (
        347,
        995,
        342,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        5,
        5,
        '0.25',
        20,
        '1.00',
        '0.00',
        '5.25',
        '0.00',
        1656103838
    ), (
        348,
        923,
        343,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        25,
        5,
        '1.25',
        10,
        '2.50',
        '0.00',
        '31.25',
        '5.00',
        1656104126
    ), (
        349,
        996,
        344,
        2003,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        40,
        10,
        '3.60',
        20,
        '7.20',
        '4.00',
        '39.60',
        '0.00',
        1656130476
    ), (
        350,
        930,
        345,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        290,
        5,
        '14.50',
        10,
        '29.00',
        '0.00',
        '314.50',
        '10.00',
        1656130702
    ), (
        351,
        996,
        346,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        5,
        4,
        NULL,
        NULL,
        NULL,
        NULL,
        75,
        5,
        '3.75',
        20,
        '15.00',
        '0.00',
        '78.75',
        '0.00',
        1656130959
    ), (
        352,
        979,
        347,
        NULL,
        2,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        8,
        10,
        '0.80',
        20,
        '1.60',
        '0.00',
        '8.80',
        '0.00',
        1656139699
    ), (
        353,
        979,
        347,
        NULL,
        3,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        25,
        10,
        '2.50',
        20,
        '5.00',
        '0.00',
        '27.50',
        '0.00',
        1656139699
    ), (
        354,
        1017,
        348,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        5,
        NULL,
        NULL,
        NULL,
        NULL,
        25,
        5,
        '1.00',
        10,
        '2.00',
        '5.00',
        '26.00',
        '5.00',
        1656148569
    ), (
        355,
        995,
        349,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        6,
        NULL,
        NULL,
        NULL,
        NULL,
        50,
        5,
        '2.25',
        10,
        '4.50',
        '5.00',
        '52.25',
        '5.00',
        1656148735
    ), (
        356,
        995,
        350,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        6,
        NULL,
        NULL,
        NULL,
        NULL,
        50,
        5,
        '2.25',
        10,
        '4.50',
        '5.00',
        '52.25',
        '5.00',
        1656148833
    ), (
        357,
        995,
        351,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        6,
        7,
        NULL,
        NULL,
        9,
        NULL,
        20,
        5,
        '1.00',
        20,
        '4.00',
        '4.00',
        '17.00',
        '0.00',
        1656322652
    );

-- --------------------------------------------------------

--

-- Table structure for table `pages`

--

CREATE TABLE
    `pages` (
        `id` int(10) UNSIGNED NOT NULL,
        `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `robot` tinyint(1) NOT NULL DEFAULT '0',
        `status` enum('publish', 'draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `pages`

--

INSERT INTO
    `pages` (
        `id`,
        `link`,
        `name`,
        `robot`,
        `status`,
        `created_at`
    )
VALUES (
        3,
        '/about',
        'About',
        1,
        'publish',
        1609088468
    ), (
        5,
        '/terms',
        'Terms & rules',
        1,
        'publish',
        1646409295
    ), (
        6,
        '/reward_points_system',
        'Reward Points System',
        1,
        'publish',
        1646398467
    );

-- --------------------------------------------------------

--

-- Table structure for table `page_translations`

--

CREATE TABLE
    `page_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `page_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `page_translations`

--

INSERT INTO
    `page_translations` (
        `id`,
        `page_id`,
        `locale`,
        `title`,
        `seo_description`,
        `content`
    )
VALUES (
        1,
        3,
        'en',
        'About Rocket LMS',
        'Rocket LMS is an online course marketplace with a pile of features that helps you to run your online education business easily.',
        '<div><b>Rocket LMS</b> is an online course marketplace with a pile of features that helps you to run your online education business easily. This platform helps instructors and students get in touch together and share knowledge.</div><div><br></div><div>Teachers will be able to create unlimited video courses, live classes, text courses, projects, quizzes, files, etc and students will be able to use the educational material and increase their skill level.</div><div><br></div><div>Rocket LMS is based on real business needs, cultural differences, advanced user researches so it covers your business requirements efficiently.</div><div style=\"text-align: center; \"><img src=\"/store/1/default_images/about.png\" style=\"width: 1110px;\"><br></div><div><br></div><div><b>WHY CHOOSE Rocket LMS?</b></div><div><br></div><div>- Comprehensive solution for online education businesses</div><div>- Based on real business needs</div><div>- Multiple content types (Video courses, Live classes, text courses)</div><div>- Youtube, Vimeo, and AWS integration</div><div>- Google calendar integration</div><div>- Online 1 to 1 meetings support</div><div>- Single &amp; multiple instructors</div><div>- Organizational education system</div><div>- Subscribe system</div><div>- Various payment gateways for worldwide</div><div>- Offline payment</div><div>- Multilanguage</div><div>- Fully responsive</div><div>- Fully customizable</div><div>- RTL support</div>'
    ), (
        2,
        5,
        'en',
        'Terms of Service',
        'Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn.',
        '<p><b>Note: This is just demo data.</b></p><p>Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn (students). We consider our marketplace model the best way to offer valuable educational content to our users. We need rules to keep our platform and services safe for you, us, and our student and instructor community. These Terms apply to all your activities on the Udemy website, the Udemy mobile applications, our TV applications, our APIs, and other related services (“<b>Services</b>”).</p><p>If you publish content on our platform, you must also agree to the Instructor Terms. We also provide details regarding our processing of the personal data of our students and instructors in our Privacy Policy. If you are using our platform for Business as part of your organization’s Udemy for Business subscription, you should consult our Udemy for Business Privacy Statement.</p><p style=\"text-align: center; \"><img src=\"/store/1/default_images/blogs/home2.png\" style=\"width: 954px;\"><br></p><p>You need an account for most activities on our platform, including to <b>purchase</b> and access content or to <b>submit content for publication</b>. When setting up and maintaining your account, you must provide and continue to provide accurate and complete information, including a valid email address. You have complete responsibility for your account and everything that happens on your account, including for any harm or damage (to us or anyone else) caused by someone using your account without your permission. This means you need to be careful with your password. You may not transfer your account to someone else or use someone else’s account. If you contact us to request access to an account, we will not grant you such access unless you can provide us with the information that we need to prove you are the owner of that account. In the event of the death of a user, the account of that user will be closed.</p>'
    ), (
        3,
        6,
        'en',
        'Reward Points System',
        'Rocket LMS Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin.',
        '<p><img src=\"/store/1/default_images/Reward Points System.jpg\" style=\"width: 800px;\"><br></p><p><b>Rocket LMS&nbsp;Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin. Reward your Customers using Reward Points for Product Purchase, Writing Reviews, Sign up, Referrals, etc. The earned Reward Points can be redeemed for future purchases.&nbsp;</b></p>'
    ), (
        4,
        5,
        'es',
        'Términos de servicio',
        'Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender.',
        '<p>Nota: Estos son solo datos de demostración.</p><p><br></p><p>Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender (estudiantes). Consideramos nuestro modelo de mercado la mejor manera de ofrecer contenido educativo valioso a nuestros usuarios. Necesitamos reglas para mantener nuestra plataforma y servicios seguros para usted, nosotros y nuestra comunidad de estudiantes e instructores. Estos Términos se aplican a todas sus actividades en el sitio web de Udemy, las aplicaciones móviles de Udemy, nuestras aplicaciones de TV, nuestras API y otros servicios relacionados (\"Servicios\").</p><p><br></p><p>Si publica contenido en nuestra plataforma, también debe aceptar los Términos del instructor. También proporcionamos detalles sobre nuestro procesamiento de los datos personales de nuestros estudiantes e instructores en nuestra Política de privacidad. Si utiliza nuestra plataforma para empresas como parte de la suscripción a Udemy for Business de su organización, debe consultar nuestra Declaración de privacidad de Udemy for Business.</p><p><br></p><p><br></p><p><br></p><p>Necesita una cuenta para la mayoría de las actividades en nuestra plataforma, incluso para comprar y acceder a contenido o para enviar contenido para su publicación. Al configurar y mantener su cuenta, debe proporcionar y continuar proporcionando información precisa y completa, incluida una dirección de correo electrónico válida. Usted es completamente responsable de su cuenta y de todo lo que sucede en ella, incluido cualquier daño o perjuicio (a nosotros o a cualquier otra persona) causado por alguien que usa su cuenta sin su permiso. Esto significa que debe tener cuidado con su contraseña. No puede transferir su cuenta a otra persona ni usar la cuenta de otra persona. Si se comunica con nosotros para solicitar acceso a una cuenta, no le otorgaremos dicho acceso a menos que pueda proporcionarnos la información que necesitamos para demostrar que es el propietario de esa cuenta. En caso de fallecimiento de un usuario, la cuenta de ese usuario se cerrará.</p>'
    ), (
        5,
        5,
        'ar',
        'شروط الخدمة',
        'مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم.',
        '<p style=\"direction: rtl; text-align: right;\">ملاحظة: هذه مجرد بيانات تجريبية.</p><p style=\"direction: rtl; text-align: right;\">مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم (الطلاب). نحن نعتبر نموذج السوق الخاص بنا هو أفضل طريقة لتقديم محتوى تعليمي قيم لمستخدمينا. نحن بحاجة إلى قواعد للحفاظ على نظامنا الأساسي وخدماتنا آمنة لك ولنا ومجتمع الطلاب والمدرسين لدينا. تنطبق هذه الشروط على جميع أنشطتك على موقع Udemy على الويب ، وتطبيقات Udemy للهاتف المحمول ، وتطبيقات التلفزيون لدينا ، وواجهات برمجة التطبيقات الخاصة بنا ، والخدمات الأخرى ذات الصلة (\"الخدمات\").</p><p style=\"direction: rtl; text-align: right;\">إذا قمت بنشر محتوى على نظامنا الأساسي ، فيجب عليك أيضًا الموافقة على شروط المدرب. نقدم أيضًا تفاصيل تتعلق بمعالجتنا للبيانات الشخصية لطلابنا ومعلمينا في سياسة الخصوصية الخاصة بنا. إذا كنت تستخدم منصتنا للأعمال كجزء من اشتراك Udemy for Business الخاص بمؤسستك ، فيجب عليك الرجوع إلى بيان خصوصية Udemy for Business.</p><p style=\"direction: rtl; text-align: right;\">أنت بحاجة إلى حساب لمعظم الأنشطة على نظامنا الأساسي ، بما في ذلك شراء المحتوى والوصول إليه أو إرسال المحتوى للنشر. عند إعداد حسابك وصيانته ، يجب عليك تقديم معلومات دقيقة وكاملة والاستمرار في تقديمها ، بما في ذلك عنوان بريد إلكتروني صالح. أنت تتحمل المسؤولية الكاملة عن حسابك وكل ما يحدث على حسابك ، بما في ذلك أي ضرر أو ضرر (لنا أو لأي شخص آخر) ناجم عن شخص يستخدم حسابك دون إذنك. هذا يعني أنك بحاجة إلى توخي الحذر بشأن كلمة المرور الخاصة بك. لا يجوز لك نقل حسابك إلى شخص آخر أو استخدام حساب شخص آخر. إذا اتصلت بنا لطلب الوصول إلى حساب ، فلن نمنحك هذا الوصول ما لم تتمكن من تزويدنا بالمعلومات التي نحتاجها لإثبات أنك مالك هذا الحساب. في حالة وفاة المستخدم ، سيتم إغلاق حساب هذا المستخدم.</p>'
    );

-- --------------------------------------------------------

--

-- Table structure for table `password_resets`

--

CREATE TABLE
    `password_resets` (
        `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- --------------------------------------------------------

--

-- Table structure for table `payku_payments`

--

CREATE TABLE
    `payku_payments` (
        `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `start` date NOT NULL,
        `end` date NOT NULL,
        `media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `verification_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `authorization_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `last_4_digits` int(10) UNSIGNED DEFAULT NULL,
        `installments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `card_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `additional_parameters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        `payment_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `transaction_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `deposit_date` datetime DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Table structure for table `payku_transactions`

--

CREATE TABLE
    `payku_transactions` (
        `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `url` text COLLATE utf8mb4_unicode_ci,
        `amount` int(10) UNSIGNED DEFAULT NULL,
        `notified_at` datetime DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

CREATE TABLE
    `payment_channels` (
        `id` int(10) UNSIGNED NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `status` enum('active', 'inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
        `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `settings` text COLLATE utf8mb4_unicode_ci,
        `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `payment_channels`

--

INSERT INTO
    `payment_channels` (
        `id`,
        `title`,
        `class_name`,
        `status`,
        `image`,
        `settings`,
        `created_at`
    )
VALUES (
        1,
        'Alipay',
        'Alipay',
        'active',
        '/store/1/default_images/payment gateways/alipay.png',
        '',
        '1654755044'
    ), (
        2,
        'Authorize.net',
        'Authorizenet',
        'active',
        '/store/1/default_images/payment gateways/authirizenet.png',
        '',
        '1654755044'
    ), (
        3,
        'Bitpay',
        'Bitpay',
        'active',
        '/store/1/default_images/payment gateways/bitpay.png',
        '',
        '1654755044'
    ), (
        4,
        'Braintree',
        'Braintree',
        'active',
        '/store/1/default_images/payment gateways/braintree.png',
        '',
        '1654755044'
    ), (
        5,
        'Cashu',
        'Cashu',
        'active',
        '/store/1/default_images/payment gateways/cashu.png',
        '',
        '1654755044'
    ), (
        6,
        'Flutterwave',
        'Flutterwave',
        'active',
        '/store/1/default_images/payment gateways/flutterwave.png',
        '',
        '1654755044'
    ), (
        7,
        'Instamojo',
        'Instamojo',
        'active',
        '/store/1/default_images/payment gateways/instamojo.png',
        '',
        '1654755044'
    ), (
        8,
        'Iyzipay',
        'Iyzipay',
        'active',
        '/store/1/default_images/payment gateways/iyzico.png',
        '',
        '1654755044'
    ), (
        9,
        'Izipay',
        'Izipay',
        'active',
        '/store/1/default_images/payment gateways/izipay.png',
        '',
        '1654755044'
    ), (
        10,
        'KlarnaCheckout',
        'KlarnaCheckout',
        'active',
        '/store/1/default_images/payment gateways/klarna.png',
        '',
        '1654755044'
    ), (
        11,
        'MercadoPago',
        'MercadoPago',
        'active',
        '/store/1/default_images/payment gateways/mercadopago.png',
        '',
        '1654755044'
    ), (
        12,
        'Midtrans',
        'Midtrans',
        'active',
        '/store/1/default_images/payment gateways/midtrans.png',
        '',
        '1654755044'
    ), (
        13,
        'Mollie',
        'Mollie',
        'active',
        '/store/1/default_images/payment gateways/mollie.png',
        '',
        '1654755044'
    ), (
        14,
        'N-genius',
        'Ngenius',
        'active',
        '/store/1/default_images/payment gateways/ngenius.png',
        '',
        '1654755044'
    ), (
        15,
        'Payfort',
        'Payfort',
        'active',
        '/store/1/default_images/payment gateways/payfort.png',
        '',
        '1654755044'
    ), (
        16,
        'Payhere',
        'Payhere',
        'active',
        '/store/1/default_images/payment gateways/payhere.png',
        '',
        '1654755044'
    ), (
        17,
        'Payku',
        'Payku',
        'active',
        '/store/1/default_images/payment gateways/payku.png',
        '',
        '1654755044'
    ), (
        18,
        'Paylink',
        'Paylink',
        'active',
        '/store/1/default_images/payment gateways/paylink.png',
        '',
        '1654755044'
    ), (
        19,
        'Paypal',
        'Paypal',
        'active',
        '/store/1/default_images/payment gateways/paypal.png',
        '',
        '1654755044'
    ), (
        20,
        'Paysera',
        'Paysera',
        'active',
        '/store/1/default_images/payment gateways/paysera.png',
        '',
        '1654755044'
    ), (
        21,
        'Paystack',
        'Paystack',
        'active',
        '/store/1/default_images/payment gateways/paystack.png',
        '',
        '1654755044'
    ), (
        22,
        'Paytm',
        'Paytm',
        'active',
        '/store/1/default_images/payment gateways/paytm.png',
        '',
        '1654755044'
    ), (
        23,
        'Payu',
        'Payu',
        'active',
        '/store/1/default_images/payment gateways/payu.png',
        '',
        '1654755044'
    ), (
        24,
        'Razorpay',
        'Razorpay',
        'active',
        '/store/1/default_images/payment gateways/razorpay.png',
        '',
        '1654755044'
    ), (
        25,
        'Robokassa',
        'Robokassa',
        'active',
        '/store/1/default_images/payment gateways/robokassa.png',
        '',
        '1654755044'
    ), (
        26,
        'Sslcommerz',
        'Sslcommerz',
        'active',
        '/store/1/default_images/payment gateways/sslcommerz.png',
        '',
        '1654755044'
    ), (
        27,
        'Stripe',
        'Stripe',
        'active',
        '/store/1/default_images/payment gateways/stripe.png',
        '',
        '1654755044'
    ), (
        28,
        'Toyyibpay',
        'Toyyibpay',
        'active',
        '/store/1/default_images/payment gateways/toyyibpay.png',
        '',
        '1654755044'
    ), (
        29,
        'Voguepay',
        'Voguepay',
        'active',
        '/store/1/default_images/payment gateways/voguepay.png',
        '',
        '1654755044'
    ), (
        31,
        'Zarinpal',
        'Zarinpal',
        'active',
        '/store/1/default_images/payment gateways/zarinpal.png',
        '',
        '1654755044'
    ), (
        32,
        'JazzCash',
        'JazzCash',
        'active',
        '/store/1/default_images/payment gateways/jazzcash.png',
        '',
        '1654755044'
    );

--

-- Table structure for table `payouts`

--

CREATE TABLE
    `payouts` (
        `id` int(10) UNSIGNED NOT NULL,
        `user_id` int(10) UNSIGNED NOT NULL,
        `amount` decimal(13, 2) NOT NULL,
        `account_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `account_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `account_bank_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `status` enum('waiting', 'done', 'reject') COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `payouts`

--

INSERT INTO
    `payouts` (
        `id`,
        `user_id`,
        `amount`,
        `account_name`,
        `account_number`,
        `account_bank_name`,
        `status`,
        `created_at`
    )
VALUES (
        3,
        1015,
        '332.00',
        'Robert Ransdell',
        'QR55BDHC20040182623775',
        'Qatar National Bank',
        'done',
        1626061191
    ), (
        4,
        934,
        '80.00',
        'Linda Anderson',
        'QR21BARC20038014587495',
        'Qatar National Bank',
        'waiting',
        1626061254
    );

-- --------------------------------------------------------

--

-- Table structure for table `payu_transactions`

--

CREATE TABLE
    `payu_transactions` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `paid_for_id` bigint(20) UNSIGNED DEFAULT NULL,
        `paid_for_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `gateway` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `response` text COLLATE utf8mb4_unicode_ci,
        `status` enum(
            'pending',
            'failed',
            'successful',
            'invalid'
        ) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
        `verified_at` timestamp NULL DEFAULT NULL,
        `deleted_at` timestamp NULL DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- --------------------------------------------------------

--

-- Table structure for table `permissions`

--

CREATE TABLE
    `permissions` (
        `id` int(10) UNSIGNED NOT NULL,
        `role_id` int(10) UNSIGNED DEFAULT NULL,
        `section_id` int(10) UNSIGNED DEFAULT NULL,
        `allow` tinyint(1) NOT NULL DEFAULT '0'
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `permissions`

--

INSERT INTO
    `permissions` (
        `id`,
        `role_id`,
        `section_id`,
        `allow`
    )
VALUES (11950, 2, 1, 1), (11951, 2, 2, 1), (11952, 2, 3, 1), (11953, 2, 4, 1), (11954, 2, 5, 1), (11955, 2, 6, 1), (11956, 2, 7, 1), (11957, 2, 8, 1), (11958, 2, 9, 1), (11959, 2, 10, 1), (11960, 2, 11, 1), (11961, 2, 12, 1), (11962, 2, 13, 1), (11963, 2, 14, 1), (11964, 2, 15, 1), (11965, 2, 16, 1), (11966, 2, 17, 1), (11967, 2, 25, 1), (11968, 2, 26, 1), (11969, 2, 50, 1), (11970, 2, 51, 1), (11971, 2, 52, 1), (11972, 2, 53, 1), (11973, 2, 54, 1), (11974, 2, 100, 1), (11975, 2, 101, 1), (11976, 2, 102, 1), (11977, 2, 103, 1), (11978, 2, 104, 1), (11979, 2, 105, 1), (11980, 2, 106, 1), (11981, 2, 107, 1), (11982, 2, 108, 1), (11983, 2, 109, 1), (11984, 2, 110, 1), (11985, 2, 111, 1), (11986, 2, 112, 1), (11987, 2, 113, 1), (11988, 2, 114, 1), (11989, 2, 115, 1), (11990, 2, 116, 1), (11991, 2, 117, 1), (11992, 2, 150, 1), (11993, 2, 151, 1), (11994, 2, 152, 1), (11995, 2, 153, 1), (11996, 2, 154, 1), (11997, 2, 155, 1), (11998, 2, 156, 1), (11999, 2, 157, 1), (12000, 2, 158, 1), (12001, 2, 159, 1), (12002, 2, 160, 1), (12003, 2, 161, 1), (12004, 2, 162, 1), (12005, 2, 163, 1), (12006, 2, 164, 1), (12007, 2, 165, 1), (12008, 2, 200, 1), (12009, 2, 201, 1), (12010, 2, 202, 1), (12011, 2, 203, 1), (12012, 2, 204, 1), (12013, 2, 205, 1), (12014, 2, 206, 1), (12015, 2, 207, 1), (12016, 2, 208, 1), (12017, 2, 250, 1), (12018, 2, 251, 1), (12019, 2, 252, 1), (12020, 2, 253, 1), (12021, 2, 254, 1), (12022, 2, 300, 1), (12023, 2, 301, 1), (12024, 2, 302, 1), (12025, 2, 303, 1), (12026, 2, 304, 1), (12027, 2, 350, 1), (12028, 2, 351, 1), (12029, 2, 352, 1), (12030, 2, 353, 1), (12031, 2, 354, 1), (12032, 2, 355, 1), (12033, 2, 356, 1), (12034, 2, 357, 1), (12035, 2, 400, 1), (12036, 2, 401, 1), (12037, 2, 402, 1), (12038, 2, 403, 1), (12039, 2, 404, 1), (12040, 2, 405, 1), (12041, 2, 450, 1), (12042, 2, 451, 1), (12043, 2, 452, 1), (12044, 2, 453, 1), (12045, 2, 454, 1), (12046, 2, 455, 1), (12047, 2, 456, 1), (12048, 2, 457, 1), (12049, 2, 458, 1), (12050, 2, 459, 1), (12051, 2, 460, 1), (12052, 2, 500, 1), (12053, 2, 501, 1), (12054, 2, 502, 1), (12055, 2, 503, 1), (12056, 2, 504, 1), (12057, 2, 505, 1), (12058, 2, 550, 1), (12059, 2, 551, 1), (12060, 2, 552, 1), (12061, 2, 553, 1), (12062, 2, 554, 1), (12063, 2, 555, 1), (12064, 2, 600, 1), (12065, 2, 601, 1), (12066, 2, 602, 1), (12067, 2, 603, 1), (12068, 2, 650, 1), (12069, 2, 651, 1), (12070, 2, 652, 1), (12071, 2, 653, 1), (12072, 2, 654, 1), (12073, 2, 655, 1), (12074, 2, 656, 1), (12075, 2, 657, 1), (12076, 2, 658, 1), (12077, 2, 700, 1), (12078, 2, 701, 1), (12079, 2, 702, 1), (12080, 2, 703, 1), (12081, 2, 704, 1), (12082, 2, 705, 1), (12083, 2, 706, 1), (12084, 2, 707, 1), (12085, 2, 708, 1), (12086, 2, 750, 1), (12087, 2, 751, 1), (12088, 2, 752, 1), (12089, 2, 753, 1), (12090, 2, 754, 1), (12091, 2, 800, 1), (12092, 2, 801, 1), (12093, 2, 802, 1), (12094, 2, 803, 1), (12095, 2, 850, 1), (12096, 2, 851, 1), (12097, 2, 852, 1), (12098, 2, 853, 1), (12099, 2, 854, 1), (12100, 2, 900, 1), (12101, 2, 901, 1), (12102, 2, 902, 1), (12103, 2, 903, 1), (12104, 2, 904, 1), (12105, 2, 950, 1), (12106, 2, 951, 1), (12107, 2, 952, 1), (12108, 2, 953, 1), (12109, 2, 954, 1), (12110, 2, 955, 1), (12111, 2, 956, 1), (12112, 2, 957, 1), (12113, 2, 958, 1), (12114, 2, 959, 1), (12115, 2, 1000, 1), (12116, 2, 1001, 1), (12117, 2, 1002, 1), (12118, 2, 1003, 1), (12119, 2, 1004, 1), (12120, 2, 1050, 1), (12121, 2, 1051, 1), (12122, 2, 1052, 1), (12123, 2, 1053, 1), (12124, 2, 1054, 1), (12125, 2, 1055, 1), (12126, 2, 1056, 1), (12127, 2, 1057, 1), (12128, 2, 1058, 1), (12129, 2, 1059, 1), (12130, 2, 1060, 1), (12131, 2, 1075, 1), (12132, 2, 1076, 1), (12133, 2, 1077, 1), (12134, 2, 1078, 1), (12135, 2, 1079, 1), (12136, 2, 1080, 1), (12137, 2, 1081, 1), (12138, 2, 1082, 1), (12139, 2, 1083, 1), (12140, 2, 1100, 1), (12141, 2, 1101, 1), (12142, 2, 1102, 1), (12143, 2, 1103, 1), (12144, 2, 1104, 1), (12145, 2, 1150, 1), (12146, 2, 1151, 1), (12147, 2, 1152, 1), (12148, 2, 1153, 1), (12149, 2, 1154, 1), (12150, 2, 1200, 1), (12151, 2, 1201, 1), (12152, 2, 1202, 1), (12153, 2, 1203, 1), (12154, 2, 1204, 1), (12155, 2, 1230, 1), (12156, 2, 1231, 1), (12157, 2, 1232, 1), (12158, 2, 1233, 1), (12159, 2, 1234, 1), (12160, 2, 1235, 1), (12161, 2, 1250, 1), (12162, 2, 1251, 1), (12163, 2, 1252, 1), (12164, 2, 1253, 1), (12165, 2, 1300, 1), (12166, 2, 1301, 1), (12167, 2, 1302, 1), (12168, 2, 1303, 1), (12169, 2, 1304, 1), (12170, 2, 1305, 1), (12171, 2, 1350, 1), (12172, 2, 1351, 1), (12173, 2, 1352, 1), (12174, 2, 1353, 1), (12175, 2, 1354, 1), (12176, 2, 1355, 1), (12177, 2, 1400, 1), (12178, 2, 1401, 1), (12179, 2, 1402, 1), (12180, 2, 1403, 1), (12181, 2, 1404, 1), (12182, 2, 1405, 1), (12183, 2, 1406, 1), (12184, 2, 1407, 1), (12185, 2, 1408, 1), (12186, 2, 1409, 1), (12187, 2, 1410, 1), (12188, 2, 1411, 1), (12189, 2, 1412, 1), (12190, 2, 1413, 1), (12191, 2, 1414, 1), (12192, 2, 1415, 1), (12193, 2, 1450, 1), (12194, 2, 1451, 1), (12195, 2, 1452, 1), (12196, 2, 1453, 1), (12197, 2, 1454, 1), (12198, 2, 1455, 1), (12199, 2, 1456, 1), (12200, 2, 1457, 1), (12201, 2, 1500, 1), (12202, 2, 1501, 1), (12203, 2, 1502, 1), (12204, 2, 1503, 1), (12205, 2, 1504, 1), (12206, 2, 1550, 1), (12207, 2, 1551, 1), (12208, 2, 1552, 1), (12209, 2, 1553, 1), (12210, 2, 1554, 1), (12211, 2, 1600, 1), (12212, 2, 1601, 1), (12213, 2, 1602, 1), (12214, 2, 1603, 1), (12215, 2, 1604, 1), (12216, 2, 1650, 1), (12217, 2, 1651, 1), (12218, 2, 1652, 1), (12219, 2, 1675, 1), (12220, 2, 1676, 1), (12221, 2, 1677, 1), (12222, 2, 1678, 1), (12223, 2, 1725, 1), (12224, 2, 1726, 1), (12225, 2, 1727, 1), (12226, 2, 1728, 1), (12227, 2, 1729, 1), (12228, 2, 1730, 1), (12229, 2, 1731, 1), (12230, 2, 1732, 1), (12231, 2, 1750, 1), (12232, 2, 1751, 1), (12233, 2, 1752, 1), (12234, 2, 1753, 1), (12235, 2, 1754, 1), (12236, 2, 1775, 1), (12237, 2, 1776, 1), (12238, 2, 1777, 1), (12239, 2, 1778, 1), (12240, 2, 1779, 1), (12241, 2, 1780, 1), (12242, 2, 1781, 1), (12243, 2, 1800, 1), (12244, 2, 1801, 1), (12245, 2, 1802, 1), (12246, 2, 1803, 1), (12247, 2, 1804, 1), (12248, 2, 1805, 1), (12249, 2, 1806, 1), (12250, 2, 1807, 1), (12251, 2, 1808, 1), (12252, 2, 1809, 1), (12253, 2, 1810, 1), (12254, 2, 1811, 1), (12255, 2, 1812, 1), (12256, 2, 1813, 1), (12257, 2, 1814, 1), (12258, 2, 1815, 1), (12259, 2, 1816, 1), (12260, 2, 1817, 1), (12261, 2, 1818, 1), (12262, 2, 1819, 1), (12263, 2, 1820, 1), (12264, 2, 1821, 1), (12265, 2, 1822, 1), (12266, 2, 1823, 1), (12267, 2, 1824, 1), (12268, 2, 1825, 1), (12269, 2, 1826, 1), (12270, 2, 1827, 1), (12271, 2, 1828, 1), (12272, 2, 1829, 1), (12273, 2, 1830, 1), (12274, 2, 1831, 1), (12275, 2, 1832, 1), (12276, 2, 1833, 1), (12277, 2, 1834, 1), (12278, 2, 1835, 1), (12279, 2, 1836, 1), (12280, 2, 1837, 1), (12281, 2, 1838, 1), (12282, 2, 1850, 1), (12283, 2, 1851, 1), (12284, 2, 1852, 1), (12285, 2, 1853, 1), (12286, 2, 1875, 1), (12287, 2, 1876, 1), (12288, 2, 1877, 1), (12289, 2, 1900, 1), (12290, 2, 1901, 1), (12291, 2, 1902, 1), (12292, 2, 1903, 1), (12293, 2, 1904, 1), (12294, 2, 1905, 1), (12295, 2, 1925, 1), (12296, 2, 1926, 1), (12297, 2, 1927, 1), (12298, 2, 1928, 1), (12299, 2, 1929, 1), (12300, 2, 1930, 1), (12301, 2, 1931, 1), (12302, 2, 1932, 1), (12303, 2, 1933, 1), (12304, 2, 1934, 1), (12305, 2, 1950, 1), (12306, 2, 1951, 1), (12307, 2, 1952, 1), (12308, 2, 1953, 1), (12309, 2, 1954, 1), (12310, 2, 1975, 1), (12311, 2, 1976, 1), (12312, 2, 1977, 1), (12313, 2, 1978, 1), (12314, 2, 1979, 1), (12315, 2, 2000, 1), (12316, 2, 2001, 1), (12317, 2, 2015, 1), (12318, 2, 2016, 1), (12319, 2, 2017, 1), (12320, 2, 2018, 1), (12321, 2, 2019, 1), (12322, 2, 2020, 1), (12323, 2, 2021, 1), (12324, 2, 2030, 1), (12325, 2, 2031, 1), (12326, 2, 2032, 1), (12327, 6, 1, 1), (12328, 6, 2, 1), (12329, 6, 3, 1), (12330, 6, 4, 1), (12331, 6, 5, 1), (12332, 6, 6, 1), (12333, 6, 7, 1), (12334, 6, 8, 1), (12335, 6, 9, 1), (12336, 6, 10, 1), (12337, 6, 11, 1), (12338, 6, 12, 1), (12339, 6, 13, 1), (12340, 6, 14, 1), (12341, 6, 15, 1), (12342, 6, 16, 1), (12343, 6, 17, 1), (12344, 6, 700, 1), (12345, 6, 701, 1), (12346, 6, 702, 1), (12347, 6, 703, 1), (12348, 6, 704, 1), (12349, 6, 705, 1), (12350, 6, 706, 1), (12351, 6, 707, 1), (12352, 6, 708, 1);

-- --------------------------------------------------------

--

-- Table structure for table `prerequisites`

--

CREATE TABLE
    `prerequisites` (
        `id` int(10) UNSIGNED NOT NULL,
        `webinar_id` int(10) UNSIGNED NOT NULL,
        `prerequisite_id` int(10) UNSIGNED NOT NULL,
        `required` tinyint(1) NOT NULL DEFAULT '0',
        `order` int(10) UNSIGNED DEFAULT NULL,
        `created_at` int(11) NOT NULL,
        `updated_at` int(11) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data for table `prerequisites`

--

INSERT INTO
    `prerequisites` (
        `id`,
        `webinar_id`,
        `prerequisite_id`,
        `required`,
        `order`,
        `created_at`,
        `updated_at`
    )
VALUES (
        25,
        1999,
        1995,
        1,
        NULL,
        1625039222,
        NULL
    ), (
        26,
        2003,
        1995,
        0,
        NULL,
        1625300252,
        NULL
    ), (
        27,
        2006,
        2002,
        0,
        NULL,
        1625694442,
        NULL
    ), (
        28,
        1998,
        1995,
        1,
        NULL,
        1626078328,
        NULL
    ), (
        30,
        2007,
        2006,
        0,
        NULL,
        1626207537,
        NULL
    );

-- --------------------------------------------------------

--

-- Table structure for table `products`

--

CREATE TABLE
    `products` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `type` enum('virtual', 'physical') COLLATE utf8mb4_unicode_ci NOT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `category_id` int(10) UNSIGNED DEFAULT NULL,
        `price` bigint(20) UNSIGNED DEFAULT NULL,
        `point` bigint(20) UNSIGNED DEFAULT NULL,
        `unlimited_inventory` tinyint(1) NOT NULL DEFAULT '0',
        `ordering` tinyint(1) NOT NULL DEFAULT '0',
        `inventory` int(10) UNSIGNED DEFAULT NULL,
        `inventory_warning` int(10) UNSIGNED DEFAULT NULL,
        `inventory_updated_at` bigint(20) UNSIGNED DEFAULT NULL,
        `delivery_fee` bigint(20) UNSIGNED DEFAULT NULL,
        `delivery_estimated_time` int(10) UNSIGNED DEFAULT NULL,
        `message_for_reviewer` text COLLATE utf8mb4_unicode_ci,
        `tax` int(10) UNSIGNED DEFAULT NULL,
        `commission` int(10) UNSIGNED DEFAULT NULL,
        `status` enum(
            'active',
            'pending',
            'draft',
            'inactive'
        ) COLLATE utf8mb4_unicode_ci NOT NULL,
        `updated_at` bigint(20) UNSIGNED NOT NULL,
        `created_at` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `products`

--

INSERT INTO
    `products` (
        `id`,
        `creator_id`,
        `type`,
        `slug`,
        `category_id`,
        `price`,
        `point`,
        `unlimited_inventory`,
        `ordering`,
        `inventory`,
        `inventory_warning`,
        `inventory_updated_at`,
        `delivery_fee`,
        `delivery_estimated_time`,
        `message_for_reviewer`,
        `tax`,
        `commission`,
        `status`,
        `updated_at`,
        `created_at`
    )
VALUES (
        1,
        1015,
        'physical',
        'Painting-tools',
        1,
        25,
        NULL,
        0,
        1,
        28,
        5,
        NULL,
        5,
        4,
        'Thank you.',
        NULL,
        NULL,
        'active',
        1656136002,
        1655622663
    ), (
        2,
        934,
        'physical',
        'Advanced-microscope',
        1,
        290,
        NULL,
        0,
        1,
        11,
        3,
        NULL,
        10,
        7,
        'Please review ASAP.\r\nRegards.',
        NULL,
        NULL,
        'active',
        1656135835,
        1655626642
    ), (
        4,
        1016,
        'virtual',
        'Sherlock-Holmes-e-book',
        3,
        5,
        NULL,
        1,
        1,
        NULL,
        NULL,
        1655670958,
        NULL,
        NULL,
        'Thank you for your review.',
        NULL,
        NULL,
        'active',
        1655670958,
        1655669205
    ), (
        5,
        1015,
        'virtual',
        'Business-Software',
        3,
        75,
        NULL,
        0,
        1,
        100,
        10,
        NULL,
        NULL,
        NULL,
        'Thank you.',
        NULL,
        NULL,
        'active',
        1656130921,
        1655671880
    ), (
        6,
        1,
        'virtual',
        'Where-the-Crawdads-Sing-e-book',
        3,
        20,
        NULL,
        1,
        1,
        0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'active',
        1656322425,
        1656321480
    );

-- --------------------------------------------------------

--

-- Table structure for table `product_categories`

--

CREATE TABLE
    `product_categories` (
        `id` int(10) UNSIGNED NOT NULL,
        `parent_id` int(11) DEFAULT NULL,
        `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `order` int(10) UNSIGNED DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `product_categories`

--

INSERT INTO
    `product_categories` (
        `id`,
        `parent_id`,
        `icon`,
        `order`
    )
VALUES (
        1,
        NULL,
        '/store/1/default_images/categories_icons/feather.png',
        NULL
    ), (
        2,
        NULL,
        '/store/1/default_images/categories_icons/pie-chart.png',
        NULL
    ), (
        3,
        NULL,
        '/store/1/default_images/categories_icons/umbrella.png',
        NULL
    );

-- --------------------------------------------------------

--

-- Table structure for table `product_category_translations`

--

CREATE TABLE
    `product_category_translations` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `product_category_id` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `product_category_translations`

--

INSERT INTO
    `product_category_translations` (
        `id`,
        `product_category_id`,
        `locale`,
        `title`
    )
VALUES (1, 1, 'en', 'Design Tools'), (2, 2, 'en', 'Science Tools'), (3, 3, 'en', 'e-book');

-- --------------------------------------------------------

--

-- Table structure for table `product_discounts`

--

CREATE TABLE
    `product_discounts` (
        `id` int(10) UNSIGNED NOT NULL,
        `creator_id` int(10) UNSIGNED NOT NULL,
        `product_id` int(10) UNSIGNED NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `percent` int(10) UNSIGNED NOT NULL,
        `count` int(10) UNSIGNED DEFAULT NULL,
        `status` enum('active', 'inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
        `start_date` int(10) UNSIGNED NOT NULL,
        `end_date` int(10) UNSIGNED NOT NULL,
        `created_at` int(10) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Dumping data for table `product_discounts`

--

INSERT INTO
    `product_discounts` (
        `id`,
        `creator_id`,
        `product_id`,
        `name`,
        `percent`,
        `count`,
        `status`,
        `start_date`,
        `end_date`,
        `created_at`
    )
VALUES (
        1,
        1,
        1,
        'Special Offer',
        20,
        5,
        'active',
        1656043200,
        1702659600,
        1656131175
    );