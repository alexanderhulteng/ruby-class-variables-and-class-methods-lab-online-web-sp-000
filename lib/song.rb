require 'pry'

class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = Array.new
@@genres = Array.new




def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre



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

def self.genre_count
genre_count = @@genres.each_with_object(Hash.new(0)){ |(k,v), h| h[k] += v }
#@@genres.each_with_object{|k, v| @@genre_count[k] = v}
genre_count






end
end
