
# Table structure for table `domains`
#

CREATE TABLE `domains` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `autozone` enum('Yes', 'No', 'Waiting') NOT NULL DEFAULT 'No',
  `zonekey` varchar(32) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `identids` tinytext,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `parentdomainid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `parentdomain` (`parentdomainid`),
  KEY `domain` (`domain`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

insert into (`autozone`, `domain`, `uid`) VALUES('No', 'localhost', 1);
