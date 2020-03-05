# HadoopEssentials
A file documenting essentials of Hadoop

-put command allows us to upload the data from the local to the Hadoop file system. 
COMMAND:
  hadoop fs -put '<file along with full path>' <destination directory within hadoop fs>

-get command allows us to do the opposite of -put. It allows us to download the data from the Hadoop file system to the local.
The destination argument can be left blank, in which case the file gets downloaded at the Cloudera root folder.
COMMAND:
  hadoop fs -get <file name with the full hadoop fs path> <to the destination folder in local> 
