class Album

  @@albums = Array.new

  attr_reader :title, :artist, :year, :id

  define_method(:initialize) do | title, artist, year|
    @title  = title
    @artist = artist
    @year   = year
    @id     = @@albums.length + 1
  end
  
end
