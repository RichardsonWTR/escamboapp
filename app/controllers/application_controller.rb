class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource

  private
  
  # The page layout will be defined by this method, depending on the Controller type
  # (if it's a Devise Controller or not)
  def layout_by_resource
    if devise_controller? # Devise helper that returns true if the Controller it's a Devise
      "backoffice_devise"
    else
      "application"
    end
  end

end
