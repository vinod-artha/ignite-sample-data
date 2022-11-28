
--
-- Table structure for table `lineitem`
--

DROP TABLE IF EXISTS `lineitem`;

CREATE TABLE `lineitem` (
  `l_shipdate` date,
  `l_orderkey` bigint(20),
  `l_discount` decimal(19,4),
  `l_extendedprice` decimal(19,4),
  `l_suppkey` int(11),
  `l_quantity` bigint(20),
  `l_returnflag` char(1),
  `l_partkey` bigint(20),
  `l_linestatus` char(1),
  `l_tax` decimal(19,4),
  `l_commitdate` date,
  `l_receiptdate` date,
  `l_shipmode` char(10),
  `l_linenumber` bigint(20),
  `l_shipinstruct` char(25),
  `l_comment` varchar(44),
  PRIMARY KEY (`l_orderkey`,`l_linenumber`)
) with "template=partitioned, backups=1, CACHE_NAME=Lineitem, VALUE_TYPE=sxt.tpch.lineitem";