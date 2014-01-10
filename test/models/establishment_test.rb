require "test_helper"

class EstablishmentTest < ActiveSupport::TestCase

  test "it is created with valid attributes" do 
    assert establishments(:one).valid?
  end

  test "it is invalid without a name" do
    establishments(:one).update(:name => nil)
    refute establishments(:one).valid?
  end

  test "it is invalid without a category id" do 
    establishments(:one).update(:category_id => nil)
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
end

