# !/bin/bash

#calculate sales tax of a product

#take user input
echo "Enter price of the product : "
read a

#perform tax calculation

sum=$((a * 0.09))

# Print the sales tax
echo "The sales tax is $sum"

