#!/bin/sh

gitfiles=`ls -d */.git`
repos=`for x in ${gitfiles}; do dirname $x; done`

GRAY="$(tput setaf 8)"
RESET="$(tput sgr0)"

for repo in ${repos}; do
    echo ${GRAY}${repo}${RESET}
    cd ${repo}
    git grep $@
    cd ..
done