class Room
  attr_reader(:name, :guests, :songs)

  def initialize(name, songs = [])
    @name = name
    @guests = []
    @songs = songs
  end

  def add_guest(guest)
    @guests << guest
  end
end