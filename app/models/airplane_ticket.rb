class AirplaneTicket
  attr_reader :distance
  
  def initialize(distance)
    @distance = distance
  end
  
  include Carbon
  emit_as :flight do
    provide :distance_in_kilometers, :as => :distance_estimate
    provide :trips
  end
  
  def trips; 2 end
  
  def description
    "#{distance.round} mi. airplane ticket delivered"
  end
  
  def weight_in_kilograms
    1
  end
  
  def distance_in_kilometers
    distance.miles.to :kilometres
  end
  
  def emission_activity
    'produced when taking this flight in typical aircraft'
  end
end
