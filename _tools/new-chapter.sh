#!/usr/bin/env bash

chapter="${1:?}"

if [ ! -d "docs/${chapter}" ] ; then
    for sub in fig src/main src/test ; do
        mkdir -p "docs/${chapter}/${sub}"
    done
    touch "docs/${chapter}/main.adoc"
    echo "include::${chapter}/main.adoc[]" >> "docs/main.adoc"
else
    echo "Chapter ${chapter} exists"
fi
