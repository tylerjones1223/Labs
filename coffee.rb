class Coffee
  def initialize(drink)
    @coffee = 1
    @full_amount = 1
  end

  def full?
      if @coffee.to_i >= 0.98
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
