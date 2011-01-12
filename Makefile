SCRIPTS=git-current-branch \
	git-push-this

.DEFAULT: build
build:

install:
	$(foreach s,$(SCRIPTS),install -D -m0755 $(s) $(DESTDIR)/usr/lib/git-core/$(s))

.PHONY: build install
