#!/usr/bin/env sh
skopeo copy docker://registry.access.redhat.com/ubi8/ubi:8.5-214 docker://quay.io/shellclear/ubi8:8.5-214 --insecure-policy
skopeo copy containers-storage:localhost/s2i-python:39 docker://quay.io/shellclear/s2i-python:39
skopeo copy containers-storage:localhost/s2i-python:39 docker://quay.io/shellclear/s2i-python:latest
skopeo copy containers-storage:localhost/python-hello:1.0 docker://quay.io/shellclear/python-hello:1.0
skopeo copy containers-storage:localhost/python-hello:1.0 docker://quay.io/shellclear/python-hello:latest
