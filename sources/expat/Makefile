build:
	mkdir -p libexpat/expat/build
	(cd libexpat/expat/build; \
    cmake .. && \
    cmake --build . && \
    sudo cmake --build . --target install)


fetch:
	git clone https://github.com/libexpat/libexpat