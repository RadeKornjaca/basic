class Profile < ActiveRecord::Base
  belongs_to :user

  def send_verify_email(user)
    mail_worker = MailWorker.new
    mail_worker.perform("UserMailer", "verify_email", user)
  end

end
