class PathPermission < ActiveRecord::Base
  belongs_to :path
  belongs_to :role
end
