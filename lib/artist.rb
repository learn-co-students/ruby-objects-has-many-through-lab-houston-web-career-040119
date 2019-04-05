require 'pry'

require_relative "song.rb"
require_relative "genre.rb"

class Artist
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all
    end
    
    def new_song(name,genre)
        Song.new(name,self,genre)
    end

    def genres 
        self.songs.map do |song|
            song.genre
        end.uniq
    end

    def songs 
        Song.all.select { |song| song.artist == self }
    end
end
