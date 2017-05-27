#!/usr/bin/env sh

while [[ $# -gt 1 ]]
do
  key="$1"
  case $key in
    --watch)
    WATCH="$2"
    shift
    ;;
    --node_entry)
    ENTRY="$2"
    shift
    ;;
    *)
    ;;
  esac
  shift
done

./node_modules/.bin/gulp --silent --cwd "./" --gulpfile "./node_modules/eslint-babel-watcher/gulpfile.js" --watch "${WATCH}" --node_entry "${ENTRY}"
