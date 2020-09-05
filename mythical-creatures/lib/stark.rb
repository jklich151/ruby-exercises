class Stark
  attr_reader :location, :name
  attr_accessor :safe

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    @safe
  end

  def house_words
    if @safe == true
      'The North Remembers'
    else
      "Winter is Coming"
    end
  end
end
