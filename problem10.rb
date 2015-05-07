#!/usr/bin/env ruby

<<-PROBLEM

Problem 10 - Summation of primes

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

PROBLEM

require 'prime'

puts 1.upto(2000000).select {|num| num.prime?}.inject{|sum,x| sum + x} 

