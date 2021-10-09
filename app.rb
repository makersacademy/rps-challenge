require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/game'

class RPS < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end
  
  run! if app_file == $0

end
