

class Genre
    
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    
    def self.all
        @@all
    end
    
    def songs
        Song.all.select do |song|
            if song.genre == self
                song
            end
        end
    end
    
    def artists
        songs.map do |song|
            song.artist
        end
    end
    
end