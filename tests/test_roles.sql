-- backend_dev: CRUD OK, DDL gagal
SET ROLE backend_dev;
INSERT INTO salam.mahasiswas (nim,nama,ipk,semester) VALUES ('555','Backend',3,2);
UPDATE salam.mahasiswas SET ipk=3.9 WHERE nim='555';
DELETE FROM salam.mahasiswas WHERE nim='555';
CREATE TABLE salam.x (id int);          -- GAGAL
RESET ROLE;

-- bi_dev: SELECT OK, sisanya gagal
SET ROLE bi_dev;
SELECT * FROM salam.mahasiswas;
INSERT INTO salam.mahasiswas (nim,nama,semester) VALUES ('666','BI',1);  -- GAGAL
DELETE FROM salam.mahasiswas;                                            -- GAGAL
RESET ROLE;

-- data_engineer: DDL + CRUD OK
SET ROLE data_engineer;
CREATE TABLE salam.matkul (id serial primary key, nama text);
ALTER TABLE salam.matkul ADD COLUMN sks int;
INSERT INTO salam.matkul (nama,sks) VALUES ('MBD',3);
DROP TABLE salam.matkul;
RESET ROLE;