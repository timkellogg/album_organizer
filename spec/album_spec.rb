require 'rspec'
require 'song'
require 'album'

describe(Album) do

  before() do
    @test_album = Album.new("Nevermind", "Nirvana", 1991)
  end

  describe('#title') do
    it('returns the title of the album') do
      expect(@test_album.title).to eq('Nevermind')
    end
  end

  describe('#artist') do
    it('returns the artist of the album') do
      expect(@test_album.artist).to eq('Nirvana')
    end
  end

    describe('#year') do
      it('returns the year of the album') do
        expect(@test_album.year).to eq(1991)
      end
    end

    describe('#id') do
      it('returns the id of the album') do
        expect(@test_album.id).to eq(1)
      end
    end

end
