#!/bin/bash

CONFIGDIR="$1"
TARGETDIR="$2"
find . -type f -ctime -1 -iname '*.cfg' -and ! -iname 'cura.cfg' | while read line; do mkdir -p `dirname "$TARGET/$line"`; cp -fv "$line" "$TARGET/$line" ; done;