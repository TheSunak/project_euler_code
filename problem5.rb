#!/usr/bin/env ruby

<<-PROBLEM

Problem 5 - Smallest multiple

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

PROBLEM

number = 1
found_answer = false

def check_number (number)

  if  (number % 1 == 0) &&
      (number % 2 == 0) &&
      (number % 3 == 0) &&
      (number % 4 == 0) &&
      (number % 5 == 0) &&
      (number % 6 == 0) &&
      (number % 7 == 0) &&
      (number % 8 == 0) &&
      (number % 9 == 0) &&
      (number % 10 == 0) &&
      (number % 11 == 0) &&
      (number % 12 == 0) &&
      (number % 13 == 0) &&
      (number % 14 == 0) &&
      (number % 15 == 0) &&
      (number % 16 == 0) &&
      (number % 17 == 0) &&
      (number % 18 == 0) &&
      (number % 19 == 0) &&
      (number % 20 == 0)

  return true
  
  else
  
    return false
  
  end
end
 

while found_answer == false
  
   if check_number(number) == true
    puts number
    found_answer = true
   end

   number = number + 1
end


