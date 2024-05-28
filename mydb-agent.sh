#!/bin/bash

# logging functions
mydb_log(){
  echo `date --rfc-3339=seconds` [mydb-agent-main] $1
}

# main loop
while true
do
  mydb_log "start run agent cmd!"
  AGENT_CMD=`curl -s ${MYDB_CENTER_HOST}/agent/mysql/getAgentCmd`
  if [ $? -eq 0 ]; then
    bash -c "${AGENT_CMD}"
  else
    mydb_log "can't get agent cmd, please check MYDB_CENTER_HOST config!"
  fi
  sleep 60
done
