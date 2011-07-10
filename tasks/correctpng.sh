#!/usr/bin/env zsh
rootdir="${0:h}/.."
for fic in $rootdir/site/img/**/*.png; do
    print -n "$fic"
    newname=${fic}.uncorrected
    mv "$fic" "$newname" && \
    convert -colorspace sRGB "$newname" "${fic}" && \
    print "\t[DONE]"
done
