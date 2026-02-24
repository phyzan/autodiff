PREFIX ?= /usr/local
INCLUDEDIR ?= $(PREFIX)/include

.PHONY: install uninstall

install:
	@echo "Installing autodiff headers to $(INCLUDEDIR)/autodiff..."
	install -d $(INCLUDEDIR)/autodiff/
	cp -r include/* $(INCLUDEDIR)/autodiff/
	@echo "Done. You can now use: #include <autodiff/autodiff.hpp>"

uninstall:
	@echo "Removing autodiff headers from $(INCLUDEDIR)..."
	rm -rf $(INCLUDEDIR)/autodiff
	@echo "Done."
