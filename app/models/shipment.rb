class Shipment
  attr_reader :weight
  
  include Carbon

  emit_as :shipment do
    provide :weight
    provide :package_count
    provide :carrier, :key => :name
    provide :origin, :as => :origin_zip_code
    provide :destination, :as => :destination_zip_code
    provide :mode_name, :as => :mode
    provide :segment_count
  end
  
  def initialize(weight, destination)
    @weight = weight
    @destination = destination
  end
  
  def package_count; 1 end
  def carrier; 'Federal Express' end
  def mode_name; 'Air' end
  def segment_count; 1 end
  def origin; '0,0' end
end
