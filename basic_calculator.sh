
!/bin/bash
echo "Welcome to the Calculator"
sum=0
i="y"

while [ $i = "y" ]
do

echo "Enter Choice"
echo "+.Addition"
echo "-.Subtraction"
echo "*.Multiplication"
echo "/.Division"
echo "%.Module"
echo "Enter choice"
read ch

echo "enter first number"
read n1
echo "enter second number"
read n2

case $ch in
"+")sum=$(echo " $n1 + $n2" | bc -l)
echo "Addition is =" $sum;;
"-")sum=$(echo "$n1 - $n2" | bc -l)
echo "Sub is =" $sum;;
"*")sum=$(echo "$n1 * $n2" | bc -l)
echo "Mul is =" $sum;;
"/")sum=$(echo "$n1 / $n2" | bc -l)
echo "div is =" $sum;;
"%")sum=$(echo " $n1 * $n2 / 100" | bc -l)
echo "Mod is =" $sum;;
*)echo "invalid choice ! (Invalid Symbol)"
esac
echo "Do you want to continue ? (Yes:y / No:n)"
read i
if [ $i != "y" ]
then
exit
fi
done