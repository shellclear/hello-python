#!/usr/bin/env sh
podman rm -f python-hello
podman rmi localhost/s2i-python:39
podman rmi quay.io/shellclear/s2i-python:39
podman rmi localhost/python-hello:1.0
podman rmi quay.io/shellclear/python-hello:1.0
rm -fr s2i/build-app-image/*
rm -fr s2i/build-image/python-hello
