#!/usr/bin/env ruby

<<-PROBLEM

Problem 3 - Largest prime factor

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

PROBLEM

require 'prime'

puts Prime.prime_division(13195).to_a.uniq