class Artist 
  attr_accessor :name, :song
  @@all_songs = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@all_songs << song
  end 
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@all_songs << song 
  end 
  
  def self.song_count 
    @@all_songs.length 
  end 
  
  def songs
    @songs 
  end 
  
end 