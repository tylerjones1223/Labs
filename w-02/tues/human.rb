class Human
  def initialize(name)
    @name = name
    @alertness = 0.0
    @flavor = Coffee.new(name)
    @coffee = 0
  end

  def alertness
    @alertness
  end

  def has_coffee?()
    false
  end

  def needs_coffee?()
    true
  end

  def drink!()
    @alertness += 0.31
    @coffee -= 0.34
    @full_amount -= 0.34
  end

  def buy(type)
    @flavor
    @coffee += 1 #add tsmf to some kind of array or some shit
  end

end
