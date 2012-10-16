build:
	PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/" python -u setup.py build

install: build
	PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/" python -u setup.py install

# Really? Can't test without install?
test: install
	python -u test.py
