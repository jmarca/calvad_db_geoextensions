-- Deploy hpms_geocode:geoextensions to pg

BEGIN;

CREATE EXTENSION hstore;
CREATE EXTENSION pg_trgm;
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION fuzzystrmatch;
CREATE EXTENSION address_standardizer;
CREATE EXTENSION postgis_tiger_geocoder;
CREATE EXTENSION pgrouting;

COMMIT;
