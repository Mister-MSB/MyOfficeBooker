class Buildings::GetBuildingAveragePriceService
  include Service

  def initialize building:
    @building     = building
    @price_list   = building.places.order(:total_price).pluck(:total_price)
  end

  def call
    "#{@price_list.first} - #{@price_list.last}"
  end

end
