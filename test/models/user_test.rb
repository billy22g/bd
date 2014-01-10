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

  test "it has a unique username" do 
    user = User.create(username: "Same Username", email: "email@example.com", base: bases(:one))
    invalid_user = User.new(username: "Same Username", email: "anotheremail@example.com", base: bases(:one))
    refute invalid_user.valid?
  end

  test "that a users email must be in a valid format" do 
    skip
  end
end
