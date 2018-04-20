require('minitest/autorun')
require('minitest/rg')
require_relative('../Guest')

class TestGuest < MiniTest::Test
  def setup
    @guest = Guest.new('Amy Miles', 5)
  end

  def test_guest_has_name
    assert_equal('Amy Miles', @guest.name)
  end

  def test_guest_has_money
    assert_equal(5, @guest.money)
  end

  def test_guess_can_afford_something__false
    assert_equal(false, @guest.has_enough_money(6))
  end

  def test_guess_can_afford_something__true
    assert_equal(true, @guest.has_enough_money(3))
  end
end