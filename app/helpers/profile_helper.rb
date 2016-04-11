module ProfileHelper
  def self.user_profile(id)
    user = User.find(id)
  end
end
