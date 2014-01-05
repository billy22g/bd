require "test_helper"

class BaseTest < ActiveSupport::TestCase
  
  test "it is created with valid attributes" do 
    assert bases(:one).valid?
  end
end
