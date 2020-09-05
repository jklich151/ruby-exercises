class Wizard
  attr_reader :name, :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(power)
    "sudo " + power
  end

  def rested?
    if @cast_count < 3
      @rested = true
    else
      @rested = false
    end
  end

  def cast
    if @rested
      @cast_count += 1
      "MAGIC MISSLE!"
    else
      "TOO TIRED"
    end
  end
end
