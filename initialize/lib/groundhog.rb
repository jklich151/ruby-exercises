class Groundhog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def change_name(name)
    @name = "#{name}"
  end
end
