class PagesController < ApplicationController
  # before_action :authenticate_user!, :only => :welcome

  def welcome
    @profiles = Profile.all
  end

end
