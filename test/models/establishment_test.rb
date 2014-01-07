require "test_helper"

class EstablishmentTest < ActiveSupport::TestCase

  test "it is created with valid attributes" do 
    assert establishments(:one).valid?
  end

  test "it can have bases associated with it" do 
    skip
    assert_includes establishments(:one).phone_numbers, phone_numbers(:one)
  end
end

