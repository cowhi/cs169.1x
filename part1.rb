def sum(integer_array)
  integer_array.inject(0, :+)
end

def max_2_sum(integer_array)
  if integer_array.size == 0 
    return 0
  elsif integer_array.size == 1 
    return integer_array[0]
  else
    
    integer_array.sort!
    return integer_array[integer_array.size-1] + integer_array[integer_array.size-2]
  end
end

def sum_to_n?(integer_array, integer_n)
  integer_array.each_with_index { |value1, index1|
    integer_array.each_index{  |value2, index2|
      if index1 != index2
        if value1 + value2 == integer_n
          return true
        end
      end
    }
  }
  return false
end

test1 = [1, 2, 3, 4]
test2 = []
test3 = [1]
test4 = [1,2]
test5 = [1,3,3]

puts sum(test1)
puts sum(test2)

puts max_2_sum(test1)
puts max_2_sum(test2)
puts max_2_sum(test3)
puts max_2_sum(test4)
puts max_2_sum(test5)

puts sum_to_n?(test1, 7)
puts sum_to_n?(test2, 7)
puts sum_to_n?(test3, 7)
puts sum_to_n?(test4, 7)
puts sum_to_n?(test5, 7)
