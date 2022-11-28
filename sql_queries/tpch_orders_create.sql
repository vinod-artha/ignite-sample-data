CREATE TABLE `orders` (
  `o_orderdate` date,
  `o_orderkey` bigint(20),
  `o_custkey` bigint(20),
  `o_orderpriority` char(15),
  `o_shippriority` int(11),
  `o_clerk` char(15),
  `o_orderstatus` char(1),
  `o_totalprice` decimal(19,4),
  `o_comment` varchar(79),
  PRIMARY KEY (`o_orderkey`)
) with "template=partitioned, backups=1, CACHE_NAME=orders, VALUE_TYPE=sxt.tpch.orders";