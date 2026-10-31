CREATE SCHEMA IF NOT EXISTS salam;

CREATE TABLE salam.mahasiswas (
    id         SERIAL PRIMARY KEY,
    nim        VARCHAR(14)  NOT NULL UNIQUE,
    nama       VARCHAR(100) NOT NULL,
    email      VARCHAR(100) UNIQUE,
    ipk        NUMERIC(3,2) NOT NULL DEFAULT 0
               CONSTRAINT chk_ipk CHECK (ipk BETWEEN 0 AND 4),
    semester   SMALLINT NOT NULL
               CONSTRAINT chk_semester CHECK (semester BETWEEN 1 AND 14),
    created_at TIMESTAMP DEFAULT now()
);

INSERT INTO salam.mahasiswas (nim, nama, email, ipk, semester)
VALUES ('20100470501024', 'Contoh Satu', 'satu@mail.com', 3.50, 5);