class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select{|songs|
    songs.artist == self}
  end
end
