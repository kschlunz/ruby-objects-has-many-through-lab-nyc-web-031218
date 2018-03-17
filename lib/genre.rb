class Genre

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs<< song

  end

  def songs
    @songs
  end

  def artists
    @songs.collect do |artist|
      artist.artist
    end
    
  end


end
