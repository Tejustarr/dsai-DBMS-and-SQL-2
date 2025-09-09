-- isolation.sql (Postgres/MySQL syntax)

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN;
-- do some queries
COMMIT;
