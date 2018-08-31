class Owners::SessionsController < Devise::SessionsController

  layout "login"

  def new
  end

  def create
    super
  end

  def destroy
    super
  end

end
