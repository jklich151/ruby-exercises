class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if @home == stark.location
      if @starks_to_protect.length < 2
        @starks_to_protect << stark
        stark.safe = true
      end
    end
  end

  def hunts_white_walkers?
    @starks_to_protect.empty?
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    stark.safe = false
    stark
  end
end
