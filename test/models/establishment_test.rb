require "test_helper"

class EstablishmentTest < ActiveSupport::TestCase

  test "it is created with valid attributes" do 
    assert establishments(:one).valid?
  end

  test "it is invalid without a name" do
    establishments(:one).update(:name => nil)
    refute establishments(:one).valid?
  end

  test "it is invalid without being associated with a category" do
    establishments(:one).update(:category_id => nil)
    refute establishments(:one).valid?
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
  end
end

