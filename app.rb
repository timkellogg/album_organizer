require('sinatra')
require('sinatra/reloader')
require './lib/artist'
require './lib/album'

get('/') do
  erb(:index)
end

get('/artists') do
  @artists = Artist.all
  erb(:artists)
end

get('/albums') do
  @albums = Album.all
  erb(:albums)
end

get('/artists/:id') do
  @artists = Artist.all
  @artist  = Artist.find(params.fetch('id').to_i)
  erb(:artist)
end

get('/albums/:id') do
  @albums = Album.all
  @album = Album.find(params.fetch 'id')
  erb(:album)
end

get('/add_artist') do
  erb(:add_artist)
end

get('/add_album') do
  erb(:add_album)
end

post('/artists') do
  @artists = Artist.all
  name = params.fetch 'name'
  artist = Artist.new(name)
  artist.save
  erb(:artists)
end

post('/albums') do
  @albums = Album.all
  title  = params.fetch 'title'
  @artist = params.fetch 'artist'
  year   = params.fetch 'year'
  @album  = Album.new(title, @artist, year)

  if Artist.find_name(@artist) == nil
    @new_artist = Artist.new(@artist)
    @new_artist.add_album(@album)
    @new_artist.save
  else
    Artist.find_name(@artist).add_album(@album)
  end

  @album.save
  erb(:albums)
end
