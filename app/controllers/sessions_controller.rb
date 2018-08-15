class SessionsController < Devise::SessionsController

  layout "login"
  layout "signup"

  def new
  end

end
