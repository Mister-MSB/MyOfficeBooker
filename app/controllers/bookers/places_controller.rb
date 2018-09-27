class Bookers::PlacesController < ApplicationController
  layout 'style_guide'

  expose :place
  expose :places, ->{Place.where(building_id: params[:building_id])}

  def show
  end

  def index
  end

end
