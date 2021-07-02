#!/usr/bin/env sh
rm -fr s2i/build-app-image/*
rsync -vahziAX --delete app/hello/ s2i/build-image/test/test-app/
s2i build s2i/build-image/test/test-app s2i-python:39 python-hello:1.0 --as-dockerfile s2i/build-app-image/Dockerfile
podman build --format docker -t python-hello:1.0 s2i/build-app-image
