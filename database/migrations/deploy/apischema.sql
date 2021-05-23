-- Deploy postgrest:apischema to pg
-- depends on 

BEGIN;

CREATE SCHEMA api;

CREATE ROLE api_admin NOLOGIN;
CREATE ROLE api_user NOLOGIN;

ALTER SCHEMA api OWNER TO api_admin;
GRANT USAGE ON SCHEMA API TO web_anon;
GRANT USAGE ON SCHEMA API TO api_user;
ALTER DEFAULT PRIVILEGES REVOKE EXECUTE ON FUNCTIONS FROM PUBLIC;

COMMIT;
