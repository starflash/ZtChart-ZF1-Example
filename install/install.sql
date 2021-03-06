CREATE TABLE `flserver` (
  `flserver_datetime` datetime NOT NULL,
  `flserver_uid` int(10) unsigned NOT NULL,
  `flserver_mac` char(12) DEFAULT NULL,
  `flserver_clientip` varchar(15) DEFAULT NULL,
  `flserver_gateway` varchar(21) DEFAULT NULL,
  `flserver_gameid` int(10) unsigned DEFAULT NULL,
  `flserver_gametype` mediumint(8) unsigned DEFAULT NULL,
  `flserver_gameserver` mediumint(8) unsigned DEFAULT NULL,
  `flserver_account` varchar(48) DEFAULT NULL,
  `flserver_hash` char(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50500 PARTITION BY RANGE  COLUMNS(flserver_datetime)
(PARTITION f2008 VALUES LESS THAN ('2009-01-01') ENGINE = MyISAM,
 PARTITION f200901 VALUES LESS THAN ('2009-02-01') ENGINE = MyISAM,
 PARTITION f200902 VALUES LESS THAN ('2009-03-01') ENGINE = MyISAM,
 PARTITION f200903 VALUES LESS THAN ('2009-04-01') ENGINE = MyISAM,
 PARTITION f200904 VALUES LESS THAN ('2009-05-01') ENGINE = MyISAM,
 PARTITION f200905 VALUES LESS THAN ('2009-06-01') ENGINE = MyISAM,
 PARTITION f200906 VALUES LESS THAN ('2009-07-01') ENGINE = MyISAM,
 PARTITION f200907 VALUES LESS THAN ('2009-08-01') ENGINE = MyISAM,
 PARTITION f200908 VALUES LESS THAN ('2009-09-01') ENGINE = MyISAM,
 PARTITION f200909 VALUES LESS THAN ('2009-10-01') ENGINE = MyISAM,
 PARTITION f200910 VALUES LESS THAN ('2009-11-01') ENGINE = MyISAM,
 PARTITION f200911 VALUES LESS THAN ('2009-12-01') ENGINE = MyISAM,
 PARTITION f200912 VALUES LESS THAN ('2010-01-01') ENGINE = MyISAM,
 PARTITION f201001 VALUES LESS THAN ('2010-02-01') ENGINE = MyISAM,
 PARTITION f201002 VALUES LESS THAN ('2010-03-01') ENGINE = MyISAM,
 PARTITION f201003 VALUES LESS THAN ('2010-04-01') ENGINE = MyISAM,
 PARTITION f201004 VALUES LESS THAN ('2010-05-01') ENGINE = MyISAM,
 PARTITION f201005 VALUES LESS THAN ('2010-06-01') ENGINE = MyISAM,
 PARTITION f201006 VALUES LESS THAN ('2010-07-01') ENGINE = MyISAM,
 PARTITION f201007 VALUES LESS THAN ('2010-08-01') ENGINE = MyISAM,
 PARTITION f201008 VALUES LESS THAN ('2010-09-01') ENGINE = MyISAM,
 PARTITION f201009 VALUES LESS THAN ('2010-10-01') ENGINE = MyISAM,
 PARTITION f201010 VALUES LESS THAN ('2010-11-01') ENGINE = MyISAM,
 PARTITION f201011 VALUES LESS THAN ('2010-12-01') ENGINE = MyISAM,
 PARTITION f201012 VALUES LESS THAN ('2011-01-01') ENGINE = MyISAM,
 PARTITION f201101 VALUES LESS THAN ('2011-02-01') ENGINE = MyISAM,
 PARTITION f201102 VALUES LESS THAN ('2011-03-01') ENGINE = MyISAM,
 PARTITION f201103 VALUES LESS THAN ('2011-04-01') ENGINE = MyISAM,
 PARTITION f201104 VALUES LESS THAN ('2011-05-01') ENGINE = MyISAM,
 PARTITION f201105 VALUES LESS THAN ('2011-06-01') ENGINE = MyISAM,
 PARTITION f201106 VALUES LESS THAN ('2011-07-01') ENGINE = MyISAM,
 PARTITION f201107 VALUES LESS THAN ('2011-08-01') ENGINE = MyISAM,
 PARTITION f201108 VALUES LESS THAN ('2011-09-01') ENGINE = MyISAM,
 PARTITION f201109 VALUES LESS THAN ('2011-10-01') ENGINE = MyISAM,
 PARTITION f201110 VALUES LESS THAN ('2011-11-01') ENGINE = MyISAM,
 PARTITION f201111 VALUES LESS THAN ('2011-12-01') ENGINE = MyISAM,
 PARTITION f201112 VALUES LESS THAN ('2012-01-01') ENGINE = MyISAM,
 PARTITION f201201 VALUES LESS THAN ('2012-02-01') ENGINE = MyISAM,
 PARTITION f201202 VALUES LESS THAN ('2012-03-01') ENGINE = MyISAM,
 PARTITION f201203 VALUES LESS THAN ('2012-04-01') ENGINE = MyISAM,
 PARTITION f201204 VALUES LESS THAN ('2012-05-01') ENGINE = MyISAM,
 PARTITION f201205 VALUES LESS THAN ('2012-06-01') ENGINE = MyISAM,
 PARTITION f201206 VALUES LESS THAN ('2012-07-01') ENGINE = MyISAM,
 PARTITION f201207 VALUES LESS THAN ('2012-08-01') ENGINE = MyISAM,
 PARTITION f201208 VALUES LESS THAN ('2012-09-01') ENGINE = MyISAM,
 PARTITION f201209 VALUES LESS THAN ('2012-10-01') ENGINE = MyISAM,
 PARTITION f201210 VALUES LESS THAN ('2012-11-01') ENGINE = MyISAM,
 PARTITION f201211 VALUES LESS THAN ('2012-12-01') ENGINE = MyISAM,
 PARTITION f201212 VALUES LESS THAN ('2013-01-01') ENGINE = MyISAM) */