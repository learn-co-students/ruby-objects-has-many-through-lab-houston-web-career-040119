require 'pry'


class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #  def new_meal(waiter, total, tip=0)
#       Meal.new(waiter, self, total, tip)
#      end

    def new_song(name, style)
        Song.new(name, self, style) 
    end

    def songs
        result = Song.all.select do |song|
            song.artist == self
        end
        # a = result.map do |b|
        #     b.name
        # end
        result
    # binding.pry

    end

    def genres
        self.songs.map do |array|
            array.genre
        end
    end


0

end
