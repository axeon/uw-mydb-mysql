#!/bin/bash
 
/mydb-agent.sh &
exec /usr/local/bin/docker-entrypoint.sh "$@"