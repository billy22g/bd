require "test_helper"

class BaseTest < ActiveSupport::TestCase
  
  test "it is created with valid attributes" do 
    assert bases(:one).valid?
    assert_equal "Camp Pendleton", bases(:one).name
  end

end
