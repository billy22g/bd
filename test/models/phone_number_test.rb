require "test_helper"

class PhoneNumberTest < ActiveSupport::TestCase

  should belong_to(:establishment)

  should validate_presence_of(:number)
  should validate_presence_of(:description)
  should validate_presence_of(:establishment_id)

  test "it is created with valid attributes" do
    phone_numbers(:one).valid?
  end

  test "its description defaults to Phone" do 
    number = PhoneNumber.new
    assert_equal "Phone", number.description
  end

  test "it is invalid without being formatted properly" do 
    skip
  end

end
