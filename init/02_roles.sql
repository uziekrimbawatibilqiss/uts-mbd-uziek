CREATE ROLE backend_dev   LOGIN PASSWORD 'backend123';
CREATE ROLE bi_dev        LOGIN PASSWORD 'bi123';
CREATE ROLE data_engineer LOGIN PASSWORD 'engineer123';

-- data_engineer jadi owner supaya bisa CREATE/ALTER/DROP
ALTER SCHEMA salam OWNER TO data_engineer;
ALTER TABLE  salam.mahasiswas OWNER TO data_engineer;
ALTER SEQUENCE salam.mahasiswas_id_seq OWNER TO data_engineer;

-- backend_dev: CRUD
GRANT USAGE ON SCHEMA salam TO backend_dev, bi_dev;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA salam TO backend_dev;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA salam TO backend_dev;

-- bi_dev: read only
GRANT SELECT ON ALL TABLES IN SCHEMA salam TO bi_dev;

-- objek baru yang dibuat data_engineer otomatis dapat hak yang sama
ALTER DEFAULT PRIVILEGES FOR ROLE data_engineer IN SCHEMA salam
    GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO backend_dev;
ALTER DEFAULT PRIVILEGES FOR ROLE data_engineer IN SCHEMA salam
    GRANT SELECT ON TABLES TO bi_dev;
ALTER DEFAULT PRIVILEGES FOR ROLE data_engineer IN SCHEMA salam
    GRANT USAGE, SELECT ON SEQUENCES TO backend_dev;