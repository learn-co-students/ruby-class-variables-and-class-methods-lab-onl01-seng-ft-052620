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
        
        count_array = {}

        @@genres.each do |genre|

            if count_array.key?(genre)
                count_array[genre] += 1
            else
                count_array[genre] = 1
            end

        end

        count_array

    end

    def self.artist_count    # => {"Beyonce" => 17, "Jay-Z" => 40}
                
        count_array = {}

        @@artists.each do |artist|

            if count_array.key?(artist)
                count_array[artist] += 1
            else
                count_array[artist] = 1
            end

        end

        count_array

    end

end