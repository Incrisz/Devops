# How to resolve "Error: bad index – Fatal: index file corrupt" when using Git

# On OSX/Linux/Windows(With Git bash):

rm -f .git/index
git reset

# On Windows (with CMD and not git bash):

del .git\index
git reset