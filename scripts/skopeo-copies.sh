#!/usr/bin/env sh
skopeo copy docker://registry.access.redhat.com/ubi8/ubi:8.4 docker://quay.io/shellclear/ubi8:8.4 --insecure-policy
skopeo copy containers-storage:localhost/s2i-python:39 docker://quay.io/shellclear/s2i-python:39
