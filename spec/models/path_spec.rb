require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Path do
  before(:each) do
    @valid_attributes = {
      :path => "value for path"
    }
  end

  it "should create a new instance given valid attributes" do
    Path.create!(@valid_attributes)
  end
end
