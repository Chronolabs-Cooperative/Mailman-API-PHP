
# Table structure for table `cname`
#

CREATE TABLE `cname` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `signed` enum('Verified', 'Unverified', 'Failed') NOT NULL DEFAULT 'Unverified',
  `orgid` int(11) unsigned NOT NULL DEFAULT '0',
  `domainid` int(11) unsigned NOT NULL DEFAULT '0',
  `zonekey` varchar(32) NOT NULL DEFAULT '',
  `signkey` varchar(32) NOT NULL DEFAULT '',
  `cname` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(255) NOT NULL DEFAULT '',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `emailed` int(11) unsigned NOT NULL DEFAULT '0',
  `emailing` int(11) unsigned NOT NULL DEFAULT '0',
  `checked` int(11) unsigned NOT NULL DEFAULT '0',
  `checking` int(11) unsigned NOT NULL DEFAULT '0',
  `verified` int(11) unsigned NOT NULL DEFAULT '0',
  `failings` int(11) unsigned NOT NULL DEFAULT '0',
  `signings` int(11) unsigned NOT NULL DEFAULT '0',
  `unsigned` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `domain` (`domainid`,`domain`),
  KEY `cnamedomain` (`cname`,`domain`,`domainid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

