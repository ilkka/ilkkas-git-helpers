TODOs
=====

Do the equivalents of these:

[alias]
#       pthis = !git push origin HEAD:$(git symbolic-ref HEAD 2>/dev/null|sed
-e 's/refs\/heads\///')
        rb = rebase --preserve-merges
#       up = !git fetch origin && git rb origin $(git symbolic-ref HEAD
2>/dev/null|sed -e 's/refs\/heads\///')
        mg = merge --no-ff

