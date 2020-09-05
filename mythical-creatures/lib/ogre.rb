class Ogre
  attr_reader :name

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
  end

  def home
    @home
  end

  def encounter(human)

  end
end
