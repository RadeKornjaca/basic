class ProfilesController < ApplicationController
  before_action :authenticate_user!, :only => [:show]

  def show

  end

  def verify
    @profile = Profile.find(params[:profile_id])

    @profile.send_verify_email(@profile.user)

    head :ok
  end

end
