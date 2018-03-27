echo "Enter your choice: \n 1) To copy the contents of a  file in another \n 2) To move one file to anoher \n 3) To display the contents of a file \n 4) To find the difference between  two files \n 5) To remove a file"
	read l
	case $l in
	
	1)
	
	echo "Enter the name of the source and destination files"
	read a;b
	cp()
	{
	    cat $1|cp $a $b
	 } c=$(cp $1)
	;;
	




	 2)
	 
	 echo"Enter the names of the source and destination files"
	read a;b
	mv()
	 {
	  cat $1|mv $a $b
	} m=$(cp$1)
	;;
	
	
	
	
	
	  3)
	  
	   echo"Enter the name of the file to be displayed"
           read a
           ca()
	   { 
	    cat $a		      
	   } a=$(mv$1)
	   ;;
		      
		      
		      
		      
		    
		      
         4)
	 
	   echo"Enter the names of the files"
	   read a;b
	   di()
	   {
       	   cat $1|diff $a $b
	   } d=$(diff $a $b)
	   ;;
	   
	   
	   
	   
	   
	   
	5)
	
	  echo"Enter the name of the file to be removed"
	  read a
	  r()
	  {
    	   cat $1|rm $a
	  } r=$(rm $a)
	  ;;
	  *)
	  echo"Invalid Choice"












echo "Enter word or phrase to be searched"
read n
for i in /
do
	find / "$n"

done
