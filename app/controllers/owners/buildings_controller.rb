class Owners::BuildingsController < ApplicationController
  before_action :check_owner_redirection
  layout 'style_guide'

  expose :buildings, ->{current_owner.buildings.all}
  expose :building,  scope: ->{current_owner.buildings}

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
      :name, :street, :zipcode, :city, :country, :complement, :image
    )
  end

  def check_owner_redirection
    if current_owner.blank?
      redirect_to new_owner_registration_path, alert: "Veuillez vous inscrire afin de continuer"
    end
  end

end
