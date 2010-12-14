class Pony
  attr_reader :weight
  
  def initialize(weight)
    @weight = weight
  end
  
  include Carbon
  emit_as :pet do
    provide :species
    provide :weight
  end
  
  def species
    'horse'
  end
  
  def description
    "#{weight.round} lb. pony"
  end
  
  def weight_in_kilograms
    weight.pounds.to :kilograms
  end
  
  def emission_activity
    'produced each year by caring for and feeding this pony'
  end
end
