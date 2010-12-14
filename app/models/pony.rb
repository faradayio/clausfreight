class Pony
  attr_reader :weight
  
  def initialize(weight)
    @weight = weight
  end
  
  def description
    "#{weight} lb. pony"
  end
  
  def weight_in_kilograms
    weight.pounds.to :kilograms
  end
end
