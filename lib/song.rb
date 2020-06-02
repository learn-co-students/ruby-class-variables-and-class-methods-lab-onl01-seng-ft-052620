class Song
	attr_accessor :name, :artist, :genre
	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@count += 1
		@@genres << genre
		@@artists << artist
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

	def self.artist_count
		artist_count = {}
		self.artists.each do |uniq_artist|
			artist_count[uniq_artist] = @@artists.count{|artist| artist == uniq_artist}
		end
		artist_count
	end

	def self.genre_count
		self.genres.map{|genre_uniq| [genre_uniq, @@genres.count{|genre| genre == genre_uniq}]}.to_h
	end
end