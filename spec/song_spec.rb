require 'rspec'
require 'song'


describe(Song) do

  before() do
    @song = Song.new("My Way", "Frank Sinatra", "3:00")
    @another_song = Song.new("All the Small Things", "Blink-182", "2:42")
    Song.clear
  end

  describe('#title') do
    it('returns the title of the song') do
      expect(@song.title).to eq("My Way")
    end
  end

  describe('#artist') do
    it('returns the artist of the song') do
      expect(@song.artist).to eq("Frank Sinatra")
    end
  end

  describe('#length') do
    it('returns the length of the song') do
      expect(@song.length).to eq("3:00")
    end
  end

  describe('#id') do
    it('returns the id of the song') do
      @another_song.id
      expect(@another_song.id).to eq(1)
    end
  end

  describe('.all') do
    it('should be empty by default') do
      expect(Song.all).to eq([])
    end
  end

  describe('.clear') do
    it('should clear out the array of saved cars') do
      @another_song.save
      Song.clear
      expect(Song.all).to eq([])
    end
  end

  describe('#save') do
    it('should store the song in the array of songs') do
      @another_song.save
      expect(Song.all).to eq([@another_song])
    end
  end

  describe('.find') do
    it('finds a song by it\'s id') do
      @song.save
      @another_song.save
      @a_third_song = Song.new("Peace Train", "Cat Stevens", "4:30")
      @a_third_song.save
      expect(Song.find(3)).to eq(@a_third_song)
    end
  end
end



# Artists
  # name
  # cds (arr)

# Cds
  # songs (arr)
  # rating

# Songs
  # name
  # length
