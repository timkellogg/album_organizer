require 'rspec'
require 'album'
require 'artist'

describe(Artist) do

  before() do
    @artist = Artist.new("Frank Sinatra")
    @another_artist = Artist.new("Blink-182")
    Artist.clear
  end

  describe('#name') do
    it('returns the name of the artist') do
      expect(@artist.name).to eq("Frank Sinatra")
    end
  end

  describe('#id') do
    it('returns the id of the artist') do
      expect(@artist.id).to eq(1)
    end
  end

  describe('.all') do
    it('should be empty by default') do
      expect(Artist.all).to eq([])
    end
  end

  describe('.clear') do
    it('should clear out the array of saved artists') do
      @another_artist.save
      Artist.clear
      expect(Artist.all).to eq([])
    end
  end

  describe('#save') do
    it('should store the artist in the array of artists') do
      @another_artist.save
      expect(Artist.all).to eq([@another_artist])
    end
  end

  describe('.find') do
    it('finds a artist by it\'s id') do
      @artist.save
      @another_artist.save
      @a_third_artist = Artist.new("Cat Stevens")
      @a_third_artist.save
      expect(Artist.find(3)).to eq(@a_third_artist)
    end
  end

  describe('#add_album') do
    it('adds an album to the array of albums of the artist') do
      @test_album = Album.new('Title', 'Artist', 2004)
      @artist.add_album(@test_album)
      expect(@artist.albums).to eq([@test_album])
    end
  end



end
