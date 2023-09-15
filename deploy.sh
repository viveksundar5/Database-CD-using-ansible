DEPLOY_SQL_CONTENT=$(cat deploy.sql)
CHANGE_LOG_ENTRY="/**** Release : 1.0.1 change START on $(date +\%d\ %b\ \%Y\ :\ %r) ****/
${DEPLOY_SQL_CONTENT}
/**** Release : 1.0.1 change END ****/"
echo "$CHANGE_LOG_ENTRY" > change_log_entry.txt
cat change.log >> change_log_entry.txt
mv change_log_entry.txt change.log
