require 'pry'

class Song

    @@all = []
  
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end


    def self.print_all_song_names
        songs = []
        @@all.each do |song|
           songs << song.name
        end
        songs
        binding.pry
    end
 
  end

ninety_nine_problems = Song.new("99 Problems")
thriller = Song.new("Thriller")

p Song.all
p Song.name


  

