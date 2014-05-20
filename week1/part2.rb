def hello (name)
  return "Hello, #{name}"
end


def starts_with_consonant?(s)
  if s.size > 0 and /^[a-zA-Z]*$/ === s
    no_consonant = ["a", "e", "i", "o", "u"]
    return !(no_consonant.include?(s[0,1].downcase)) 
  else 
    return false
  end
end


def binary_multiple_of_4?(s)
  if /^[0,1]*$/ === s and s.size > 0
    if s.to_i(base=2) % 4 == 0
      return true
    end
  end
  return false
end



puts hello("Ruben")

puts starts_with_consonant?("Ruben")
puts starts_with_consonant?("Aksel")
puts starts_with_consonant?("")
puts starts_with_consonant?("#foo")

puts binary_multiple_of_4?("10101010101")
puts binary_multiple_of_4?("100")
puts binary_multiple_of_4?("abcd")
puts binary_multiple_of_4?("")
puts binary_multiple_of_4?("#foo")
