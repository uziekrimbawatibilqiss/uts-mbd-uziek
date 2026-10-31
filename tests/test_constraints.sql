-- harus GAGAL
INSERT INTO salam.mahasiswas (nim,nama,ipk,semester) VALUES ('20100470501024','Dobel',3,5); -- UNIQUE
INSERT INTO salam.mahasiswas (nim,nama,ipk,semester) VALUES ('111','Ipk Ngawur',5.5,5);    -- CHECK ipk
INSERT INTO salam.mahasiswas (nim,nama,ipk,semester) VALUES ('222','Sem Ngawur',3,20);     -- CHECK semester
INSERT INTO salam.mahasiswas (id,nim,nama,ipk,semester) VALUES (1,'333','PK Dobel',3,5);   -- PRIMARY KEY
-- harus BERHASIL
INSERT INTO salam.mahasiswas (nim,nama,ipk,semester) VALUES ('444','Valid',3.2,3);