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

  should validate_numericality_of(:latitude).is_greater_than(-90)
  should validate_numericality_of(:latitude).is_less_than(90)
  should validate_numericality_of(:longitude).is_greater_than(-180)
  should validate_numericality_of(:longitude).is_less_than(180)

  # should ensure_length_of(:zipcode).is_equal_to(5)

  
  test "it is created with valid attributes" do 
    assert bases(:one).valid?
    assert_equal "Camp Pendleton", bases(:one).name
  end

  test "it should be able to have many establishments" do
    assert_equal 3, bases(:one).establishments.count
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

  test "latitude must be in a certain format" do 
    skip
  end

  test "longitude must be in a certain format" do 
    skip
  end

  test "operator number must be in a certain format" do 
    skip
  end

end
