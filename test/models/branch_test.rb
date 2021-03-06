require 'test_helper'

class BranchTest < ActiveSupport::TestCase

  should have_many(:bases)
  should validate_presence_of(:name)
  should validate_uniqueness_of(:name)
  # should ensure_inclusion_of(:name).in_array(["Army", "Navy", "Air Force", "Marines", 
  #                                       "Coast Guard", "USO", "Recreation Travel", "Space-A"])

  test "it is created with valid attributes" do 
    assert branches(:one).valid?
  end

  test "it validates that the name is an actual branch" do
    branches(:one).name = "Invalid"
    refute branches(:one).valid?
    branches(:one).name = "Navy"
    assert branches(:one).valid?
    branches(:one).name = "Air Force"
    assert branches(:one).valid?
    branches(:one).name = "Marines"
    assert branches(:one).valid?
    branches(:one).name = "Coast Guard"
    assert branches(:one).valid?
    branches(:one).name = "USO"
    assert branches(:one).valid?
    branches(:one).name = "Recreation Travel"
    assert branches(:one).valid?
    branches(:one).name = "Space-A"
    assert branches(:one).valid?   
  end

  test "it can have bases associated with it" do 
    assert_includes branches(:one).bases, bases(:one)
    assert_includes branches(:two).bases, bases(:two)
  end

end
