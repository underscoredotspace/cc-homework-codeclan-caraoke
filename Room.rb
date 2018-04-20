class Room
  attr_reader(:name, :guests, :songs, :capacity)

  def initialize(name, capacity)
    @name = name
    @guests = []
    @songs = []
    @capacity = capacity
  end

  def checkin_guest(guest)
    return if is_full?
    @guests << guest
  end

  def checkout_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs << song
  end

  def is_full?
    @guests.count() == capacity
  end
end