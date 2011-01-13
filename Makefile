SCRIPTS=git-current-branch \
	git-push-this
GIT_EXEC_PATH=$(shell git --exec-path)
.DEFAULT: build
build:

install:
	mkdir -p $(DESTDIR)$(GIT_EXEC_PATH)
	install -m0755 $(SCRIPTS) $(DESTDIR)$(GIT_EXEC_PATH)

.PHONY: build install
