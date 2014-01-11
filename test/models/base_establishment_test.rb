require "test_helper"

class BaseEstablishmentTest < ActiveSupport::TestCase

  should belong_to(:base)
  should belong_to(:establishment)
    
  should validate_presence_of(:base_id)
  should validate_presence_of(:establishment_id)
  should validate_numericality_of(:base_id)
  should validate_numericality_of(:establishment_id)
end
