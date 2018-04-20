require('minitest/autorun')
require('minitest/rg')
require_relative('../Room')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new('Castle Room')
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
end