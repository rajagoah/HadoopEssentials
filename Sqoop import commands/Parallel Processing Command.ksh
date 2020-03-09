#Parallel processing commands

#While importing CUSTOMER table, if we have the CUST_ID as the PK

#The below command will overwrite the existing customer data in the "SqoopImport/customer" path and use CUST_ID to split the load across its 2 mappers

COMMAND1—> 
	sqoop import \
	--connect "jdbc:mysql:/quickstart.cloudera:3306/customer" \
	--username root \
	--password cloudera \
	--table customer \
	--target-dir "SqoopImport/customer" \
	--delete-target-dir \
	-m 2

#While importing CUSTOMER table, if we DONT have the CUST_ID as the PK. We designate some other NOT NULLABLE column as a "--split-by" column. Sqoop will then use this column to split the load of records across. For illustration suppose that other column in ADDRESS_ID

#The below command will overwrite the existing customer data in the "SqoopImport/customer" path and use CUST_ID to split the load across its 2 mappers

COMMAND1—> 
	sqoop import \
	--connect "jdbc:mysql:/quickstart.cloudera:3306/customer" \
	--username root \
	--password cloudera \
	--table customer \
	--target-dir "SqoopImport/customer" \
	--split-by ADDRESS_ID \
	--delete-target-dir \
	-m 2