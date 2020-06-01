require 'pry'
class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@count += 1
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        output = {}
        @@genres.each do |genre|
            if output.keys.include?(genre)
                output[genre] += 1
            else
                output[genre] = 1
            end
        end
        output
    end

    def self.artist_count
        output = {}
        @@artists.each do |artist|
            if output.keys.include?(artist)
                output[artist] += 1
            else
                output[artist] = 1
            end
        end
        output
    end
end