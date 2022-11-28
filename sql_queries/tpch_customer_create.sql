
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `c_custkey` int,
  `c_mktsegment` char,
  `c_nationkey` int,
  `c_name` varchar,
  `c_address` varchar,
  `c_phone` char,
  `c_acctbal` decimal(19,4),
  `c_comment` varchar(118),
  PRIMARY KEY (`c_custkey`)
) with "template=partitioned, backups=1, CACHE_NAME=Customer, VALUE_TYPE=sxt.tpch.Customer";