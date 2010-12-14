class CoalLump
  attr_reader :weight
  
  def initialize(weight)
    @weight = weight
  end
  
  include Carbon
  emit_as :fuel_purchase do
    provide :weight, :as => :volume
    provide :fuel_type
  end
  
  def fuel_type
    'Residential Coal'
  end
  
  def description
    "#{weight.round(1)} kg. lump of coal"
  end
  
  def weight_in_kilograms
    weight
  end
  
  def emission_activity
    'released by combustion when burning this lump of coal'
  end
end
