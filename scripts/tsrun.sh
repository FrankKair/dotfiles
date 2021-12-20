#!/bin/sh

tsc "$1.ts" --lib esnext,dom && node "$1.js"
rm "$1.js"
