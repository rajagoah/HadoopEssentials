#Import commands

#COMMAND1 with target-dir control argument
	sqoop import \
	—connect “jdbc:mysql://quickstart.cloudera:3306/sakila” \
	—username root \
	—password cloudera \
	—table rental \ 
	—target-dir “SqoopImport/sakila” \
	—m 1

#COMMAND2 with warehouse-dir control argument
	sqoop import \
	—connect “jdbc:mysql://quickstart.cloudera:3306/sakila” \
	—username root \
	—password cloudera \
	— table rental \ 
	—warehouse-dir “SqoopImport” \
	—m 1