1. Write an awk command to delete all the blank lines from a files.

cs2016a206@user:~$ cat sample.txt
Hi there
this is unix sample file






hi

cs2016a206@user:~$ awk 'NF' sample.txt
Hi there
this is unix sample file
hi
-----------------------------------------------------------------------------

2. Print only the odd numbers of a file

cs2016a206@user:~$ awk 'NR%2==1' emp.lst 

23293|saksena|manager|accounts|12/02/98|45000
37480|sai|manager|marketing|18/09/90|90000
34793|pavan|director|sales|16/09/10|438734
1001|Aemen|Manager|70000|9203451209
1003|Cathy|Head_staff|50000|9845367130
1005|Eddy|manager|70000|9206678099
1007|Gary|Staff|60000|9934560287
1009|Inam|Staff|59000|7890452316
----------------------------------------------------------------------------

3. Write an awk command to print the last field without knowing the number of fields of a file


cs2016a206@user:~$ awk -F "|" '{print $NF}' emp.lst

45000
67000
90000
43874
438734
Phone_number
9203451209
8892396232
9845367130
7856029121
9206678099
7856463902
9934560287
8894589012
7890452316
9873510342
----------------------------------------------------------------------------

4. write the equivalent awk command for "head -n 5 filename"

cs2016a206@user:~$ head -n 5 emp.lst

23293|saksena|manager|accounts|12/02/98|45000
27367|saxena|director|sales|13/08/56|67000
37480|sai|manager|marketing|18/09/90|90000
76483|hari|CEO|marketing|24/07/80|43874
34793|pavan|director|sales|16/09/10|438734

cs2016a206@user:~$ awk -F "|" 'NR==1,NR==5{print $0}' emp.lst

23293|saksena|manager|accounts|12/02/98|45000
27367|saxena|director|sales|13/08/56|67000
37480|sai|manager|marketing|18/09/90|90000
76483|hari|CEO|marketing|24/07/80|43874
34793|pavan|director|sales|16/09/10|438734
----------------------------------------------------------------------------

5. write the equivalent awk command for "sed -n '5,10p' filename"

cs2016a206@user:~$ sed -n '5,10p' emp.lst

34793|pavan|director|sales|16/09/10|438734
emp_id|Name|Designation|Salary|Phone_number
1001|Aemen|Manager|70000|9203451209
1002|Ben|staff|59000|8892396232
1003|Cathy|Head_staff|50000|9845367130
1004|Dom|Director|80000|7856029121

cs2016a206@user:~$ awk -F "|" 'NR==5,NR==10{print $0}' emp.lst

34793|pavan|director|sales|16/09/10|438734
emp_id|Name|Designation|Salary|Phone_number
1001|Aemen|Manager|70000|9203451209
1002|Boruto|staff|59000|8892396232
1003|Cathy|Head_staff|50000|9845367130
------------------------------------------------------------------------------

6. write the equivalent awk command for "tail +7 filename"

cs2016a206@user:~$ tail +7 emp.lst

1001|Aemen|Manager|70000|9203451209
1002|Boruto|staff|59000|8892396232
1003|Cathy|Head_staff|50000|9845367130
1004|Dom|Director|80000|7856029121
1005|Eddy|manager|70000|9206678099
1006|Farooq|Director|80000|7856463902
1007|Gary|Staff|60000|9934560287
1008|Harry|Staff|60000|8894589012
1009|Inam|Staff|59000|7890452316
1010|Jake|Staff|60000|9873510342

cs2016a206@user:~$ awk -F "|" 'NR==7,NR==$NF{print $0}' emp.lst

1001|Aemen|Manager|70000|9203451209
1002|Boruto|staff|59000|8892396232
1003|Cathy|Head_staff|50000|9845367130
1004|Dom|Director|80000|7856029121
1005|Eddy|manager|70000|9206678099
1006|Farooq|Director|80000|7856463902
1007|Gary|Staff|60000|9934560287
1008|Harry|Staff|60000|8894589012
1009|Inam|Staff|59000|7890452316
1010|Jake|Staff|60000|9873510342
--------------------------------------------------------------------------------
