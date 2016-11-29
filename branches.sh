#!/bin/sh

gitfiles=`ls -d */.git`
repos=`for x in ${gitfiles}; do dirname $x; done`

BLACK="$(tput setaf 0)"
BRICK="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
MUSTARD="$(tput setaf 3)"
BLUE="$(tput setaf 4)"
VIOLET="$(tput setaf 5)"
CYAN="$(tput setaf 6)"
LGRAY="$(tput setaf 7)"
GRAY="$(tput setaf 8)"
RED="$(tput setaf 9)"
RESET="$(tput sgr0)"

for repo in ${repos}; do
    echo ${BLUE}${repo}${RESET}
    cd ${repo}
    git branch --color
    cd ..
done
