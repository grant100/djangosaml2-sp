#!/usr/bin/env bash

openssl genrsa -out private.pem 2048
openssl req -new -x509 -key private.pem -out public.pem
