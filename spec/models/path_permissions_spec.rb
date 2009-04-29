require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PathPermissions do
  before(:each) do
    @valid_attributes = {
      :path => ,
      :role => ,
      :allowed => false
    }
  end

  it "should create a new instance given valid attributes" do
    PathPermissions.create!(@valid_attributes)
  end
end
