#!/usr/bin/env ruby

<<-PROBLEM

Problem 9 - Special Pythagorean triplet

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a**2 + b**2 = c**2
For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

PROBLEM

def solve
  1.upto(1000) do |c|
    1.upto(c) do |b|
      1.upto(b) do |a|
        return a*b*c if (a**2 + b**2 == c**2) && (a+b+c==1000)
      end
    end
  end
end

puts solve