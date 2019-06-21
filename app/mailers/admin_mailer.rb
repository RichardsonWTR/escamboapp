class AdminMailer < ApplicationMailer
  
  # Sends an email to admin when his registry is changed
  def update_email(current_admin, admin)
    # TODO use another email layout when the user is changing his own registry
    @admin = admin
    @current_admin = current_admin
    mail(to:admin.email, subject: t('mails.admin.subject'))
  end

  # Send the e-mail typed by the user in the Admins list
  def message_mail(current_admin,params)
    @current_admin = current_admin
    @recipient = params['recipient-text']
    @subject = params['subject-text']
    @message = params['message-text']
    mail(to: @recipient, subject: @subject)
  end

end
