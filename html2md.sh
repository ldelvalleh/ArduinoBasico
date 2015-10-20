#!/bin/bash

clear

FILE=$1
ORIGIN_FILE="${FILE%.*}"".html"

DEST_FILE=$ORIGIN_FILE".md"

echo $ORIGIN_FILE  " > "  $DEST_FILE

pandoc -f html -t markdown "$ORIGIN_FILE" > "$DEST_FILE"

google-chrome "$ORIGIN_FILE"

git mv "$ORIGIN_FILE" "html/$ORIGIN_FILE"
git commit -m "mv" "html/$ORIGIN_FILE"
git add "$DEST_FILE"
git commit -m "v0" "$DEST_FILE"
subl "$DEST_FILE"


