#!/bin/sh
docker build . -t waza_lightfixes:0000
docker run --rm -v "$(pwd)":/mnt waza_lightfixes:0000
