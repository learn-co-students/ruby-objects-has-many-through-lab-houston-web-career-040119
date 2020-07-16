require_relative "song.rb"
require_relative "artist.rb"

class Genre

    attr_reader :name, :song

    @@ALL = []

    def initialize(name)
        @name = name


        @@ALL << self
    end

    def self.all
        @@ALL
    end

    def songs
        Song.all.select do |song|
            song.genre == self 
        end
    end

    def artists
        
        genre_songs = self.songs 

        genre_songs.map do |song|
            song.artist 
        end
   
    end

end