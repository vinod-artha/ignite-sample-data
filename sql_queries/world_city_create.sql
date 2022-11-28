DROP TABLE IF EXISTS City;

CREATE TABLE City (
  ID INT,
  Name VARCHAR,
  CountryCode CHAR(3),
  District VARCHAR,
  Population INT,
  PRIMARY KEY (ID, CountryCode)
) WITH "template=partitioned, backups=1, affinityKey=CountryCode, CACHE_NAME=City, KEY_TYPE=demo.model.CityKey, VALUE_TYPE=demo.model.City";