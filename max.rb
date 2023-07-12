# 1. Write a function:
# function solution(A) that, 
# given an array A consisting of N integers, return the maximum among all integers which are multiples of 4.For example, given array A as follows:[-6, -91, 1011, -100, 84, -22, 0, 1, 473]the function should return 84.


def max_multiples(array,num = 4)

    multiples_array = array.filter { |value| value % num == 0 }
    max_multiple = multiples_array.max
end

arry = [-6, -91, 1011, -100, 84, -22, 0, 1, 473]
puts max_multiples(arry)