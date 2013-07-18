class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)

  home_welcome_path

end
end
