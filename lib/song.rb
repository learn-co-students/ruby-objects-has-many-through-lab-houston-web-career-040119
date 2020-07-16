

class Song
#joiner class connecting
#    artist, who have many songs
#    genres, who have many songs

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    #returns an array of all songs
    @@all
  end

end
