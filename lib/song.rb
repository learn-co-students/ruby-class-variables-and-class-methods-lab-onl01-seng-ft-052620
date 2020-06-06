require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    # binding.pry

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @@genres << genre
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.genres # UNIQUE ARRAY OF ARTISTS OF EXISTING SONGS
        @@genres.uniq
    end

    def self.artists # UNIQUE ARRAY OF GENRES OF EXISTING SONGS
        @@artists.uniq
    end

    def self.genre_count # HASH OF GENRES & NUMBER OF SONGS IN GENRES
        genre_hash = {}
        
        self.genres.each do |genre|
            genre_hash[genre] = @@genres.count {|g| g == genre}
        end

        genre_hash
    end

    def self.artist_count # HASH OF ARTISTS & NUMBER OF SONGS IN ARTISTS
        artist_hash = {}
        
        self.artists.each do |artist|
            artist_hash[artist] = @@artists.count {|a| a == artist}
        end

        artist_hash

    end

end