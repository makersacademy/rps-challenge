require 'sinatra'
require 'sinatra/reloader' if development?

class Rpssl < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  get '/singleplayer' do
    erb(:singleplayer)
  end

  run! if app_file == $0
end
