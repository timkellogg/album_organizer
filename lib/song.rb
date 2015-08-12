class Song

  @@songs = Array.new

  attr_reader :title, :length, :id, :artist

  define_method(:initialize) do | title, artist, length |
    @title  = title
    @length = length
    @artist = artist
    @id     = @@songs.length + 1
  end


  define_singleton_method(:all) do
    @@songs
  end

  define_singleton_method(:clear) do
    @@songs = Array.new
  end

  define_method(:save) do
    @@songs.push(self)
  end

end
