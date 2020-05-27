class Song 
  @@count = 0 
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
  
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
  
  def self.genres 
    @@genres.uniq!
  end 
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] then 
       	genre_count[genre] += 1 
      else 
        genre_count[genre] = 1  
      end
    end
    genre_count
  end
  
  def self.artist_count 
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] then
        artist_count[artist] += 1 
      else
        artis_count[artist] = 1 
  end
end