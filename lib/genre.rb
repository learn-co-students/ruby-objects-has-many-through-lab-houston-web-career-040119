
class Genre

  attr_reader :name

  @@all = []

  def initialize(name)

    @name = name

    @@all << self

  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    all_artists = []
    Song.all.select do |song|
      all_artists << song.artist if song.genre == self
    end
    all_artists
  end

  def self.all
    @@all
  end
end
