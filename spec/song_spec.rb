require 'rspec'
require 'song'


describe(Song) do

  before() do
    @song = Song.new("My Way", 300)
  end

  describe('#name') do
    it('returns the name of the song') do
      expect(@song.name).to eq("My Way")
    end
  end

  describe('#length') do
    it('returns the length of the song') do
      expect(@song.length).to eq(300)
    end
  end

  describe('.all') do
    it('should be empty by default') do
      expect(Song.all).to eq([])
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
