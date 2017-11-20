class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %w[first_name last_name display_name timezone avatar
                                                         remove_avatar avatar_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: %w[first_name last_name display_name timezone
                                                                avatar remove_avatar avatar_cache])
  end
end
