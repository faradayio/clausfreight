class Present < ActiveRecord::Base
  include Geokit::Geocoders
  
  def item
    @item ||= build_item
  end
  
  def place
    if location.city.present? and location.state.present?
      "#{location.city}, #{location.state}"
    else
      'unrecognized location'
    end
  end
  
  def location
    @location ||= MultiGeocoder.geocode destination
  end
  
  def shipment
    @shipment ||= Shipment.new(item.weight_in_kilograms, destination)
  end
  
  def shipping_emissions
    # shipment.emission_estimate # FIXME doesn't work ATM
    100
  end
  
  private
  
  def build_item
    if niceness < 0.25
      CoalLump.new(1 + niceness * 10)
    elsif niceness < 0.5
      Television.new(niceness * 1000)
    elsif niceness < 0.75
      AirplaneTicket.new((niceness / 0.75 * 20) ** 2)
    else
      Pony.new(niceness * 500)
    end
  end
end
