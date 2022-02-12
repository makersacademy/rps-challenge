require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end
  
  get '/game' do
    @player = session["player"]
    erb(:game)
  end

  get '/play' do
    Game.new(session["player"])
    erb(:play)
  end

  post '/login' do
    session["player"] = Player.new(params["player"])
    redirect '/game'
  end

  run! if app_file == $0

end
  