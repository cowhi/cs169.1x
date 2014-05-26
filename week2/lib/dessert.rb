class Dessert

  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end

  # setter
  def name=(value)
    raise ArgumentError, 'Name is emty' unless value.size > 0
    @name = value
  end

  def calories=(value)
    raise ArgumentError, 'Cheating on calories...' unless value.is_a? Numeric and value > 0.0
    @calories = value
  end

  # getter
  def name
    @name
  end

  def calories
    @calories
  end



  def healthy?
    # your code here
    @calories < 200
  end

  def delicious?
    # your code here
    @flavor != "licorice"  
  end

end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
    super("#{flavor} jelly bean", 5)
    @flavor = flavor
  end

  #setter
  def flavor=(value)
    raise ArgumentError, 'Flavor is emty' unless value.size > 0
    @flavor = value
  end

  # getter
  def flavor
    @flavor
  end

end

