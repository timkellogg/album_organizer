class Song

  @@songs = Array.new

  attr_reader :name, :length

  define_method(:initialize) do | name, length |
    @name   = name
    @length = length
    @id     = @@songs.length + 1
  end
end
