class BackofficeController < ApplicationController
  before_action :authenticate_admin!
  layout "backoffice"

  # Defines the current user for Pundit
  def current_user
    current_admin
  end
end