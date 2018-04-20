class Room
  attr_reader(:name, :guests, :songs)

  def initialize(name, songs = [])
    @name = name
    @guests = []
    @songs = songs
  end

  def checkin_guest(guest)
    @guests << guest
  end

  def checkout_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs << song
  end
end