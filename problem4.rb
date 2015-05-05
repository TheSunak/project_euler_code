#!/usr/bin/env ruby

<<-PROBLEM

Problem 4 - Largest palindrome product

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

PROBLEM

array_index = 0

three_digit_numbers = (100..999).to_a

three_digit_combinations = three_digit_numbers.combination(2).to_a

products = []


def check_palindrom (test_number)
    
  test_number_string = test_number.to_s

  if (test_number_string == test_number_string.reverse)
    return true
 
 else
    return false

  end

end


three_digit_combinations.each do |combo|
  
  if check_palindrom(three_digit_combinations[array_index][0]*three_digit_combinations[array_index][1]) == true
    
    products.push(three_digit_combinations[array_index][0]*three_digit_combinations[array_index][1])

  end

  array_index = array_index + 1
end

  puts products.max

