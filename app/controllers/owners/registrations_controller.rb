class Owners::RegistrationsController < Devise::RegistrationsController
  before_action :configure_create_permitted_parameters, only: :create

  layout "login/inscription", only: %i(new)
  layout "style_guide", only: %i(edit)

  def new
  end

  def edit
  end

  def update
    if current_owner.update(update_permitted_parameters)
      redirect_to root_path, notice: "Votre profile à bien été mis a jour"
    else
      redirect_to :back, alert: "Une erreur c'est produite"
    end
  end

  def create
    super
  end

  protected

  def configure_create_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email password password_confirmation firstname lastname])
  end

  def update_permitted_parameters
    params.require(:owner).permit(%i[email firstname lastname mobile phone sex])
  end

end
