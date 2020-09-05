class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @actions = 0
    @cranky = false
    @standing = true
    @laying = false
  end

  def shoot
    @actions += 1
    if cranky? == true || laying?
      "NO!"
    else
     "Twang!!!"
   end
  end

  def run
    @actions += 1
    if cranky? == true || laying?
      "NO!"
    else
    "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @actions >= 3
      @cranky = true
    else
      @cranky = false
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == true
    "NO!"
  else
    @actions = 0
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink
    if @laying
      "NO!"
    elsif @actions < 3
      "OUCH!"
    else
      @actions = 0
    end
  end
end
