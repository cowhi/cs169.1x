class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN is emty' unless isbn.size > 0
    raise ArgumentError, 'Price impossible, no presents here' unless price.is_a? Numeric and price > 0.0
    @isbn = isbn
    @price = price
  end

  # setter
  def isbn=(value)
    raise ArgumentError, 'ISBN is emty' unless value.size > 0
    @isbn = value
  end
  
  def price=(value)
    raise ArgumentError, 'Price impossible, no presents here' unless value.is_a? Numeric and value > 0.0
    @price = value
  end

  # getter
  def isbn
    @isbn
  end

  def price
    @price
  end


  # functions
  def price_as_string()
    return '$%.2f' % @price
  end

end

#puts "Test 1"
#book1 = BookInStock.new("geht", 12.12)
#puts book1.isbn
#puts book1.price
#puts "Test 2"
#book2 = BookInStock.new("geht nicht","asc")
#puts book2.isbn
#puts book2.price
#puts "Test 3"
#book = BookInStock.new("","")

#puts "Test 4"
#puts book1.price_as_string()

#puts "Test 5"
#book1.price=(99.99)
#puts book1.price_as_string()
#book1.isbn=("newstring")
#puts book1.isbn
