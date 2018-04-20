require('minitest/autorun')
require('minitest/rg')
require_relative('../Room')
require_relative('../Guest')
require_relative('../Song')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new('Castle Room', 3, 3)
    @room2 = Room.new('Princes Room', 6, 5)
    @guest1 = Guest.new('Jane Schwartzkopf', 5)
    @guest2 = Guest.new('Anil Dash', 4)
    @guest3 = Guest.new('James Brown Jr.', 5)
    @guest4 = Guest.new('Davina Sanders', 5)

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

  def test_add_guest_to_room__guest_has_insufficient_money
    @room2.checkin_guest(@guest2)
    assert_equal([], @room.guests)
  end

  def test_add_guest_to_room__has_capacity
    @room.checkin_guest(@guest1)
    assert_equal([@guest1], @room.guests)
  end

  def test_add_guest_to_room__no_capacity
    @room.checkin_guest(@guest1)
    @room.checkin_guest(@guest2)
    @room.checkin_guest(@guest3)
    @room.checkin_guest(@guest4)
    assert_equal([@guest1, @guest2, @guest3], @room.guests)
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

  def test_room_has_capacity
    assert_equal(3, @room.capacity)
  end

  def test_room_is_full__false
    assert_equal(false, @room.is_full?())
  end

  def test_room_is_full__true
    @room.checkin_guest(@guest1)
    @room.checkin_guest(@guest2)
    @room.checkin_guest(@guest3)
    assert_equal(true, @room.is_full?())
  end
end