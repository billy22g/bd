require "test_helper"

class WebsiteTest < ActiveSupport::TestCase
  test "it is invalid without a url" do
    websites(:one).update(:url => nil)
    refute websites(:one).valid?
  end

  test "it is invalid without a description" do 
    websites(:one).update(:description => nil)
    refute websites(:one).valid?
  end

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
