-- Verify hpms_geocode:geoextensions on pg

BEGIN;

--hstore
SELECT 1/count(*) FROM pg_extension WHERE extname = 'hstore';

--pg_trgm
SELECT 1/count(*) FROM pg_extension WHERE extname = 'pg_trgm';
SELECT has_function_privilege('similarity(text,text)', 'execute');


-- postgis;
SELECT 1/count(*) FROM pg_extension WHERE extname = 'postgis';
SELECT has_function_privilege('postgis_version()', 'execute');

-- pgrouting;
SELECT 1/count(*) FROM pg_extension WHERE extname = 'pgrouting';
SELECT has_function_privilege('pgr_version()', 'execute');

-- postgis_topology;
SELECT 1/count(*) FROM pg_extension WHERE extname = 'postgis_topology';

-- fuzzystrmatch;
SELECT 1/count(*) FROM pg_extension WHERE extname = 'fuzzystrmatch';
SELECT has_function_privilege('levenshtein(text,text)', 'execute');

-- address_standardizer;
SELECT 1/count(*) FROM pg_extension WHERE extname = 'address_standardizer';
SELECT has_function_privilege('standardize_address(text,text,text,text)', 'execute');

-- postgis_tiger_geocoder;
SELECT 1/count(*) FROM pg_extension WHERE extname = 'postgis_tiger_geocoder';
SELECT has_function_privilege('geocode_address(norm_addy,integer,geometry)', 'execute');


ROLLBACK;
