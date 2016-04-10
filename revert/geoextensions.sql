-- Revert hpms_geocode:geoextensions from pg

BEGIN;

DROP EXTENSION pgrouting;
DROP EXTENSION postgis_tiger_geocoder;
DROP EXTENSION address_standardizer;
DROP EXTENSION fuzzystrmatch;
DROP EXTENSION postgis_topology;
DROP EXTENSION postgis;
DROP EXTENSION pg_trgm;
DROP EXTENSION hstore;

COMMIT;
