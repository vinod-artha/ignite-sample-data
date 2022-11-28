DROP TABLE IF EXISTS CountryLanguage;

CREATE TABLE CountryLanguage (
  CountryCode CHAR(3),
  Language VARCHAR,
  IsOfficial CHAR(2),
  Percentage DECIMAL(4,1),
  PRIMARY KEY (CountryCode, Language)
) WITH "template=partitioned, backups=1, affinityKey=CountryCode, CACHE_NAME=CountryLng, KEY_TYPE=demo.model.CountryLngKey, VALUE_TYPE=demo.model.CountryLng";