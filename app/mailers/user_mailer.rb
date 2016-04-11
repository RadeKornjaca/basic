class UserMailer < ApplicationMailer
  default :from => 'mail@example.com'

  def welcome_email(id)
    @user = User.find(id)
    @url = 'http://localhost:3000'
    mail(:to => @user.email, :subject => 'Hello!')
  end
end
