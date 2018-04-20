require('minitest/autorun')
require('minitest/rg')
require_relative('../Guest')

class TestGuest < MiniTest::Test
  def setup
    @guest = Guest.new('Amy Miles')
  end

  def test_guest_has_name
    assert_equal('Amy Miles', @guest.name)
  end
end