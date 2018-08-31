class HomeController < ApplicationController
  before_action :check_owner_redirection, only: %w(index)

  layout "home"

  def index
  end

end
