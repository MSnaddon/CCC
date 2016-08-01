class SongLibrary

  attr_reader :library, :genre
  
  def initialize(genre, songs_array)
    @genre = genre
    @library = songs_array
  end

end