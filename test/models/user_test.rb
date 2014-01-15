require "test_helper"

class UserTest < ActiveSupport::TestCase

  should belong_to(:base)
  should have_many(:reviews)
  should have_many(:photos)

  should validate_presence_of(:username)
  should validate_presence_of(:email)
  should validate_uniqueness_of(:username)
  
  test "it is created with valid attributes" do 
    assert users(:one).valid?
  end

  test "it can have reviews for establishments" do 
    assert_includes users(:one).reviews, reviews(:one)
    assert_includes users(:one).reviews, reviews(:three)
  end

  test "that a users email must be in a valid format" do 
    skip
  end
end
