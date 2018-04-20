require('minitest/autorun')
require('minitest/rg')
require_relative('../Song')

class TestSong < MiniTest::Test
  def setup
    @song1 = Song.new('Girlfriend in a Coma', 'The Smiths')
  end

  def test_song_has_name_and_artist
    assert_equal('Girlfriend in a Coma', @song1.title)
    assert_equal('The Smiths', @song1.artist)
  end
end