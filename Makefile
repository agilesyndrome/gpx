LIBTIFF_VERSION:=4.0.9
PROJ_VERSION:=9.1.0
#EXPAT_VERSION comes from git
OPENSSL_VERSION:=3.0.5
GDAL_VERSION:=3.5.1

POSTGRES_VERSION:=14.5

build: libtiff proj expat openssl gdal

libtiff:
	make -C sources/libtiff

proj:
	make -C sources/proj

expat:
	make -C sources/expat

openssl:
	make -C sources/openssl

gdal:
	make -C sources/gdal
