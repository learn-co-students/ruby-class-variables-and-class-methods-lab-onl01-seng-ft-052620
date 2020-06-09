require "pry"

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
    @@genres << genre
    @@count += 1
  end 
  
  def self.genres
    genres_dup_delete = []
    genres_dup_delete = @@genres.uniq
  end
  
  def self.artists
    artists_dup_delete = []
    artists_dup_delete = @@artists.uniq
  end 
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.count == 0 || genre_hash.none? {|list_genre, list_num| list_genre == genre}
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end 
    genre_hash
  end  
  
  def self.artist_count 
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.count == 0 || artist_hash.none? {|list_artist, num| list_artist == artist}
        artist_hash[artist] = 1
      else 
        artist_hash[artist] += 1
      end 
    end
    artist_hash
  end
  
  def self.count 
    @@count
  end 
  
  
end 