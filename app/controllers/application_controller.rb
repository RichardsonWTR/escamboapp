class ApplicationController < ActionController::Base
  # Authorization gem
  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource

  # Calls the method specified in the key "with" when Pundit raises a not authorized error
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

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

  # This method is called when Pundit raises its not authorized error
  # This method prevents the user for being redirected to a 403 page
  def user_not_authorized
    flash[:alert] = t('messages.non_authorized_action')
    redirect_to(request.referrer || root_path)
  end

end
