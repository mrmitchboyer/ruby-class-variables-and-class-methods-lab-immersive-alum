require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.each do |genre|
      if genre_count_hash.keys.include?(genre)
        genre_count_hash[genre] += 1
      else
        genre_count_hash[genre] = 1
      end
    end
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |artist|
      if artist_count_hash.keys.include?(artist)
        artist_count_hash[artist] += 1
      else
        artist_count_hash[artist] = 1
      end
    end
    artist_count_hash
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << self.artist # unless @@artists.include?(artist)
    @@genres << self.genre # unless @@genres.include?(artist)
  end

end
