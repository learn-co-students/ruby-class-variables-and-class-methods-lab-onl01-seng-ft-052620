class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end
  
  def name
    @name
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre
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
    
  # def self.genre_count 
  #   new_hash = {}
  #   @@genres.each {|genre| 
  #   if new_hash.keys.include?(genre) 
  #     new_hash[genre] += 1
  #   else 
  #     new_hash[genre] = 1
  #   }
  # new_hash
  # end
  
  def self.genre_count
    new_hash = {}
    @@genres.each do |genre|
      if new_hash[genre]
        new_hash[genre] += 1
        else
          new_hash[genre] = 1
        end 
      end
      new_hash
    end
    
    def self.artist_count
      new_hash2 = {}
      @@artists.each do |genre|
        if new_hash2[genre]
          new_hash2[genre] += 1
          else
            new_hash2[genre] = 1
          end 
        end
        new_hash2
      end  
  
end