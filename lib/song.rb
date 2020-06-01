class Song
    #instance variables
    attr_accessor :name,:artist,:genre
    #class variables
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count()
        @@count
    end

    def self.genres()
        @@genres.uniq
    end
    
    def self.artists()
        @@artists.uniq
    end

    def self.genre_count()
        count = Hash.new {|hash,key| hash[key] = 0}
        @@genres.each do |genre|
            count[genre] += 1
        end
        count
    end

    def self.artist_count()
        count = Hash.new {|hash,key| hash[key] = 0}
        @@artists.each do |artist|
            count[artist] += 1
        end
        count
    end

end