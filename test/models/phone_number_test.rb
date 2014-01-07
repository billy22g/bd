require "test_helper"

class PhoneNumberTest < ActiveSupport::TestCase
  
  test "it is invalid without a number" do
    phone_numbers(:one).update(:number => nil)
    refute phone_numbers(:one).valid?
  end

  test "it is invalid without belonging to an establishment" do 
    phone_numbers(:one).update(:establishment_id => nil)
    refute phone_numbers(:one).valid?
  end

end
