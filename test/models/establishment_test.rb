require "test_helper"

class EstablishmentTest < ActiveSupport::TestCase

  should have_many(:websites)
  should have_many(:phone_numbers)
  should have_many(:email_addresses)
  should have_many(:reviews)

  should have_many(:base_establishments)
  should have_many(:bases)

  should have_many(:establishment_categories)
  should have_many(:categories)

  should validate_presence_of(:name)

  test "it is created with valid attributes" do 
    assert establishments(:one).valid?
  end

  test "it is invalid without a name" do
    establishments(:one).update(:name => nil)
    refute establishments(:one).valid?
  end

  test "it is invalid without being in at least one category" do
    skip
  end

  test "it can be included in more than one category" do 
    skip
  end

  test "the state is invalid unless it is two capital letters" do 
    establishments(:one).update(:state => "BLAH")
    refute establishments(:one).valid?
    establishments(:one).update(:state => "2CA")
    refute establishments(:one).valid?
    establishments(:one).update(:state => "AL5")
    refute establishments(:one).valid?
    establishments(:one).update(:state => "55")
    refute establishments(:one).valid?
    establishments(:one).update(:state => "ca")
    refute establishments(:one).valid?
    establishments(:one).update(:state => "")
    refute establishments(:one).valid?
    establishments(:one).update(:state => "FL")
    assert establishments(:one).valid?
  end

  test "it can have phone numbers associated with it" do 
    assert_includes establishments(:one).phone_numbers, phone_numbers(:one)
    assert_includes establishments(:one).phone_numbers, phone_numbers(:two)
  end

  test "it can have email addresses associated with it" do 
    assert_includes establishments(:one).email_addresses, email_addresses(:one)
    assert_includes establishments(:one).email_addresses, email_addresses(:two)
  end

  test "it can have websites associated with it" do
    assert_includes establishments(:one).websites, websites(:one)
    assert_includes establishments(:one).websites, websites(:two)
  end

  test "it can have reviews associated with it" do 
    assert_includes establishments(:one).reviews, reviews(:one)
    assert_includes establishments(:one).reviews, reviews(:two)
  end

  test "it must be on one or more bases" do 
    skip
  end

  test "it validates format of latitude" do 
    skip
  end

  test "it validates format of longitude" do 
    skip
  end

  test "it validates format of street1" do 
    skip
  end

  test "it validates format of street2" do 
    skip
  end

  test "it validates format of city" do 
    skip
  end
end

