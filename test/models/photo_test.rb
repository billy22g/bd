require "test_helper"

class PhotoTest < ActiveSupport::TestCase

  should belong_to(:establishment)
  should belong_to(:user)

  should validate_presence_of(:filename)
  should validate_presence_of(:content_type)
  should validate_presence_of(:file_size)
  should validate_presence_of(:establishment_id)
  should validate_presence_of(:status)
  should validate_numericality_of(:file_size)
  should validate_numericality_of(:establishment_id)
  should validate_presence_of(:user_id)
  should validate_numericality_of(:user_id)

  test "it ensures filename is formatted properly" do 
    skip
  end

  test "it ensures content type is formatted properly" do 
    skip
  end

  test "it ensures file size is formatted properly and within certain parameters" do 
    skip
  end

  test "that status defaults to pending" do 
    assert_equal "pending", photos(:one).status
  end
end
