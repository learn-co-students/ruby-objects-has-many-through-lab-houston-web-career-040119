require 'pry'

require_relative "song.rb"
require_relative "genre.rb"


class Artist    

    attr_reader :name
    
    @@ALL = []

    def initialize(name)
        @name = name 

        @@ALL << self 
    end

    def self.all
        @@ALL
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
        # @songs << newSong
    end

    def songs
        Song.all.select do |song|
            song.artist == self 
        end
    end



    def genres
        
        artist_songs = self.songs 

        artist_songs.map do |song|
            song.genre 
        end
   
    end

end


#binding.pry
puts "hi"