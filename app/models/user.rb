class User < ActiveRecord::Base
  has_many :role_assignments
  has_many :roles, :through => :role_assignments
  
  def User.authenticate(username, password)
    return false unless username && password
    !find_by_username_and_crypted_password(username, password).nil?
  end
end
