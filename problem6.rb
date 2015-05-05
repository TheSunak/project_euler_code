#!/usr/bin/env ruby

<<-PROBLEM

Problem 6 - Sum square difference

The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

PROBLEM

def sum_of_squares (number)

  count = 1
  sum = 0

  while count < (number + 1)
    sum = sum + count**2
    count = count + 1
  end

  return sum

end

def square_of_the_sum (number)
  count = 1
  sum = 0

  while count < (number + 1)
    sum = sum + count
    count = count + 1
  end

  return sum**2

end





puts (sum_of_squares(100)-square_of_the_sum(100)).abs