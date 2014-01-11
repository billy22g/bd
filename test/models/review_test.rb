require "test_helper"

class ReviewTest < ActiveSupport::TestCase

  should belong_to(:user)
  should belong_to(:establishment)

  should validate_presence_of(:user_id)
  should validate_presence_of(:establishment_id)
  should validate_presence_of(:rating)
  should validate_numericality_of(:rating)
  should ensure_inclusion_of(:rating).in_range(1..5)
  should ensure_length_of(:text).is_at_most(500)

  test "it must validate the presence of a user id" do 
    reviews(:one).user_id = nil
    refute reviews(:one).valid?
  end

  test "a rating must be between 1 and 5" do 
    reviews(:one).rating = 6
    refute reviews(:one).valid?
    reviews(:one).rating = 0
    refute reviews(:one).valid?
  end

  test "a user cannot leave multiple reviews for a single establishment" do
    skip
  end

end
