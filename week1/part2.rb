def hello (name)
  return "Hello, #{name}"
end


def starts_with_consonant?(s)
  no_consonant = ["a", "e", "i", "o", "u"]
  not no_consonant.include?(s[0,1].downcase) 
end


def binary_multiple_of_4?(s)
  if /^[0,1]*$/ === s
    if s.to_i(base=2) % 4 == 0
      return true
    end
  end
  return false
end



#puts hello("Ruben")

#puts starts_with_consonant?("Ruben")
#puts starts_with_consonant?("Aksel")

#puts binary_multiple_of_4?("10101010101")
#puts binary_multiple_of_4?("100")
#puts binary_multiple_of_4?("001")
