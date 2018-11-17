class Bookers::PlacesController < ApplicationController
  layout 'application/booker'

  expose :place
  expose :places, ->{Place.where(building_id: params[:building_id])}

  def show
  end

  def index
  end

end
