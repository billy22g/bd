require "test_helper"

class EmailAddressTest < ActiveSupport::TestCase

  should belong_to(:establishment)

  should validate_presence_of(:email)
  should validate_presence_of(:description)
  should validate_presence_of(:establishment_id)

  test "it is created with valid attributes" do
    email_addresses(:one).valid?
  end

  test "its description defaults to Email" do 
    email = EmailAddress.new
    assert_equal "Email", email.description
  end

  test "it is invalid without being formatted properly" do 
    skip
    email_addresses(:one).email = "invalid email"
    refute email_addresses(:one).valid?
    email_addresses(:one).email = "billy@miltraveler.com"
    assert email_addresses(:one).valid?
    email_addresses(:one).email = "love@invalidemail.xy"
    refute email_addresses(:one).valid?
  end
end
