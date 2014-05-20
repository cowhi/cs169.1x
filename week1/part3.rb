class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN is emty' unless isbn.size > 0
    raise ArgumentError, 'Price impossible, no presents here' unless price.is_a? Numeric and price > 0.0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string()
    return '$%.2f' % @price
  end

end

#puts "Test 1"
#book = BookInStock.new("geht", 12.12)
#puts "Test 2"
#book = BookInStock.new("geht nicht","asc")
#puts "Test 3"
#book = BookInStock.new("","")

#puts "Test 4"
#puts book.price_as_string()
