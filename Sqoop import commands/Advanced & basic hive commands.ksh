#Basic & advanced HIVE import commands

#COMMAND1
	sqoop import \
	--connect "jdbc:mysql://quickstart.cloudera:3306/sakila" \
	--username root \
	--password cloudera \
	--table payment \
	--where "payment_id < 8000" \
	--hive-import \
	--hive-database sqoop \
	--hive-table payment \
	--hive-overwrite \
	--map-columns-hive payment_date = date, last_updated_date = date 

#COMMAND2
	sqoop import-all-tables \
	--connect "jdbc:mysql://quickstart.cloudera:3306/sakila" \
	--username root \
	--password cloudera \
	--hive-import \
	--hive-database sqoop
	

#COMMAND3
	sqoop import \
	--connect "jdbc:mysql://quickstart.cloudera:3306/sakila" \
	--username root \
	--password cloudera \
	--table payment \
	--where "YEAR(payment_date) = 2006" \
	--hive-import \
	--hive-database sqoop \
	--hive-table payment \
	--create-hive-table  