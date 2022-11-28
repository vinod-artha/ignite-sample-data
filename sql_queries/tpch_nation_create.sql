DROP TABLE IF EXISTS `nation`;
CREATE TABLE `nation` (
  `n_nationkey` int,
  `n_name` char,
  `n_regionkey` int,
  `n_comment` varchar,
  PRIMARY KEY (`n_nationkey`)
) with "template=partitioned, backups=1, CACHE_NAME=nation, VALUE_TYPE=sxt.tpch.nation";