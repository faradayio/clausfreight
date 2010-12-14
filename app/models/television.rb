class Television
  attr_reader :cost
  
  def initialize(cost)
    @cost = cost
  end
  
  def description
    "$#{cost} flat-screen television"
  end
  
  def weight_in_kilograms
    50
  end
end
