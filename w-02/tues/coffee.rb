class Coffee
  def initialize(drink)
    @coffee = 1
    @full_amount = 1
  end

  def full?
      if @full_amount.to_i >= 1
        true
      else
        false
      end
  end

  def has_coffee?
    false
  end

    def empty?
      if @coffee.to_i <= 0
        true
      else
        false
      end
    end

end
 
