MySQL 5.7




Database : test




CREATE TABLE `product` (

`productid` int(11) NOT NULL AUTO_INCREMENT,

`productname` varchar(100) DEFAULT NULL,

`description` varchar(200) DEFAULT NULL,

`price` decimal(10,2) DEFAULT NULL,

PRIMARY KEY (`productid`)

) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;




=========data ==================

'1', 'Table', 'Teak wood Table', '2100.00'

'2', 'Chair', 'Plastic Chair', '1000.00'

'3', 'master Bed', 'King size Bed', '10000.00'

'4', 'Normal Bed', 'Queen size Bed', '9000.00'

'5', 'Dining Table', '4 chair dining table', '6000.00'

'6', 'Cupboard', 'Steel Cupboard', '5000.00'

==========================================================




CREATE TABLE `stock` (

`stockid` int(11) NOT NULL AUTO_INCREMENT,

`productid` int(11) DEFAULT NULL,

`quantity` int(11) DEFAULT NULL,

PRIMARY KEY (`stockid`),

KEY `productid` (`productid`),

CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)

) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;




=====data ================

'1', '6', '0'

'2', '5', '150'

'3', '4', '50'

'4', '3', '100'

'5', '2', '100'

'6', '1', '0'

==============================




CREATE TABLE `users` (

`username` varchar(50) NOT NULL,

`password` varchar(500) DEFAULT NULL,

PRIMARY KEY (`username`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;




== data ==========================================

'admin', 'PBKDF2WithHmacSHA256:2048:uS4W774WdYj872LVuRSMujHdgqEVf7yPGZw6MGbgKI8=:VVT3CD1wfVvkQ7ct2eCNWUKr6GuMFztvJPOUgD1MybU='

'user', 'PBKDF2WithHmacSHA256:2048:ooL0ULgBf6Fq0YurXBIKMjWWrqOukulRBqAXzFjExys=:Gh8g16d69tWZVltJVRc17GweywmXVr1+eTl7FyKgdxQ='

===================




CREATE TABLE `groups` (

`GROUPNAME` varchar(100) DEFAULT NULL,

`username` varchar(50) DEFAULT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;




===== data=================================

'Admin', 'admin'

'Supervisor', 'user'

================================
