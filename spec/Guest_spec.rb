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

  def test_guest_can_afford_something__false
    assert_equal(false, @guest.has_enough_money?(6))
  end

  def test_guest_can_afford_something__true
    assert_equal(true, @guest.has_enough_money?(3))
  end

  def test_guest_can_spend_money
    paid = @guest.pay(3)
    assert_equal(true, paid)
    assert_equal(2, @guest.money)
  end

  def test_guest_cant_spend_money_they_dont_have
    paid = @guest.pay(6)
    assert_equal(false, paid)
    assert_equal(5, @guest.money)
  end
end