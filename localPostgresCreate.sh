#!/bin/bash

docker container inspect multi-tenant-architecture > /dev/null
if [ $? == 0 ]; then exit 1; fi;

docker run --name "multi-tenant-architecture" \
  -e POSTGRES_USER="nestrest2admin" \
  -e POSTGRES_PASSWORD="mysecretpassword" \
  -e POSTGRES_DB="nestrest2" \
  -p 5432:5432 \
  -d postgres
