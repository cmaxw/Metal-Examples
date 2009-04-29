class Role < ActiveRecord::Base
  has_many :path_permissions
  has_many :role_assignments
  has_many :paths, :through => :path_permissions
  has_many :users, :through => :role_assignments
end
