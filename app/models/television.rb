class Television
  attr_reader :cost
  
  def initialize(cost)
    @cost = cost
  end
  
  include Carbon
  emit_as :purchase do
    provide :cost
    #FIXME need to specify television here
  end
  
  def description
    "#{ActionView::Base.new.number_to_currency cost} television"
  end
  
  def weight_in_kilograms
    50
  end
  
  def emission_activity
    "produced during the manufacturing of your television"
  end
end
