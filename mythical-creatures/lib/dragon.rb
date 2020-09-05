class Dragon
  attr_reader :name, :rider, :color, :meal_count, :hungry

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @meal_count = 0
    @hungry = true
  end

  def hungry?
    hungry
  end

  def eat
    @meal_count += 1
    @hungry = false if meal_count == 3
  end
end
