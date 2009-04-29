class Path < ActiveRecord::Base
  has_many :path_permissions
  has_many :roles, :through => :path_permissions
  
  def Path.user_authorized?(path_info, user_id)
    path = find_by_path(path_info)
    return true unless path
    user = User.find_by_id(user_id)
    return false unless user
    puts user.inspect
    puts path.inspect
    path.roles.find(:all, :conditions => "prohibited = 1").each do |role|
      return false if role.users.include? user
    end
    return true
  end
end
