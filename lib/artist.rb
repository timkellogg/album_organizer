class Artist

  @@artists = Array.new

  attr_reader :name, :id, :albums

  define_method(:initialize) do | name |
    @name  = name
    @id     = @@artists.length + 1
    @albums = nil
  end

  define_method(:save) do
    @@artists.push(self)
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_singleton_method(:clear) do
    @@artists = Array.new
  end


  define_singleton_method(:find) do | number |
    found_artist = nil
    @@artists.each do | artist |
      if artist.id == number
        found_artist = artist
      end
    end
    found_artist
  end
end