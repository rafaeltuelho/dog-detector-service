#!/usr/bin/env bash

IMG=$(base64 -w 0 "$1")

BASENAME=$(basename -- "$1")
TYPE="${FILENAME##*.}"
FILENAME="${BASENAME%.*}"

echo "{\"image\": \"${IMG}\"}" > "${FILENAME}.json"



