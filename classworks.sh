echo "please enter the first number"
declare -i num1
read num1
echo "please enter the second number"
declare -i num2
read num2
if (($(($((num1 * num2))%2)) == 0)); then
 echo "the product is even"
else
 echo "the product is odd"
fi