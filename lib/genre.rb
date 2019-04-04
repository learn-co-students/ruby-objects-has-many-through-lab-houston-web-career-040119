class Genre
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

    def artists
        results = []
        self.songs.each do |song|
            if !results.include?(song.artist)
                results << song.artist 
            end
        end
        results 
    end
end
