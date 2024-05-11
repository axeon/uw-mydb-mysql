#!/bin/bash
 
/mydbAgent.sh &
exec /entrypoint.sh "$@"