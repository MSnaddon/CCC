class Room
  attr_reader :playlist, :guests

  def initialize()
    @playlist = []
    @guests = []
  end

  def add_song_to_playlist(song)
    @playlist.push(song)
  end

  def add_guest_to_room(guest)
    @guests.push(guest)
  end
end