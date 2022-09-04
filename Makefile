GDAL_VERSION:=3.5.1
PROJ_VERSION:=9.1.0
LIBTIFF_VERSION:=4.0.9

build: 
	make libtiff-fetch libtiff-build
	make proj-fetch proj-build
	make gdal-fetch gdal-build

libtiff-fetch:
	curl -LO http://download.osgeo.org/libtiff/tiff-$(LIBTIFF_VERSION).tar.gz
	tar -xzvf tiff-$(LIBTIFF_VERSION).tar.gz

libtiff-build:
	(cd tiff-$(LIBTIFF_VERSION); ./configure; make; make install)


proj-build:
	(mkdir -p proj-$(PROJ_VERSION)/build; cd proj-$(PROJ_VERSION)/build; cmake .. && cmake --build . && cmake --build . --target install)

proj-fetch:
	curl -LO https://download.osgeo.org/proj/proj-$(PROJ_VERSION).tar.gz
	tar -xzvf proj-$(PROJ_VERSION).tar.gz
	

gdal-fetch:
	curl -LO https://github.com/OSGeo/gdal/releases/download/v$(GDAL_VERSION)/gdal-$(GDAL_VERSION).tar.gz
	tar -xzvf gdal-$(GDAL_VERSION).tar.gz

gdal-build:
	(cd gdal-$(GDAL_VERSION); ./configure; make; sudo make install)

expat-fetch:
	git clone https://github.com/libexpat/libexpat
	
expat-build:
	mkdir -p libexpat/expat/build
	(cd libexpat/expat/build; cmake .. && cmake --build . && cmake --build . --target install)
