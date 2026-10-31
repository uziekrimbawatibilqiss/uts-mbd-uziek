INSERT INTO salam.mahasiswas (nim, nama, ipk, semester) VALUES
  ('1247050037', 'Uziek Rimbawati Bilqs', 3.75, 5),
  ('1247050038', 'Mahasiswa Cumlaude',    3.60, 5),
  ('1247050039', 'Mahasiswa Biasa',       3.10, 5);

CREATE VIEW salam.v_mahasiswa_cumlaude AS
SELECT nim, nama, ipk, semester
FROM salam.mahasiswas
WHERE ipk >= 3.5
ORDER BY ipk DESC;

GRANT SELECT ON salam.v_mahasiswa_cumlaude TO bi_dev;