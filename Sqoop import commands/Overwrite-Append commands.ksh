#Appending and overwriting control arguments

#COMMAND1 Overwriting
	sqoop import \
	—connect “jdbc:mysql://quickstart.cloudera:3306/sakila” \
	—username root \
	—password cloudera \
	—table rental \
	—target-dir “SqoopImport/sakila/rental” \
	—delete-target-dir \
	—num-mappers 1

#COMMAND2 appending
	sqoop import \
	—connect “jdbc:mysql://quickstart.cloudera:3306/sakila”
	—username root \
	—password cloudera \
	—table rental \
	—target-dir “SqoopImport/sakila/rental” \
	—append
	—num-mappers 1