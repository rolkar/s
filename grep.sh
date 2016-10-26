#!/bin/sh

gitfiles=`ls -d */.git`
repos=`for x in ${gitfiles}; do dirname $x; done`

BLUE="$(tput setaf 4)"
RESET="$(tput sgr0)"

for repo in ${repos}; do
    echo ${BLUE}${repo}${RESET}
    cd ${repo}
    git grep $@
    cd ..
done
