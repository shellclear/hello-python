#!/usr/bin/env sh
podman run --name python-hello -u 1234 -p 8080:8080 -d -ti quay.io/shellclear/python-hello:1.0
