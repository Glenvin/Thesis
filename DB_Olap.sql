DROP TABLE dbo.dim_Lokasi
DROP TABLE dbo.dim_Tanggal
DROP TABLE dbo.dim_Categori
DROP TABLE dbo.dim_OrderUnit
DROP TABLE dbo.fact_Pembelian

DELETE FROM dbo.dim_Tanggal 

CREATE TABLE dbo.dim_Categori(
	Categori_id INT PRIMARY KEY,
	Categori VARCHAR (MAX)
)

CREATE TABLE dbo.dim_Lokasi(
	Lokasi_id INT PRIMARY KEY,
	Lokasi VARCHAR (MAX),
	Latitude FLOAT,
	Longtitude FLOAT
)

CREATE TABLE dbo.dim_Tanggal(
	Tanggal_id INT PRIMARY KEY,
	Tanggal_Document DATE,
	Tanggal INT,
	No_Bulan INT,
	Tahun INT,
	Bulan VARCHAR(MAX)
)

CREATE TABLE dbo.dim_OrderUnit(
	OrderUnit_id INT PRIMARY KEY,
	Order_Unit VARCHAR (MAX)
)

CREATE TABLE dbo.fact_Pembelian(
	Purchasing_Document_id INT PRIMARY KEY,
	Categori_id INT, 
	Lokasi_id INT,
	OrderUnit_id INT,
	Tanggal_id INT,
	Purchasing_Document VARCHAR(MAX),
	Nama_Barang VARCHAR(MAX),
	Jumlah_Pembelian INT,
	Harga INT
	FOREIGN KEY (Categori_id) REFERENCES dim_Categori(Categori_id), 
	FOREIGN KEY (Tanggal_id) REFERENCES dim_Tanggal(Tanggal_id), 
	FOREIGN KEY (Lokasi_id) REFERENCES dim_Lokasi(Lokasi_id), 
	FOREIGN KEY (OrderUnit_id) REFERENCES dim_OrderUnit(OrderUnit_id),
)