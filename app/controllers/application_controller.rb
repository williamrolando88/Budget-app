class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(_user)
    pages_splash_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name])
  end

  protect_from_forgery

  def authenticate_user!(*_source)
    redirect_to pages_splash_path unless user_signed_in?
  end
end
