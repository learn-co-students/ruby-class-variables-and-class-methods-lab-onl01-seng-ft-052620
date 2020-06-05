class Song
attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre) #new takes in three arguments: a name, artist and genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist # has a class variable, @@artists, that contains all of the artists of existing songs
        @@genres << genre # has a class variable, @@genres, that contains all of the genres of existing songs
    end

    def self.count
        #Song .count is a class method that returns that number of songs created
        @@count
    end

    def self.artists
        #is a class method that returns a unique array of artists of existing songs
        @@artists.uniq
    end

    def self.genres
        # .genres is a class method that returns a unique array of genres of existing songs
        @@genres.uniq
    end

    def self.genre_count
        # @@genres - non unique array of genres
        # self.genres - is a unique array of genres

        genre_hash = {}
        #this iterates over the non unique array and gets the genres. thennn it gets the count of how many are in that genre. thennn it moves on to the next genre and does the same thing. nd then returns it
        self.genres.each do |genre| 
            genre_hash[genre] = @@genres.count {|g| g == genre} 
        end        
        genre_hash
    end

    def self.artist_count
        # @@artists - non unique array of artist
        # self.artists - is a unique array of artist

        artist_hash = {}

        self.artists.each do |artist| 
            artist_hash[artist] = @@artists.count {|a| a == artist} 
        end        
        artist_hash
    end
end
