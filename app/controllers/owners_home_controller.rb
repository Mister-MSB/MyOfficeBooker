class OwnersHomeController < ApplicationController
  layout "home"

  expose :places, ->{Place.joins(:notes).where("notes.note > ?", 4).uniq.sample(4)}

  def index
  end

end
