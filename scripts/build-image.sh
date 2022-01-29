#!/usr/bin/env sh
podman build --net=private -t s2i-python:39 s2i/build-image 
