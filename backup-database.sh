#!/bin/bash
output="backup/database_$(date +%s).sql"
command='mysqldump "$MYSQL_DATABASE" -uroot -p"$MYSQL_ROOT_PASSWORD"'
docker-compose exec mysql sh -c "$command" > $output

if [[ "`uname`" == "Darwin"* ]] ; then
  sed -i '.bak' 1,1d $output
else
  sed -i 1,1d $output
fi
