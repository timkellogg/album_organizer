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

get('/add_artist') do
  erb(:add_artist)
end

get('/add_album') do
  erb(:add_album)
end

post('/artists') do
  erb(:artists)
end

post('/albums') do
  erb(:albums)
end
