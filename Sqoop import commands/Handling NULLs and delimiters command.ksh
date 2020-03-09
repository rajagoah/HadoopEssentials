#Handling NULLs and delimiters

COMMAND:
	sqoop import \
	--connect "jdbc:mysql://quickstart.cloudera:3306/sakila" \
	--username root \
	--password cloudera \
	--table customer \
	--target-dir "SqoopImport/sakila" \
	--delete-target-dir \
	--null-string "NA" \
	--null-non-string 0 \
	--fields-terminated-by "," \
	--lines-terminated-by "\n" \
	--optionally-enclosed-by "\"" \
	-m 2

