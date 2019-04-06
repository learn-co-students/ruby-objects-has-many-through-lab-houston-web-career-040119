require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def new_song(name,genre)
    #given a name and genre, creates a new song associated with that artist
    Song.new(name,self,genre)
  end

  def songs
    #returns all of the songs associated with the artist
    Song.all.select {|song| song.artist == self}
  end

  def genres
    #returns all of the genres asscoiated with the artist
    self.songs.map {|song| song.genre}.uniq 
  end

  def self.all
    #returns an array of all artists
    @@all
  end


end
