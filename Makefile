GDAL_VERSION:=3.5.1
POSTGRES_VERSION:=14.5
LIBTIFF_VERSION:=4.0.9
PROJ_VERSION:=9.1.0
POSTGRES_VERSION:=14.5
OPENSSL_VERSION:=3.0.5

build: libtiff proj expat openssl postgres gdal

libtiff:
	make -C sources/libtiff

proj:
	make -C sources/proj

postgres:
	brew install postgres
#	make -C sources/postgres

expat:
	make -C sources/expat

gdal:
	make -C sources/gdal
