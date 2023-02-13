DROP TABLE dbo.Lokasi
DROP TABLE dbo.Categori
DROP TABLE dbo.OrderUnit
DROP TABLE dbo.Pembelian

CREATE TABLE dbo.Categori(
	Categori_id INT PRIMARY KEY,
	Categori VARCHAR (MAX)
)

CREATE TABLE dbo.Lokasi(
	Lokasi_id INT PRIMARY KEY,
	Lokasi VARCHAR (MAX)
)

CREATE TABLE dbo.OrderUnit(
	OrderUnit_id INT PRIMARY KEY,
	Order_Unit VARCHAR (MAX)
)

CREATE TABLE dbo.Pembelian(
	Purchasing_Document_id INT PRIMARY KEY,
	Categori_id INT, 
	Lokasi_id INT,
	OrderUnit_id INT,
	Purchasing_Document VARCHAR(MAX),
	Tanggal_Document DATE,
	Nama_Barang VARCHAR(MAX),
	Jumlah_Pembelian VARCHAR(MAX),
	Harga VARCHAR(MAX)
	FOREIGN KEY (Categori_id) REFERENCES Categori(Categori_id), 
	FOREIGN KEY (Lokasi_id) REFERENCES Lokasi(Lokasi_id), 
	FOREIGN KEY (OrderUnit_id) REFERENCES OrderUnit(OrderUnit_id) 
)