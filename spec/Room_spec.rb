require('minitest/autorun')
require('minitest/rg')
require_relative('../Room')
require_relative('../Guest')
require_relative('../Song')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new('Castle Room')
    @guest1 = Guest.new('Jane Schwartzkopf')
    @song1 = Song.new('Girlfriend in a Coma', 'The Smiths')
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
    @room.checkin_guest(@guest1)
    assert_equal([@guest1], @room.guests)
  end

  def test_remove_guest_from_room
    @room.checkin_guest(@guest1)
    @room.checkout_guest(@guest1)
    assert_equal([], @room.guests)
  end

  def test_add_song_to_room
    @room.add_song(@song1)
    assert_equal([@song1], @room.songs)
  end
end