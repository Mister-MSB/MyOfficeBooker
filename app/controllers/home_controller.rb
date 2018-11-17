class HomeController < ApplicationController
  before_action :check_owner_redirection, only: %w(index)

  layout "home/booker_home"

  expose :buildings, ->{Building.all.sample(6)}

  def index
  end

end
