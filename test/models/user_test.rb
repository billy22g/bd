require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  test "it is created with valid attributes" do 
    assert users(:one).valid?
  end

  test "it is invalid without a username" do 
    users(:one).username = nil
    refute users(:one).valid?
  end

  test "it is invalid without an email" do 
    users(:one).email = nil
    refute users(:one).valid?
  end
end
