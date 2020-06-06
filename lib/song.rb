class Song
 attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@all = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    
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
    return_hash = {}
    @@genres.each do |genre|
      if return_hash.include?(genre)
        return_hash[genre] += 1
      else 
        return_hash[genre] = 1
      end
    end
    return_hash
  end
  
  def self.artist_count
     return_hash = {}
    @@artists.each do |artist|
      if return_hash.include?(artist)
        return_hash[artist] += 1
      else 
        return_hash[artist] = 1
      end
    end
    return_hash
  end
  
end


