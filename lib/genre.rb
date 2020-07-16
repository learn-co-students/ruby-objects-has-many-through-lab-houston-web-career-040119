

class Genre

  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def songs
    #returns an array of all songs included in the genre
    Song.all.select {|song| song.genre == self}
  end

  def artists
    #returns a unique list of all artists included in the genre
    self.songs.map {|song| song.artist}.uniq
  end

  def self.all
    #returns an array of all genres
    @@all
  end

end
