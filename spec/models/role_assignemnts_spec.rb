require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RoleAssignemnts do
  before(:each) do
    @valid_attributes = {
      :user => ,
      :role => 
    }
  end

  it "should create a new instance given valid attributes" do
    RoleAssignemnts.create!(@valid_attributes)
  end
end
