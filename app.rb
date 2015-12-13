require 'sinatra'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Application
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    add_game(Game.new)
    current_game.add_player(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    @player = current_game.player
    erb :play
  end

  post '/decision' do
    @player = current_game.player
    @player.decides(params[:decision])
    redirect '/confirmation'
  end

  get '/confirmation' do
    @player = current_game.player
    erb :confirmation
  end

  post '/computer' do
    @opponent = Computer.new('Computer')
    @opponent.random_decides
    current_game.add_player(@opponent)
    redirect '/response'
  end

  get '/response' do
    @opponent = current_game.opponent
    erb :response
  end

  get '/result' do
    @game = current_game
    erb :result
  end

helpers do
  def current_game
    Game.find(session[:game_id])
  end

  def add_game(game)
    Game.games
    id = game.object_id
    Game.add(id, game)
    session[:game_id] = id
  end
end

  run! if app_file == $PROGRAM_NAME
end
