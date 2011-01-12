SCRIPTS=git-current-branch \
	git-push-this

.DEFAULT: build
build:

install:
	mkdir -p $(DESTDIR)/usr/lib/git-core
	install -m0755 $(SCRIPTS) $(DESTDIR)/usr/lib/git-core

.PHONY: build install
