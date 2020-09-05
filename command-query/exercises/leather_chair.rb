class LeatherChair

  def initialize
    @faded = false
  end

  def faded?
    @faded || "New chairs are NOT faded."
  end
end
