require "test_helper"

class CategoryTest < ActiveSupport::TestCase

  should have_many(:establishment_categories)
  should have_many(:establishments)
  
  should validate_presence_of(:name)

  test "it should format the name somehow" do 
    skip
  end
end
