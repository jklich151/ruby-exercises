class Werewolf
  attr_reader :name, :location

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @wolf = false
  end

  def human?
    @human
  end

  def change!
    @human = !@human
    @wolf = !@wolf
  end

  def wolf?
    @wolf
  end
end
