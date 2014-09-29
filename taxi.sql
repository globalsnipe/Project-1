-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2014 at 07:12 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `taxi`
--
CREATE DATABASE IF NOT EXISTS `taxi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `taxi`;

-- --------------------------------------------------------

--
-- Table structure for table `ta_customer`
--

CREATE TABLE IF NOT EXISTS `ta_customer` (
  `ROW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_DATE` date NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `MobileNumber` smallint(10) NOT NULL,
  `BaseLocation` varchar(100) NOT NULL,
  `Email Address` varchar(100) NOT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ta_final_trans`
--

CREATE TABLE IF NOT EXISTS `ta_final_trans` (
  `TRASACTION_TYPE` varchar(10) NOT NULL,
  `AMOUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ta_out_sms`
--

CREATE TABLE IF NOT EXISTS `ta_out_sms` (
  `MESSAGE_TEXT` text NOT NULL,
  `MESSAGE_CATEGORY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ta_payment_gateway`
--

CREATE TABLE IF NOT EXISTS `ta_payment_gateway` (
  `DESCRIPTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ta_service_charges`
--

CREATE TABLE IF NOT EXISTS `ta_service_charges` (
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ta_service_offerings`
--

CREATE TABLE IF NOT EXISTS `ta_service_offerings` (
  `RATE_PER_KM` int(11) NOT NULL,
  `AMOUNT` int(11) NOT NULL,
  `BATAPERDAY` varchar(50) NOT NULL,
  `NIGHTCHARGES` int(11) NOT NULL,
  `CAN_PROVIDE_VEHICLE` tinyint(1) NOT NULL,
  `USE_IN_BID` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ta_service_provider`
--

CREATE TABLE IF NOT EXISTS `ta_service_provider` (
  `ROW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_DATE` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `Company/Driver’sname` varchar(50) NOT NULL,
  `Companysize` varchar(50) NOT NULL,
  `LicenseType` varchar(50) NOT NULL,
  `Licensingauthority` varchar(50) NOT NULL,
  `Licensenumber` varchar(50) NOT NULL,
  `Emailaddress` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `MobileNumber` smallint(10) NOT NULL,
  `OfficePhone` smallint(20) NOT NULL,
  `BillingAddress` text NOT NULL,
  `BALANCE_STATUS` varchar(50) NOT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ta_service_req`
--

CREATE TABLE IF NOT EXISTS `ta_service_req` (
  `ROW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_DATE` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `SR_NUM` int(11) NOT NULL,
  `STATE` varchar(200) NOT NULL,
  `CITY` varchar(200) NOT NULL,
  `TRAVEL_FROM` varchar(200) NOT NULL,
  `DESTINATION` varchar(200) NOT NULL,
  `PICKUP_DATE_TIME` datetime NOT NULL,
  `DROP_DATE_TIME` datetime NOT NULL,
  `BID_END_DATE_TIME` datetime NOT NULL,
  `SERVICE_TYPE` varchar(50) NOT NULL,
  `VEHICLE_TYPE` varchar(50) NOT NULL,
  `SMS_ID` varchar(20) NOT NULL,
  `FINAL_SP_ID` varchar(20) NOT NULL,
  `SERVICE_RATING` smallint(6) NOT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ta_service_req_dtl`
--

CREATE TABLE IF NOT EXISTS `ta_service_req_dtl` (
  `AMOUNT` varchar(50) NOT NULL,
  `BID_WINNER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ta_sms_req`
--

CREATE TABLE IF NOT EXISTS `ta_sms_req` (
  `MESSAGE_CATEGORY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ta_sp_feedback`
--

CREATE TABLE IF NOT EXISTS `ta_sp_feedback` (
  `FEEDBACK` text NOT NULL,
  `SMS_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
