class AdminMailer < ApplicationMailer
  
  # Sends an email to admin when his registry is changed
  def update_email(current_admin, admin)
    # TODO use another email layout when the user is changing his own registry
    @admin = admin
    @current_admin = current_admin
    mail(to:admin.email, subject: 'Seus dados foram alterados!')
  end

end
