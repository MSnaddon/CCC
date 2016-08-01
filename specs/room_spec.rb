require("minitest/autorun")
require("minitest/rg")
require_relative ("../room")
require_relative("../guests")
require_relative("../songlib")


class TestRoom < Minitest::Test
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
    @guest1 = Guest.new("Jay")
    @room1 = Room.new()
  end

  def test_has_playlist
    @room1.add_song_to_playlist(@silly_songs.library[1])
    assert_equal({
        :title => "Nyan cat",
        :artist => "saraj00n",
        :time => 10        
        }, @room1.playlist[0])
  end

  def test_can_add_guest
    @room1.add_guest_to_room(@guest1)
    assert_equal("Jay",@room1.guests[0].name)
  end


end
