require("Minitest/autorun")
require("Minitest/rg")
require_relative("../guests")

class TestGuests < Minitest::Test

  def setup
    @guest1 = Guest.new("Jay")
  end

  def test_guest_has_name
    assert_equal("Jay",@guest1.name)
  end
end