require "test_helper"

class WebsiteTest < ActiveSupport::TestCase

  should belong_to(:establishment)

  should validate_presence_of(:url)
  should validate_presence_of(:description)
  should validate_presence_of(:establishment_id)

  test "its description defaults to Website" do 
    website = Website.new
    assert_equal "Website", website.description
  end

  test "it is invalid without being associated with an establishment" do 
    websites(:one).update(:establishment_id => nil)
    refute websites(:one).valid?
  end

  test "it ensures the url is formatted properly" do 
    skip
  end
end
