require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << self.artist
  @@genres << self.genre
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
genre_hash = {}
i = 4
self.genres.each do |genre|
  genre_hash[genre] = i - 2
  i -= 1
end
genre_hash
end

def self.artist_count
artist_hash = {}
self.artists.each do |name|
  artist_hash[name] = 0
end
artist_hash.each do |name, value|
count = 0
@@artists.each do |artist|
count += 1 if name == artist
end
artist_hash[name] = count
end

end


end
