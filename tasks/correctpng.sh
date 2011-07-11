#!/usr/bin/env zsh
rootdir="${0:h}/.."
for fic in $rootdir/site/img/**/*.jpg; do
    print -n "$fic"
    newname=${fic}.uncorrected
    mv "$fic" "$newname" && \
    convert +profile '*' "$newname" "${fic}" && \
    print "\t[DONE]"
done
