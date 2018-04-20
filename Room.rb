class Room
  attr_reader(:name, :guests, :songs)

  def initialize(name, songs = [])
    @name = name
    @guests = []
    @songs = songs
  end
end