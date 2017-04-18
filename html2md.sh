#!/bin/bash

clear

FILE=$1
FILENOEXTENSION="${FILE%.*}"
ORIGIN_FILE="$FILENOEXTENSION"".html"

DEST_FILE="$FILENOEXTENSION"".md"

echo $ORIGIN_FILE  " > "  $DEST_FILE

pandoc -f html -t markdown "$ORIGIN_FILE" > "$DEST_FILE"

google-chrome "$ORIGIN_FILE"

git mv "$ORIGIN_FILE" "html/$ORIGIN_FILE"
git commit -m "mv" "html/$ORIGIN_FILE"
git add "$DEST_FILE"
git commit -m "v0" "$DEST_FILE"
git commit -m "v0" "html/$ORIGIN_FILE"
atom "$DEST_FILE"
