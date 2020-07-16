class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        result = Song.all.select do |song|
            song.genre == self
        end

        result

    end

    def artists
        self.songs.map do |array|
            array.artist
        end
    end
end