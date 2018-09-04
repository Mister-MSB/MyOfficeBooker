class Owners::PlacesController < ApplicationController
  before_action :check_booker_redirection
  layout 'style_guide'

  expose :place
  expose :places

  def index
  end

  def new
  end

  def create
    if place.save(place_params)
      redirect_to owners_places_path, notice: "Votre salle a bien été sauvegardé."
    else
      redirect_to :back, alert: "Votre salle n'a pas pu être sauvegardé."
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def place_params
    params.require(:place).permit(
      :name, :description,
      :unit_price, :total_price, :capacity
    )
  end

end
