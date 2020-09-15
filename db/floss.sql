# MySQL-Front Dump 2.5
#
# Host: localhost   Database: floss
# --------------------------------------------------------
# Server version 4.1.10a-nt


#
# Table structure for table 'tcustomer'
#

CREATE TABLE tcustomer (
  sAccount varchar(40) NOT NULL default '0',
  sAcctName varchar(40) NOT NULL default '',
  sAddress varchar(40) default NULL,
  sCity varchar(15) default NULL,
  sState char(2) default NULL,
  sZip varchar(5) default NULL,
  sPhone varchar(20) default NULL,
  sFax varchar(12) default NULL,
  sEMail varchar(40) default NULL,
  sContactName varchar(50) default NULL,
  sCellNum varchar(12) default NULL,
  sCEMail varchar(40) default NULL,
  sCC1 varchar(19) default NULL,
  sCCE1 varchar(5) default NULL,
  sCCSec1 char(3) default NULL,
  sCCType1 varchar(10) default NULL,
  PRIMARY KEY  (sAccount),
  UNIQUE KEY sAccount (sAccount),
  KEY sAccount_2 (sAccount)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



#
# Dumping data for table 'tcustomer'
#

INSERT INTO tcustomer VALUES("David Z", "David Z", "SSG B`wcy", NULL, NULL, NULL, "212 274 9044 x632", NULL, NULL, "Kristina", NULL, NULL, NULL, NULL, NULL, NULL);


#
# Table structure for table 'tjoborder'
#

CREATE TABLE tjoborder (
  JobNum int(5) NOT NULL default '0',
  xOrderDate date NOT NULL default '0000-00-00',
  sSalesPerson varchar(20) default NULL,
  sArtist varchar(20) default NULL,
  sSpecial text,
  sAcctName varchar(40) default NULL,
  dArt double default NULL,
  dColorProof double default NULL,
  dPrint double default NULL,
  dOptions double default NULL,
  dTotal double default NULL,
  dTax double default NULL,
  dDelivery double default NULL,
  dSubtotal double default NULL,
  dDeposit double default NULL,
  dBalance double default NULL,
  cDepCC varchar(5) default 'False',
  cDepCash varchar(5) default 'False',
  cDepCK varchar(5) default 'False',
  cBalCC varchar(5) default 'False',
  cBalCash varchar(5) default 'False',
  cBalCK varchar(5) default 'False',
  sCKNum varchar(10) default NULL,
  sCCNum varchar(20) default NULL,
  sProof varchar(20) default NULL,
  sPrint varchar(20) default NULL,
  sDelivery varchar(20) default NULL,
  sSizeWH varchar(5) default NULL,
  sFSizeWH varchar(5) default NULL,
  dTotalQty double default NULL,
  sLots varchar(5) default NULL,
  sColors varchar(5) default NULL,
  sStock varchar(20) default NULL,
  sPaperStock varchar(20) default NULL,
  cArtCSD int(1) default NULL,
  cArtNoCSD int(1) default NULL,
  cArtBOP int(1) default NULL,
  sPrinter char(3) default NULL,
  sAccount varchar(40) NOT NULL default '',
  sAddress varchar(40) default NULL,
  sCity varchar(15) default NULL,
  sState char(2) default NULL,
  sZip varchar(5) default NULL,
  sPhone varchar(20) default NULL,
  sFax varchar(12) default NULL,
  sEMail varchar(40) default NULL,
  sContactName varchar(50) default NULL,
  sCellNum varchar(12) default NULL,
  sCEMail varchar(40) default NULL,
  sCC varchar(19) default NULL,
  sCCE varchar(5) default NULL,
  sCCS char(3) default NULL,
  sCCType varchar(10) default NULL,
  dAdditional double default NULL,
  PRIMARY KEY  (JobNum),
  UNIQUE KEY JobNum (JobNum),
  KEY JobNum_2 (JobNum)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



#
# Dumping data for table 'tjoborder'
#

INSERT INTO tjoborder VALUES("1", "1981-03-03", "satisci", "artizzz", NULL, "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "profffff", "yazii", "deliii", "21x34", "65x45", "1.65", "444", "4/4", "False", "23", NULL, NULL, NULL, NULL, "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO tjoborder VALUES("2", "1999-03-03", "asdf", "asdfas", "zvzxcvzxcsdfsdfsadf", "asdf", "12", "12", "214", "315", "135", NULL, "531", "124", "245", "564", "False", "True", "False", "True", "True", "True", "5645656456", NULL, "12", "123", "432", "13", "657", "537", "537", "753", "True", "575", NULL, NULL, NULL, "BC", "asdf", "asdfasd", "erwer", NULL, NULL, "234", "234", "sdfg", "dfg", "xcb", "dfg", "456456456456", "23423", "234", NULL, "4234");
INSERT INTO tjoborder VALUES("3", "0001-01-01", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "False", NULL, NULL, NULL, NULL, NULL, "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
