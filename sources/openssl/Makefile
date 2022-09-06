OPENSSL_VERSION:=3.0.5

build: fetch openssl-$(OPENSSL_VERSION)
	rm -rf openssl-$(OPENSSL_VERSION)

fetch:
	curl -LO https://www.openssl.org/source/openssl-$(OPENSSL_VERSION).tar.gz
	tar -xzvf openssl-$(OPENSSL_VERSION).tar.gz
	rm openssl-$(OPENSSL_VERSION).tar.gz

openssl-$(OPENSSL_VERSION):
	(cd openssl-$(OPENSSL_VERSION); \
	./configure && \
	make && \
	sudo make install)

.PHONY: openssl-$(OPENSSL_VERSION)


##export LDLIBS="$(shell PKG_CONFIG_PATH=/opt/homebrew/Cellar/libpq/14.5/lib/pkgconfig/ pkg-config --libs expat gdal proj libpq)" && \
 #





