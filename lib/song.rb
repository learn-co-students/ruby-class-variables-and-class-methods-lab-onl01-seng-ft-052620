class Song

    attr_accessor  :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)  #ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
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

    def self.genres # => array of all unique genres of existing songs
        
        new_arr = []

        @@genres.each_with_index do |genre|
            if !new_arr.include?(genre)
                new_arr << genre
            end
        end
        new_arr

    end
    
    

    def self.artists # => ["Jay-Z", "Drake", "Beyonce"]
         
        new_arr = []

        @@artists.each_with_index do |artist|
            if !new_arr.include?(artist)
                new_arr << artist
            end
        end
        new_arr
    end

    
    def self.genre_count # => {"rap" => 5, "rock" => 1, "country" => 3}
        
        new_hash = {}

        @@genres.each do |genre|

            if new_hash.key?(genre)
                new_hash[genre] += 1
            else
                new_hash[genre] = 1
            end

        end

        new_hash

    end

    def self.artist_count    # => {"Beyonce" => 17, "Jay-Z" => 40}
                
        new_hash = {}

        @@artists.each do |artist|

            if new_hash.key?(artist)
                new_hash[artist] += 1
            else
                new_hash[artist] = 1
            end

        end

        new_hash

    end

end