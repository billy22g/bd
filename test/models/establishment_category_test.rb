require "test_helper"

class EstablishmentCategoryTest < ActiveSupport::TestCase

  should belong_to(:category)
  should belong_to(:establishment)
  
  should validate_presence_of(:category_id)
  should validate_presence_of(:establishment_id)
end
