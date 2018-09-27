class Bookers::BuildingsController < ApplicationController
  layout 'style_guide'

  expose :building
  expose :buildings, ->{get_buildings}

  def show
  end

  def index
  end

  private

  def get_buildings
    Building.where("city ~* ?", params[:building][:city])
  end

end
