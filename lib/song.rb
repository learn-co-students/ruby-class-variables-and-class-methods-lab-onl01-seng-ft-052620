class Song
attr_reader :name, :artist, :genre

# @@songs = {}
@@count = 0
@@genres = []
@@artists = []

#

def initialize(name, artist, genre)
    # @@songs[name] = [artist, genre]
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        # @@genres << genre unless @@genres.include?(genre)
        #the above works together with the commented out code below and the commented out class variables above for a scenario when they want to store all the info about songs together.
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

    # def self.genre_count
    #     genre_with_count = {}
    #     @@genres.each do |genre|
    #         genre_number = 0
    #         @@songs.each do |name, value|
    #             if @@songs[name].include?(genre)
    #                 genre_number += 1
    #             end
    #         end
    #         genre_with_count[genre] = genre_number
    #     end
    #     genre_with_count
    # end

    def self.genre_count
        type_count(@@genres)

    end

    def self.artist_count
        # artist_with_count = {}
        # @@artists.uniq.each do |artist|
        #     artist_number = @@artists.select {|i| i == artist}.count
        #     artist_with_count[artist] = artist_number
        # end
        # artist_with_count
        type_count(@@artists)
    end

def self.type_count(array)
    types_with_count = {}
    array.uniq.each do |type|
        type_number = array.select {|i| i == type}.count
        types_with_count[type] = type_number
    end
    types_with_count
end

end