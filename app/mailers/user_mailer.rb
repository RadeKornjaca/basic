class UserMailer < ApplicationMailer
  default :from => 'mail@example.com'

  def verify_email(user)
    @user = user
    @url = request.domain
    mail(:to => user.email, :subject => 'Hello from Basic!')
  end
end
