require "test_helper"

class EstablishmentTest < ActiveSupport::TestCase

  should have_many(:websites)
  should have_many(:phone_numbers)
  should have_many(:email_addresses)
  should have_many(:reviews)
  should have_many(:photos)

  should have_many(:base_establishments)
  should have_many(:bases)

  should have_many(:establishment_categories)
  should have_many(:categories)

  should validate_presence_of(:name)
  should validate_presence_of(:visible)

  test "it is created with valid attributes" do 
    assert establishments(:one).valid?
  end

  test "it is visible by default" do 
    assert establishments(:one).visible?
  end

  test "taking it offline makes it no longer visible" do 
    establishments(:one).take_offline
    refute establishments(:one).visible?
  end

  # Below tests need to validate that an establishment must be in at least one category and must be on at least one base
  # But if the base is deleted we need to know what to do with that establishment (are there any other places where this might be an issue)

  test "it is invalid without being in at least one category" do
    skip
  end

  test "it is invalid without being on at least one base" do 
    skip
  end

  test "it can be included in more than one category" do 
    assert_equal 2, establishments(:one).categories.count
  end

  test "it can be included on more than one base" do 
    assert_equal 2, establishments(:one).bases.count
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

