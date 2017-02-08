require "pry"

class Song

	@@songs = []
	@@artists = []
	@@genres = []
	@@genre_count = {}
	@@artist_count = {}
	@@count = 0

	attr_accessor :name, :artist, :genre 

	def initialize(name, artist, genre)

		self.name = name
		self.artist = artist
		self.genre = genre

		@@songs.push(name)
		@@artists.push(artist)
		@@genres.push(genre)

		if @@genre_count.keys.include?(genre)
			@@genre_count[genre] += 1
		else
			@@genre_count[genre] = 1
		end

		if @@artist_count.keys.include?(artist)
			@@artist_count[artist] += 1
		else
			@@artist_count[artist] = 1
		end

		@@count += 1
		# binding.pry

	end

	def self.artists
		@@artists.uniq
	end

	def self.count
		@@count
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		@@genre_count
	end

	def self.artist_count
		@@artist_count
	end

end



