class Song 
  attr_reader :name, :artist, :genre
  @@artists =[]
  @@genres= []
  @@artist_count= {}
  @@genre_count= {}
  @@count =0
  
def initialize(name, artist, genre)
  @name =name
  @artist =artist
  @@artists<< artist
  @@artist_count[artist] ? @@artist_count[artist]+=1 : @@artist_count[artist]=1
  @genre =genre
  @@genres << genre
  @@genre_count[genre] ? @@genre_count[genre]+=1 : @@genre_count[genre]=1
  @@count+=1
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
 @@genre_count
end

def self.artist_count
 @@artist_count
end


end