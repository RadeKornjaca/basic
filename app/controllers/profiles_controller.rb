class ProfilesController < ApplicationController
  before_action :authenticate_user!, :only => [:show]

  def show

  end

  def mail
    @profile = Profile.find(params[:id])

    mail_worker = MailWorker.new
    mail_worker.perform("UserMailer", "welcome_email", @profile.user_id)

    redirect_to(root_path)
  end

end
