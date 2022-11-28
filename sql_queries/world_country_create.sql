DROP TABLE IF EXISTS Country;

CREATE TABLE Country (
  Code CHAR(3) PRIMARY KEY,
  Name VARCHAR,
  Continent VARCHAR,
  Region VARCHAR,
  SurfaceArea DECIMAL(10,2),
  IndepYear SMALLINT,
  Population INT,
  LifeExpectancy DECIMAL(3,1),
  GNP DECIMAL(10,2),
  GNPOld DECIMAL(10,2),
  LocalName VARCHAR,
  GovernmentForm VARCHAR,
  HeadOfState VARCHAR,
  Capital INT,
  Code2 CHAR(2)
) WITH "template=partitioned, backups=1, CACHE_NAME=Country, VALUE_TYPE=demo.model.Country";