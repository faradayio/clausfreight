class CoalLump
  attr_reader :weight
  
  def initialize(weight)
    @weight = weight
  end
  
  def description
    "#{weight} kg. lump of coal"
  end
  
  def weight_in_kilograms
    weight
  end
end
