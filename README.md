1. See `sol_1.py`

2. SQL
	
	a. Relationship between database, schema, table and view in SQL	languages in general

		+ A database is the main container which contains all tables and views. Each database corresponds to a schema.

		+ A schema is the design of a database. It describes how each table looks like (key, attributes,etc). It shows the relationship among tables in a database, particularly how the tables connects together. 

		+ A database contains several tables, each of which usually represents an concept in the real life. A table contains row, which represent instances.

		+ A view is the result set of a stored query on the data,  which users of the database can query as a normal table. This pre-established query command is kept in the database dictionary.
	
	b. However a view is different from and more advantageous than a table in the following ways:

		+ a view can be a subset of an underlying table. Thus, it helps to limit the exposure of the underlying table to outer world. For example, a given user may be permitted to query the view, while denied access to the rest of the base table.
		
		+ a view can join and simplify multiple tables into a single virtual table.
		
		+ a view can act as an aggregated table
		
		+ a view takes very little space to store since the database contains only the definition of a view, not a copy of all the data that it presents
		
	I just list  above major benefits of views. There are still other minor benefits. 
		
 
		

	c. See `report.sql`
	
	d. See `report.sql`
3.  Bash scripting

	Both script files (`script1.sh` and `script2.sh`) for task a) and b) can be found in the same folder. Below is just 		answer for questions on _PostgreSQL DB_ and _cron_ job. Moreover, folder `bash` now contains output for task b) instead of sample data.

	a. 	To connect to PostgreSQL DB, we can first create a password/config file `.pgpass.conf` which contains the line 				`hostname:port:database:username:password`, which in our case should be `10.11.12.13:5439:zalora:helloDB:world`.
			To run `script1.sh` as a cron job every day at 2.35am create a _crontab_ file with the line: `35 02 * * * bash 					script1.sh`




