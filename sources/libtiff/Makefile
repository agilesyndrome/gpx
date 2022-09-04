LIBTIFF_VERSION:=4.0.9

build: fetch tiff-$(LIBTIFF_VERSION)
	rm -rf tiff-$(LIBTIFF_VERSION)

fetch:
	curl -LO http://download.osgeo.org/libtiff/tiff-$(LIBTIFF_VERSION).tar.gz
	tar -xzvf tiff-$(LIBTIFF_VERSION).tar.gz
	rm tiff-$(LIBTIFF_VERSION).tar.gz

tiff-$(LIBTIFF_VERSION):
	(cd tiff-$(LIBTIFF_VERSION); \
	  ./configure; \
	  make; \
      sudo make install)

.PHONY: tiff-$(LIBTIFF_VERSION)