require 'pry'

class Song
attr_accessor :name, :artist, :genre
@@artist_count = Hash.new
@@genre_count = Hash.new
@@count = 0
@@artists = Array.new
@@genres = Array.new
    def initialize(name, artist, genre )
@name  = name
@artist = artist
@genre = genre
@@count += 1
@@artists << artist
@@genres << genre
@@genre_count[genre] ? @@genre_count[genre]+=1 : @@genre_count[genre]=1
@@artist_count[artist] ? @@artist_count[artist]+=1 : @@artist_count[artist]=1
#binding.pry
    end

    def self.count
        @@count
    end
def self.artist
        @@artists 
       
    end
def self.genre
        @@genres
    end

def self.artists
    artist.uniq!
    
end
def self.genres
    genre.uniq!
end

def self.genre_count
@@genre_count
    
 #binding.pry
end

def self.artist_count
    @@artist_count
end

end