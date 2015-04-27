#!/usr/bin/env ruby

#----------- Problem 2 - Multiples of 3 and 5---------------------

#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

#-----------------------------------------------------------------

#define the Fibonacci array to start
fib_array = [1,2]

#This will keep track of the index
index = 1

#While the last value is less than 4M run the sequence
while fib_array.last <= 4000000
	#store the value at the end of the array
	fib_array.push(fib_array[index-1] + fib_array[index])
	index = index + 1

end

#The last value will be over 4M, so remove it with pop
fib_array.pop

#Find the evens and then sum them
puts fib_array.select { |num|  num.even?  }.inject{|sum,x| sum + x} 