require("minitest/autorun")
require("minitest/rg")
require_relative("../songlib")

class TestSonglib < Minitest::Test
  def setup
    @silly_songs = SongLibrary.new("Silly songs",[
      {
        :title => "I've got a lovely bunch of coconuts",
        :artist => "Billy Cotton",
        :time => 3
        },
      {
        :title => "Nyan cat",
        :artist => "saraj00n",
        :time => 10        
        }])
  end

  def test_library_has_songs
    assert_equal({
        :title => "Nyan cat",
        :artist => "saraj00n",
        :time => 10        
        },@silly_songs.library[1])
  end
end