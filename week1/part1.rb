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
  if integer_array.size == 0 or integer_array.size == 1
    return false
  end
  integer_array.each_with_index { |value1, index1|
    integer_array.each_index{  |value2, index2|
      if index1 != index2
        #puts "#{value1} + #{value2} = %d", value1 + value2
        if value1 + value2 == integer_n
          return true
        end
      end
    }
  }
  return false
end

#puts sum_to_n?([1],1)
#puts sum_to_n?([1,2,3,4,5], 5)
