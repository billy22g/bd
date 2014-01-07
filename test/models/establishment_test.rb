require "test_helper"

class EstablishmentTest < ActiveSupport::TestCase

  test "it is created with valid attributes" do 
    assert establishments(:one).valid?
  end

  test "it can have phone numbers associated with it" do 
    assert_includes establishments(:one).phone_numbers, phone_numbers(:one)
  end
end

