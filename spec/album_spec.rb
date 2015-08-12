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

  describe('.all') do
    it('returns an array of the albums in the album array') do
      expect(Album.all).to eq([])
    end
  end

  describe('#save') do
    it('saves the album into the album array') do
      @test_album.save
      expect(Album.all).to eq([@test_album])
    end
  end

  describe('.clear') do
    it('empties out the array of albums') do
      @test_album.save
      Album.clear
      expect(Album.all).to eq([])
    end
  end

  describe('.find') do
    it('finds an album by it\'s id') do
      @test_album.save
      expect(Album.find(1)).to eq(@test_album)
    end
  end


  describe('#add_song') do
    it('adds a song to the album') do
      @song = Song.new("My Way", "Frank Sinatra", "3:00")
      @test_album.add_song(@song)
      expect(@test_album.songs).to eq([@song])
    end
  end


end
