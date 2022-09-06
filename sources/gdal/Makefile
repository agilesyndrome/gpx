GDAL_VERSION:=3.5.1

build: fetch gdal-$(GDAL_VERSION)
	rm -rf gdal-$(GDAL_VERSION)

fetch:
	curl -LO https://github.com/OSGeo/gdal/releases/download/v$(GDAL_VERSION)/gdal-$(GDAL_VERSION).tar.gz
	tar -xzvf gdal-$(GDAL_VERSION).tar.gz
	rm gdal-$(GDAL_VERSION).tar.gz

gdal-$(GDAL_VERSION):
	#PKG_CONFIG_PATH=/opt/homebrew/Cellar/libpq/14.5/lib/pkgconfig/ pkg-config --libs expat gdal proj libpq
	shell ./build.sh $(GDAL_VERSION)
	(cd gdal-$(GDAL_VERSION)/build; sudo cmake --build . --target install)

test:
	ogrinfo --formats | grep -i PostgreSQL

.PHONY: gdal-$(GDAL_VERSION)


##export LDLIBS="$(shell PKG_CONFIG_PATH=/opt/homebrew/Cellar/libpq/14.5/lib/pkgconfig/ pkg-config --libs expat gdal proj libpq)" && \
 #





