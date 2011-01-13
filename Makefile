SCRIPTS=git-current-branch \
	git-push-this \
	git-noff-merge \
	git-fetch-and-rebase \
	git-preserve-rebase
GIT_EXEC_PATH=$(shell git --exec-path)
.DEFAULT: build
build:

install:
	mkdir -p $(DESTDIR)$(GIT_EXEC_PATH)
	install -m0755 $(SCRIPTS) $(DESTDIR)$(GIT_EXEC_PATH)

.PHONY: build install
