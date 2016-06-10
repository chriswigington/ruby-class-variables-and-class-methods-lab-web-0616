require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1

    @@artists << artist
    # @@artists.uniq!

    @@genres << genre
    # @@genres.uniq!
  end

  def self.count
    @@count
    # puts @@counts
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, artist_songs|
      artist_songs[artist] ||= 0
      artist_songs[artist] += 1
    end
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, genre_songs|
      genre_songs[genre] ||= 0
      genre_songs[genre] += 1
    end
  end
end

# binding.pry
