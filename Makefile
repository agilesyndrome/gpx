GDAL_VERSION:=3.5.1



build: libtiff proj
	#make -C sources/proj
	#make proj-fetch proj-build
	#make gdal-fetch gdal-build

libtiff:
	make -C sources/libtiff

proj:
	make -C sources/proj

gdal-fetch:
	curl -LO https://github.com/OSGeo/gdal/releases/download/v$(GDAL_VERSION)/gdal-$(GDAL_VERSION).tar.gz
	tar -xzvf gdal-$(GDAL_VERSION).tar.gz

gdal-build:
	(cd gdal-$(GDAL_VERSION); \
           ./configure --with-pg=/Applications/Postgres.app/Contents/Versions/14/bin/pg_config; \
            make; sudo make install)

expat-fetch:
	git clone https://github.com/libexpat/libexpat
	
expat-build:
	mkdir -p libexpat/expat/build
	(cd libexpat/expat/build; cmake .. && cmake --build . && cmake --build . --target install)
