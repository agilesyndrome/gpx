GDAL_VERSION:=3.5.1
POSTGRES_VERSION:=14.5
LIBTIFF_VERSION:=4.0.9
PROJ_VERSION:=9.1.0

build: libtiff proj expat postgres
	make gdal-fetch gdal-build

libtiff:
	make -C sources/libtiff

proj:
	make -C sources/proj

postgres:
	make -C sources/postgres

expat:
	make -C sources/expat

gdal-fetch:
	curl -LO https://github.com/OSGeo/gdal/releases/download/v$(GDAL_VERSION)/gdal-$(GDAL_VERSION).tar.gz
	tar -xzvf gdal-$(GDAL_VERSION).tar.gz

gdal-build:
	(cd gdal-$(GDAL_VERSION); \
           ./configure --with-pg=/Applications/Postgres.app/Contents/Versions/14/bin/pg_config; \
            make; sudo make install)
