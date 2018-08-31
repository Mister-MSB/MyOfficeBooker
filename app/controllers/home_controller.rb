class HomeController < ApplicationController
  before_action :check_redirection, only: %w(index)

  layout "home"

  def index
  end

  private

  def check_redirection
    if current_owner.present?
      redirect_to owners_home_path
    end
  end

end
