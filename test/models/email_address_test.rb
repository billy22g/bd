require "test_helper"

class EmailAddressTest < ActiveSupport::TestCase

  should belong_to(:establishment)

  should validate_presence_of(:email)
  should validate_presence_of(:description)
  should validate_presence_of(:establishment_id)

  test "it is invalid without an email" do
    email_addresses(:one).update(:email => nil)
    refute email_addresses(:one).valid?
  end

  test "it is invalid without a description" do 
    email_addresses(:one).update(:description => nil)
    refute email_addresses(:one).valid?
  end

  test "its description defaults to Email" do 
    email = EmailAddress.new
    assert_equal "Email", email.description
  end

  test "it is invalid without belonging to an establishment" do 
    email_addresses(:one).update(:establishment_id => nil)
    refute email_addresses(:one).valid?
  end

  test "it is invalid without being formatted properly" do 
    skip
  end
end
