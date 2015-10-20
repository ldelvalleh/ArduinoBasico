#!/bin/bash

FILE=$1
EXTENSION="${FILE##*.}"
echo $EXTENSION
if [ $EXTENSION -eq  "html" ]
then
	ORIGIN_FILE=$1
else
	ORIGIN_FILE=$1".html"
fi

DEST_FILE=$1".md"

echo $ORIGIN_FILE  " > "  $DEST_FILE

pandoc -f html -t markdown "$ORIGIN_FILE" > "$DEST_FILE"

google-chrome "$ORIGIN_FILE"

git mv "$ORIGIN_FILE" "html/$ORIGIN_FILE"
git add "$DEST_FILE"
git commit -m "v0" "$DEST_FILE"
subl "$DEST_FILE"


