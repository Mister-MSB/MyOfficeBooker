class Owners::BuildingsController < ApplicationController
  before_action :check_booker_redirection
  layout 'style_guide'

  expose :building
  expose :buildings

  def index
  end

  def new
  end

  def create
    if building.save(building_params)
      redirect_to owners_buildings_path, notice: "Votre établissement a bien été sauvegardé."
    else
      redirect_to :back, alert: "Votre établissement n'a pas pu être sauvegardé."
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def building_params
    params.require(:building).permit(
      :name, :lat, :long,
      :street, :zipcode, :city, :country, :complement
    )
  end

end
