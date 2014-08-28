1. See sol_1.py

2. SQL
a) A database is  the main container which contains all data and log files. 
A schema can be thought of as a way to divide a database into groups of objects based on logical relations between them. In other words, a schema is a blue print of how data is organized in a database (http://en.wikipedia.org/wiki/Database_schema). A schema can include several tables and other stuffs of a database such as index, etc.

A table is the basic data storage unit. Data is stored in rows and columns.
A view is the result set of a stored query on the data,  which users of the database can query as a normal Table. This pre-established query command is kept in the database dictionary. 
b) However a view is different from and more advantageous than a table in the following ways:
	+ a view can be a subset of an underlying table. Thus, it helps to limit the exposure the underlying table to outer world. For example,  a given user may be permitted to query the view, while denied access to the rest of the base table.
	+ a view can join and simplify multiple tables into a single virtual table.
	+ views can act as aggregated tables
	+ views take very little space to store since the database contains only the definition of a view, not a copy of all the data that it presents

c) and d) See report.sql


3)  Bash scripting
Both script files (script1.sh and script2.sh) for a) and b) can be found in the same folder. Below is just answer for questions on PostgreSQL DB and cron job

a) 
To connect to PostgreSQL DB, we can first create a password/config file like .pgpass.conf which contains the line
hostname:port:database:username:password
which in our case should be
10.11.12.13:5439:zalora:helloDB:world

To run script1.sh as a cron job every day at 2.35am create a crontab file with the line:
35 02 * * * bash script1.sh



