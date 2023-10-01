echo "1. create Student database "  
 echo "2. view database "  
 echo "3. insert a record "  
 echo "4. delete record "  
 echo "5. modify a record "  
 echo "6. result of particular student "  
 echo "7. exit"  
 echo " enter ur choice "  
 read d  
 case $d in  
 1)  
    echo " enter rollnumber of student "  
   read rn  
   echo " enter name of student "  
   read nm  
   echo " enter marks Data Structure "  
   read ds  
   echo " enter marks Cloud Computing "  
   read cc  
   echo " enter marks DBMS "  
   read dm  
   record="$rn $nm $ds $cc $dm "  
   echo $record>stud   
   ;;  
 2) echo " showing database of student"  
   cat stud ;;  
 3)   
   echo " enter rollnumber of student "  
   read rn  
   echo " enter name of student "  
   read nm  
   echo " enter marks Data Structure "  
   read ds  
   echo " enter marks Cloud Computing "  
   read cc  
   echo " enter marks DBMS "  
   read dm  
   record="$rn $nm $ds $cc $dm "  
   echo $record>>stud  
    ;;  
 4) echo " enter roll number "  
   read rn  
   grep ^$rn stud  
   if [ $? -ne 0 ]; then  
   echo "record for roll number does not exist "  
   else  
   grep -v $rn stud>>tmp  
   cp tmp stud  
   echo "deletion complete "  
   fi  
   ;;  
 5) echo " enter roll number "  
   read rn1  
   grep ^$rn stud  
   if [ $? -ne 0 ]; then  
   echo "record for roll number does not exist "  
   else  
   echo " enter roll number "  
   read rn  
   echo " enter name of student "  
   read nm  
   echo " enter marks Data Structure "  
   read ds  
   echo " enter marks Cloud Computing "  
   read cc  
   echo " enter marks DBMS "  
   read dm  
   record="$rn $nm $ds $cc $dm "  
   var=`grep -n ^$rn1 stud | cut -c 1`  
   echo $var  
   var1=`expr $var - 1`  
   head -$var1 stud>temp  
   echo $record>>temp  
   var3=`wc -l < stud`  
   var2=`expr $var3 - $var `  
   tail -$var2 stud>>temp  
   cp temp stud  
    fi  
 ;;  
 6) echo " enter roll number "  
   read rn  
   echo "printing result "  
   grep ^$rn stud  
 ;;  
 7) ;;  
 * ) echo "enter right choice"  
 esac