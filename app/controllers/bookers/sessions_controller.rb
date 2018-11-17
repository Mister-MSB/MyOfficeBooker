class Bookers::SessionsController < Devise::SessionsController

  layout "login/connexion"

  def new
  end

  def create
    super
  end

  def destroy
    super
  end

end
