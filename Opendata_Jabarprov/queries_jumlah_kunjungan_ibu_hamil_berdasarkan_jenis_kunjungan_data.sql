CREATE DATABASE ibu_hamil;

-- Menunjukan seluruh database ibu_hamil
SELECT * FROM kunjungan_ibu_hamil;

-- Menunjukan data dari kabupaten bekasi
SELECT * FROM kunjungan_ibu_hamil WHERE nama_kabupaten_kota = "KABUPATEN BEKASI";

-- Menunjukan data dari tahun 2015 - 2019 disusun berdasarkan jenis kunjungan
SELECT * FROM kunjungan_ibu_hamil WHERE tahun >= 2015 AND tahun <=2019 ORDER BY jenis_kunjungan, nama_kabupaten_kota;

-- Data diatas dibatasi hanya 20 row
SELECT * FROM kunjungan_ibu_hamil WHERE tahun >= 2015 AND tahun <=2019 ORDER BY jenis_kunjungan, nama_kabupaten_kota LIMIT 20;

-- Menunjukan data nama kabupaten kota yang ada di dataset lalu diurutkan secara ascending/descending
SELECT distinct nama_kabupaten_kota FROM kunjungan_ibu_hamil ORDER BY nama_kabupaten_kota DESC;

-- Menunjukan seluruh data hanya nama kabupaten kota Kota Bekasi dan Kabupaten Bekasi
SELECT * FROM kunjungan_ibu_hamil WHERE nama_kabupaten_kota IN ("Kota Bekasi", "Kabupaten Bekasi") ORDER BY nama_kabupaten_kota;

SELECT * FROM kunjungan_ibu_hamil WHERE nama_kabupaten_kota = "Kota Bekasi" OR nama_kabupaten_kota = "Kabupaten Bekasi" ORDER BY nama_kabupaten_kota;

-- Menunjukan seluruh data dari jenis kunjungan K1 di kabupaten garut
SELECT * FROM kunjungan_ibu_hamil WHERE jenis_kunjungan = "K1" AND nama_kabupaten_kota = "Kabupaten Garut";

-- Menunjukan seluruh data kecuali pada tahun 2012, 2013, dan 2014
SELECT * FROM kunjungan_ibu_hamil WHERE tahun NOT IN ("2012", "2013", "2014");

-- Menunjukan tren jumlah ibu hamil dari Kabupaten Ciamis pada tahun 2010 - 2020
SELECT nama_kabupaten_kota, jenis_kunjungan, jumlah_bumil, satuan, tahun FROM kunjungan_ibu_hamil WHERE tahun >= 2010 AND tahun <=2020 
AND nama_kabupaten_kota = "Kabupaten Ciamis" ORDER BY jenis_kunjungan;

-- Menunjukan jumlah bumil terpusat di jenis kunjungan K4 dari Kabupaten Bandung, Kabupaten Bandung Barat, Kota Bandung pada tahun 2020
SELECT * FROM kunjungan_ibu_hamil WHERE nama_kabupaten_kota IN ("Kabupaten Bandung", "Kabupaten Bandung Barat", "Kota Bandung") AND jenis_kunjungan = "K4" AND tahun = 2020;

SELECT * FROM kunjungan_ibu_hamil WHERE nama_kabupaten_kota LIKE "%Bandung%" AND jenis_kunjungan = "K4" AND tahun = 2020 ORDER BY jumlah_bumil;

-- Menunjukan data kode kabupaten kota yang memiliki angka 7 pada 3 digit di awal
SELECT distinct kode_kabupaten_kota, nama_kabupaten_kota FROM kunjungan_ibu_hamil WHERE kode_kabupaten_kota LIKE "__7_";

