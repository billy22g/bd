require "test_helper"

class PhoneNumberTest < ActiveSupport::TestCase
  
  test "it is invalid without a number" do
    phone_numbers(:one).update(:name => nil)
    refute phone_numbers(:one).valid?
  end

end
