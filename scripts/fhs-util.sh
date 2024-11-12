#!/bin/bash

case "$1" in
    check)
        if [ ! -e pubspec.yaml ]; then
            echo "[!] Call these scripts in the root directory of your flutter app"
        fi
        ;;
    pw)
        head -n 10 /dev/urandom | base64 | cut -c1-64;
        ;;
    project)
        basename $(pwd)
        ;;
esac