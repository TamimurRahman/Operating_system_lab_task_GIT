
echo "Provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"
read choice
case $choice in
      a) echo "Today date is : "
         date
         echo "End---"
         ;;

      b) ls;;
      c) pwd;;
      *) echo "please valid input"
esac


