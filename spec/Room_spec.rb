require('minitest/autorun')
require('minitest/rg')
require_relative('../Room')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new('Castle Room')
    @guest1 = Room.new('Jane Schwartzkopf')
  end

  def test_room_has_name
    assert_equal('Castle Room', @room.name)
  end

  def test_room_has_empty_guests_array
    assert_equal([], @room.guests)
  end

  def test_room_has_empty_songs_array
    assert_equal([], @room.songs)
  end

  def test_add_guest_to_room
    @room.add_guest(@guest1)
    assert_equal([@guest1], @room.guests)
  end
end