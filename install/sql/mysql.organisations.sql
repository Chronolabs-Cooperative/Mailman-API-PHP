
# Table structure for table `organisations`
#

CREATE TABLE `organisations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state` enum('Active', 'Depreciated', 'Waiting', 'Failed') NOT NULL DEFAULT 'Waiting',
  `unixname` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` mediumblob,
  `icon-mimetype` varchar(64) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `digest-url` varchar(255) NOT NULL DEFAULT '',
  `owner` varchar(196) NOT NULL DEFAULT '',
  `owner-name` varchar(128) NOT NULL DEFAULT '',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `lists-active` int(8) unsigned NOT NULL DEFAULT '0',
  `lists-removed` int(8) unsigned NOT NULL DEFAULT '0',
  `identids` tinytext,
  `domainids` tinytext,
  `newsgroup-provider` varchar(255) NOT NULL DEFAULT 'UNS-UseNet-Server',
  `newsgroup-email` varchar(196) NOT NULL DEFAULT '',
  `newsgroup-username` varchar(64) NOT NULL DEFAULT '',
  `newsgroup-password` varchar(255) NOT NULL DEFAULT '',
  `newsgroup-server` varchar(64) NOT NULL DEFAULT 'news.usenetserver.com',
  `newsgroup-port` int(4) NOT NULL DEFAULT '119',
  `newsgroup-online` int(11) unsigned NOT NULL DEFAULT '0',
  `newsgroup-offline` int(11) unsigned NOT NULL DEFAULT '0',
  `newsgroup-uptime` int(11) unsigned NOT NULL DEFAULT '0',
  `newsgroup-downtime` int(11) unsigned NOT NULL DEFAULT '0',
  `newsgroup-checked` int(11) unsigned NOT NULL DEFAULT '0',
  `newsgroup-checking` int(11) unsigned NOT NULL DEFAULT '0',
  `emailed` int(11) unsigned NOT NULL DEFAULT '0',
  `emailing` int(11) unsigned NOT NULL DEFAULT '0',
  `created` int(11) unsigned NOT NULL DEFAULT '0',
  `approve` int(11) unsigned NOT NULL DEFAULT '0',
  `updated` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `unixname` (`state`,`unixname`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


