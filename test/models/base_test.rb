require "test_helper"

class BaseTest < ActiveSupport::TestCase

  should belong_to(:branch)
  should have_many(:users)
  should have_many(:base_establishments)
  should have_many(:establishments)

  should validate_presence_of(:name)
  should validate_presence_of(:state)
  should validate_presence_of(:zipcode)
  should validate_numericality_of(:zipcode)
  should validate_presence_of(:latitude)
  should validate_numericality_of(:latitude)
  should validate_presence_of(:longitude)
  should validate_numericality_of(:longitude)

  
  test "it is created with valid attributes" do 
    assert bases(:one).valid?
    assert_equal "Camp Pendleton", bases(:one).name
  end

  test "it is invalid without a name" do
    bases(:one).update(:name => nil)
    refute bases(:one).valid?
  end

  test "it is invalid without a state" do 
    bases(:one).update(:state => nil)
    refute bases(:one).valid?
  end

  test "it is invalid unless state is 2 capital letters" do 
    bases(:one).update(:state => "BLAH")
    refute bases(:one).valid?
    bases(:one).update(:state => "2CA")
    refute bases(:one).valid?
    bases(:one).update(:state => "AL5")
    refute bases(:one).valid?
    bases(:one).update(:state => "55")
    refute bases(:one).valid?
    bases(:one).update(:state => "ca")
    refute bases(:one).valid?
    bases(:one).update(:state => "")
    refute bases(:one).valid?
    bases(:one).update(:state => "FL")
    assert bases(:one).valid?
  end

  test "it is invalid without a zipcode" do 
    bases(:one).update(:zipcode => nil)
    refute bases(:one).valid?
  end

  test "it converts a 5 digit zipcode string into integer" do
    bases(:one).update(:zipcode => "90210")
    assert bases(:one).valid?
    assert_equal Fixnum, bases(:one).zipcode.class
  end

  test "it is invalid unless zipcode is 5 integer digits" do 
    bases(:one).update(:zipcode => "BLAHG")
    refute bases(:one).valid?
    bases(:one).update(:zipcode => "0000A")
    refute bases(:one).valid?
    bases(:one).update(:zipcode => "A2222")
    refute bases(:one).valid?
    bases(:one).update(:zipcode => "923211")
    refute bases(:one).valid?
    bases(:one).update(:zipcode => 7777)
    refute bases(:one).valid?
    bases(:one).update(:zipcode => "")
    refute bases(:one).valid?
    bases(:one).update(:zipcode => 90210)
    assert bases(:one).valid?
  end

  test "it is invalid without a latitude" do
    bases(:one).update(:latitude => nil)
    refute bases(:one).valid?
  end

  test "latitude must be an integer" do 
    bases(:one).update(:latitude => "string")
    refute bases(:one).valid?
    bases(:one).update(:latitude => 118.2)
  end

  test "latitude must be in a certain format" do 
    skip
  end

  test "it is invalid without a longitude" do
    bases(:one).update(:longitude => nil)
    refute bases(:one).valid?
  end

  test "longitude must be an integer" do 
    bases(:one).update(:longitude => "string")
    refute bases(:one).valid?
    bases(:one).update(:longitude => 118.2)
  end

  test "longitude must be in a certain format" do 
    skip
  end

  test "it is invalid without belonging to a branch" do 
    bases(:one).update(:branch_id => nil)
    refute bases(:one).valid?
  end

  test "operator number must be in a certain format" do 
    skip
  end

  test "it can have multiple establishments" do 
    skip 
    # This will be implemented through base_establishments and has_many through relationship
  end

end
