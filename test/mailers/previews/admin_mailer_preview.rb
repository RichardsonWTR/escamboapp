class AdminMailerPreview < ActionMailer::Preview

  def update_email
    AdminMailer.update_email(Admin.first,Admin.last)
  end

  def message_mail
    @params = {
      'recipient-text' => Admin.last.email,
      'subject-text' => 'some subject',
      'message-text' => 'some message..........'
    }
    AdminMailer.message_mail(Admin.first,@params)
  end
end