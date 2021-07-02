#!/usr/bin/env sh
podman run --name hello -u 1234 -p 8080:8080 -d -ti python-hello:1.0
