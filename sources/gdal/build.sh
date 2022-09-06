#!/usr/bin/env bash
GDAL_VERSION=${1:-${GDAL_VERSION}}

SQLITE_ROOT=/opt/homebrew/Cellar/sqlite/3.39.3
POSTGRES_ROOT=/Applications/Postgres.app/Contents/Versions/14

set -ex

if [ -z "${GDAL_VERSION}" ]; then
  echo "Usage: ${0} GDAL_VERSION (or set GDAL_VERSION env var)"
  exit 1
fi

if [ -d gdal-${GDAL_VERSION}/build ]; then
  rm -rf gdal-${GDAL_VERSION}/build
fi

mkdir -p gdal-${GDAL_VERSION}/build
cd gdal-${GDAL_VERSION}/build

cmake \
  -DSQLite3_LIBRARY=${SQLITE_ROOT}/lib/libsqlite3.dylib \
  -DSQLite3_INCLUDE_DIR=${SQLITE_ROOT}/include \
  -DPostgreSQL_LIBRARY=${POSTGRES_ROOT}/lib/libpq.dylib \
  -DPostgreSQL_INCLUDE_DIR=${POSTGRES_ROOT}/include ..

cmake --build .
