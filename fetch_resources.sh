#!/bin/bash

GOHOST=https://blog.golang.org
RESOURCES=(
    fonts.css
    lib/godoc/playground.js
    lib/godoc/godocs.js
    lib/godoc/play.js
    lib/godoc/playground.js
    lib/godoc/play.js
    lib/godoc/jquery.js
)
LIBROOT=content

mkdir -p ${LIBROOT}/lib/godoc

set -x
for i in ${RESOURCES[@]}; do
    curl ${GOHOST}/${i} -O content/${i}
done
