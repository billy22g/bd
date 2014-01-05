require "test_helper"

class BaseTest < ActiveSupport::TestCase
  
  test "it is created with valid attributes" do 
    base = Base.new(:name => "Valid Base")
    assert base.valid?
  end

end
