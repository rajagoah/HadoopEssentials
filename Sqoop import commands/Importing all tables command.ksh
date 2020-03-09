#Importing multiple tables with 1 sqoop command.

#possible problems:
	#1. When using multiple mappers to leverage parallel processing, if any of the tables being imported doesn't have the PK defined, then the sqoop import will fail
	#2. There is no provision to apply the "--split-by" control argument on all tables being Brought in by the "import-all-tables" command.
	#3. For this purpose we use the "--reset-to-one-mapper" control argument

#COMMAND1
	sqoop import-all-tables \
	--connect "jdbc:mysql://quickstart.cloudera:3306/sakila" \
	--username root \
	--password cloudera \
	--warehouse-dir "SqoopImport/sakila" \
	--autoreset-to-one-mapper

	-m 2