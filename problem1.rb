#!/usr/bin/env ruby

#----------- Problem 1 - Multiples of 3 and 5---------------------

#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

#-----------------------------------------------------------------

mod_three_results = (1..999).to_a.select{ |a| a % 3 == 0 }
mod_five_results = (1..999).to_a.select{ |a| a % 5 == 0 }

combined_unique = (mod_three_results + mod_five_results).uniq

puts combined_unique.inject{|sum,x| sum + x}
