class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_user)
    root_path
  end

  def after_sign_out_path_for(_user)
    pages_splash_path
  end
end
