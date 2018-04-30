
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

reduce(+,map(x -> x^2, 1:100)) # sum of squares in 1:100

(reduce(+,1:100))^2 # square of sum 1:100

# Difference
- reduce(+,map(x->x^2, 1:100)) + (reduce(+,1:100))^2

