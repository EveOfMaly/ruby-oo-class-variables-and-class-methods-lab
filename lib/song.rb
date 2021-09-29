require 'pry'

class Song
  
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = [] 

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre 
    end

    def self.count 
        @@count 
    end

    def self.artists    
        @@artists.uniq
    end

    def self.genres 
        @@genres.uniq
    end

    def self.genre_count
        hash = Hash.new(0)

        @@genres.each do |genre|
            if hash[genre]
                hash[genre] += 1
            else
                hash[genre] = 1
            end
        end

        hash 
    end 


    def self.artist_count

        artist_count = Hash.new(0)

        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
            binding.pry
        end

        artist_count 
    end



end