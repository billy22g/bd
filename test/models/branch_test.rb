require 'test_helper'


class BranchTest < ActiveSupport::TestCase

  test "it is created with valid attributes" do 
    assert branches(:one).valid?
  end

  test "it is invalid without a name" do 
    branches(:one).name = nil
    refute branches(:one).valid?
  end

  test "it validates that the name is an actual branch" do
    branches(:one).name = "Invalid"
    refute branches(:one).valid?
    branches(:one).name = "Coast Guard"
    assert branches(:one).valid?
  end

  test "it can have bases associated with it" do 
    skip
    assert_includes branches(:one).bases, bases(:one)
  end

end
