POSTGRES_VERSION:=14.5

fetch:
	curl -LO https://ftp.postgresql.org/pub/source/v$(POSTGRES_VERSION)/postgresql-$(POSTGRES_VERSION).tar.gz
	tar -xzvf postgresql-$(POSTGRES_VERSION).tar.gz
	rm postgresql-$(POSTGRES_VERSION).tar.gz

build:
	(cd postgresql-$(POSTGRES_VERSION); \
	./configure && \
	make
	)