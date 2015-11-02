require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/weapons'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    # $game = Game.new(player_1, Weapons.new)
    game = Game.new(player_1, Weapons.new)
    session[:game_id] = game.object_id
    Game.add(game)
    redirect '/play'
  end

  get '/play' do
    # @game = $game
    @game = Game.find(session[:game_id])
    erb :play
  end

  post '/rock' do
    # @game = $game
    @game = Game.find(session[:game_id])
    @game.attack(:rock)
    redirect 'result'
  end

  post '/paper' do
    # @game = $game
    @game = Game.find(session[:game_id])
    @game.attack(:paper)
    redirect 'result'
  end

  post '/scissors' do
    @game = Game.find(session[:game_id])
    @game.attack(:scissors)
    redirect 'result'
  end

  get '/result' do
    @game = Game.find(session[:game_id])
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
