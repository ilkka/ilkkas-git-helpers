SCRIPTS=git-current-branch

install:
	$(foreach s,$(SCRIPTS),install -D -m0755 $(s) $(DESTDIR)/usr/lib/git-core/$(s))
