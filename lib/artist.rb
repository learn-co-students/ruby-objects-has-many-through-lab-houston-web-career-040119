require 'pry'

require_relative "song.rb"
require_relative "genre.rb"

class Artist
    attr_reader :name
    attr_accessor :songs

    @@all = []

    def initialize(name)
        @name = name 
        @songs = []
        @@all << self 
    end 

    def self.all 
        @@all
    end
    
    def new_song(name,genre)
        Song.new(name,self,genre)
    end

    def genres 
        results = []
        self.songs.each do |song|
            if !results.include?(song.genre)
                results << song.genre
            end
        end
        results 
    end
end
