class AirplaneTicket
  attr_reader :distance
  
  def initialize(distance)
    @distance = distance
  end
  
  def description
    "#{distance} mi. airplane ticket"
  end
  
  def weight_in_kilograms
    1
  end
end
