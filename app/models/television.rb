class Television
  attr_reader :cost
  
  def initialize(cost)
    @cost = cost
  end
  
  include Carbon
  emit_as :purchase do
    provide :cost
    provide :industry
  end
  
  def industry
    334310
  end
  
  def description
    "$#{cost.round} television"
  end
  
  def weight_in_kilograms
    50
  end
  
  def emission_activity
    "produced during the manufacturing of your television"
  end
end
