## Liquibase commands

-- view the list of changesets not applied to database
<em>liquibase status</em>

-- to verify the SQL before applying the changeset
<em>liquibase --changeLogFile=./db/changelog.xml updateSQL</em>

-- apply selected changeset in sequence
<em>liquibase --changeLogFile=./db/changelog.xml updateCount 1</em>

-- apply all changesets in changeLogFile to the database
<em>liquibase --changeLogFile=./db/changelog.sql update</em>
<em>liquibase --changeLogFile=./db/changelog.xml update</em>

-- Generate Change Log file
<em>liquibase --changeLogFile=./dbout/dbchangelog.yaml generateChangeLog</em>
<em>liquibase --changeLogFile=./dbout/dbchangelog.xml generateChangeLog</em>
<em>liquibase --changeLogFile=./dbout/dbchangelog.json generateChangeLog</em>
<em>liquibase --changeLogFile=./dbout/dbchangelog.mysql.sql generateChangeLog</em>

-- Take snapshot of current database state
<em>liquibase --outputFile=./dbout/dbsnapshot.xml --snapshot --snapshotFormat=xml</em>
<em>liquibase --outputFile=./dbout/dbsnapshot.yaml --snapshot --snapshotFormat=yaml</em>
<em>liquibase --outputFile=./dbout/dbsnapshot.json --snapshot --snapshotFormat=json</em>

-- Sync the DATABASECHANGELOG table with the current changelogfile object state
<em>liquibase --changeLogFile=./db/changelog.sql updateSQL</em>
<em>liquibase --changeLogFile=./db/changelog.sql changelogSyncSQL</em>
<em>liquibase --changeLogFile=./db/changelog.sql changelogSync</em>

-- Rollback selected changeset
<em>liquibase --changeLogFile=./db/changelog.sql rollbackCount 1</em>
<em>liquibase --changeLogFile=./db/changelog.sql rollbackToDate 2021-09-07</em>
<em>liquibase --changeLogFile=./db/changelog.sql rollbackToDate 2021-09-07T21:34:05</em>

-- Show the change history
<em>liquibase history</em>

-- Release liquibase changelock. Incase the change was applied halfway, liquibase will hold lock, so the lock has to be manually released to proceed
<em>liquibase --changeLogFile=./db/changelog.sql releaseLocks</em>

## Reference

<em>https://faun.pub/database-change-management-tool-liquibase-with-snowflake-overview-90c65bdc589e</em>
<em>Author: Rajiv Gupta</em>
