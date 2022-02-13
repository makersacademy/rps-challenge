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
    $game = Game.new(session["player"], Player.new("Computer")) if $game.nil?
    erb(:play)
  end

  post '/login' do
    session["player"] = Player.new(params["player"])
    redirect '/game'
  end

  post '/move' do
    $game.make_move(params["move"])
    $game.opponent_move
    redirect '/play'
  end

  run! if app_file == $0

end
  