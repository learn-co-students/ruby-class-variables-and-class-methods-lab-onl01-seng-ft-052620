class Song 
  
  attr_reader :name, :artist, :genre
  
  @@count = 0 
  @@artists = [] 
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
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
    # @@genres - non-unique array of genres
    # self.genres - unique array of genres 
    
    genre_hash = {}
    
    self.genres.each do |genre|
      genre_hash[genre] = @@genres.count {|g| g == genre }
    end
    
    genre_hash 
  end 
  
    def self.artist_count 
    # @@artist - non-unique array of genres
    # self.artist - unique array of genres 
    
    artist_hash = {}
    
    self.artists.each do |artist|
      artist_hash[artist] = @@artists.count {|a| a == artist }
    end 
    
    artist_hash 
  end 
end