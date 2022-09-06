PROJ_VERSION:=9.1.0


build: fetch proj-$(PROJ_VERSION)
	rm -rf proj-$(PROJ_VERSION)

fetch:
	curl -LO https://download.osgeo.org/proj/proj-$(PROJ_VERSION).tar.gz
	tar -xzvf proj-$(PROJ_VERSION).tar.gz
	rm proj-$(PROJ_VERSION).tar.gz


proj-$(PROJ_VERSION):
	mkdir -p proj-$(PROJ_VERSION)/build
	(cd proj-$(PROJ_VERSION)/build; \
      cmake .. && \
      cmake --build . && \
      sudo cmake --build . --target install)


.PHONY: proj-$(PROJ_VERSION)






