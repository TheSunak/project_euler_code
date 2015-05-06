#!/usr/bin/env ruby

<<-PROBLEM

Problem 7 - 10001st prime

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

PROBLEM

require 'prime'

counter = 1
num = 1

while counter < 10002
  if (num.prime?)
    counter = counter + 1
  end
  num = num + 1
end

puts counter-1
puts num-1

