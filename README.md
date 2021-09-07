## Liquibase commands

-- view the list of changesets not applied to database
<br>
<em>liquibase status</em>

-- to verify the SQL before applying the changeset
<br>
<em>liquibase --changeLogFile=./db/changelog.xml updateSQL</em>
<br>

-- apply selected changeset in sequence
<br>
<em>liquibase --changeLogFile=./db/changelog.xml updateCount 1</em>
<br>

-- apply all changesets in changeLogFile to the database
<br>
<em>liquibase --changeLogFile=./db/changelog.sql update</em>
<br>
<em>liquibase --changeLogFile=./db/changelog.xml update</em>
<br>

-- Generate Change Log file
<br>
<em>liquibase --changeLogFile=./dbout/dbchangelog.yaml generateChangeLog</em>
<br>
<em>liquibase --changeLogFile=./dbout/dbchangelog.xml generateChangeLog</em>
<br>
<em>liquibase --changeLogFile=./dbout/dbchangelog.json generateChangeLog</em>
<br>
<em>liquibase --changeLogFile=./dbout/dbchangelog.mysql.sql generateChangeLog</em>
<br>

-- Take snapshot of current database state
<br>
<em>liquibase --outputFile=./dbout/dbsnapshot.xml --snapshot --snapshotFormat=xml</em>
<br>
<em>liquibase --outputFile=./dbout/dbsnapshot.yaml --snapshot --snapshotFormat=yaml</em>
<br>
<em>liquibase --outputFile=./dbout/dbsnapshot.json --snapshot --snapshotFormat=json</em>
<br>

-- Sync the DATABASECHANGELOG table with the current changelogfile object state
<br>
<em>liquibase --changeLogFile=./db/changelog.sql updateSQL</em>
<br>
<em>liquibase --changeLogFile=./db/changelog.sql changelogSyncSQL</em>
<br>
<em>liquibase --changeLogFile=./db/changelog.sql changelogSync</em>
<br>

-- Rollback selected changeset
<br>
<em>liquibase --changeLogFile=./db/changelog.sql rollbackCount 1</em>
<br>
<em>liquibase --changeLogFile=./db/changelog.sql rollbackToDate 2021-09-07</em>
<br>
<em>liquibase --changeLogFile=./db/changelog.sql rollbackToDate 2021-09-07T21:34:05</em>
<br>

-- Show the change history
<br>
<em>liquibase history</em>
<br>

<br>
-- Release liquibase changelock. Incase the change was applied halfway, liquibase will hold lock, so the lock has to be manually released to proceed
<br>
<em>liquibase --changeLogFile=./db/changelog.sql releaseLocks</em>
<br>

## Reference

<em>https://faun.pub/database-change-management-tool-liquibase-with-snowflake-overview-90c65bdc589e</em>
<br>
<em>Author: Rajiv Gupta</em>
<br>
