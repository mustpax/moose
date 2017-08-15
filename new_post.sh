#!/bin/bash
set -e
NEW_FILE="_posts/`date +%Y-%m-%d`-$RANDOM.md"
cp post-template.md "$NEW_FILE"
sed -i .bak s/%DATE%/`date +%Y-%m-%dT%H:%M:%S%z`/ "$NEW_FILE"
rm "$NEW_FILE.bak"
