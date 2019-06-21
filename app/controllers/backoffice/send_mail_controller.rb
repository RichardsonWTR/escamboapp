class Backoffice::SendMailController < ApplicationController
  # Nuff said
  # POST /backoffice/sendmail
  def send_mail
    @mail_params = set_params_send_mail
    AdminMailer.message_mail(current_admin,@mail_params).deliver_now
  end

  # Retrieves the e-mail from the provided user
  # GET "/backoffice/sendmail/1"
  def get_user_mail_data
    @admin = Admin.find(params['id'])
  end

  private

  def set_params_send_mail
    params.require(:send_mail).permit('recipient-text', 'subject-text', 'message-text')
  end
end
