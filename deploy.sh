DEPLOY_SQL_CONTENT=$(cat deploy.sql)
CHANGE_LOG_ENTRY="\/**** Release : 1.0.0 change START on $(date +\%d\ %b\ \%Y\ :\ %r) ****/
${DEPLOY_SQL_CONTENT}
\/**** Release : 1.0.0 change END ****/"
echo "$CHANGE_LOG_ENTRY" > change_log_entry.txt
cat change.log >> change_log_entry.txt
mv change_log_entry.txt change.log
git config user.email "actions@github.com"
git config user.name "GitHub Actions"
git add change.log
git commit -m "Update change.log with release 1.0.0 changes"
git push
