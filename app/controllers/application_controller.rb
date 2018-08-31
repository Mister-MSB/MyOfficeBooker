class ApplicationController < ActionController::Base

private

def check_owner_redirection
  if current_owner.present?
    redirect_to owners_home_path
  end
end

def check_booker_redirection
  if current_booker.present?
    redirect_to root_path
  end
end

end
