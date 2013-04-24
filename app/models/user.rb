class User < ActiveRecord::Base
  # Remember to create a migration!
  # validates :password, :length => { :maximum => 60, :too_long => "%Password is too long", :minimum => 8, :too_short => "%Password too short"}

  def self.authenticate(g_e, g_p)
    @matching_users = User.where("email = ? AND password = ?", g_e, g_p)
    if @matching_users.length == 1
      @matching_users.first
    else
      nil
    end
  end

end
