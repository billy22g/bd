require "test_helper"

class ReviewTest < ActiveSupport::TestCase

  # should belong_to(:user)
  # should belong_to(:establishment)

  test "it must validate the presence of a user id" do 
    reviews(:one).user_id = nil
    refute reviews(:one).valid?
  end

end
