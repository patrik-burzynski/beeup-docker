#!/usr/bin/env bash

set -euo pipefail

# only start if using the packaged MSSQL database
if [ "${DATABASE_HOST}" = '127.0.0.1' ]
then
  ACCEPT_EULA=${DATABASE_ACCEPT_EULA} MSSQL_SA_PASSWORD=${DATABASE_PASSWORD} /opt/mssql/bin/sqlservr
fi
