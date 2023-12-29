class ApplicationController < ActionController::Base
  before_action :configure_permittted_parameters, if: :device_controller?
  
  protected
  def configure_permitted_parameters
    device_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
