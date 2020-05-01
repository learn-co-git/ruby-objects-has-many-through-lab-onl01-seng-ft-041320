class Song
  attr_accessor :name, :artist, :song
  attr_reader :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name

    @artist = artist
    @@all << self
    @genre = genre
  end

  def self.all
    @@all
  end

  def genre=(genre)
    genre = Genre.new(genre)
  end

end