require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/pc'
require './lib/game'

class RPS < Sinatra::Base
  before { @game = Game.load_game }
  configure :development do
    register Sinatra::Reloader
  end
enable :sessions 

get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_1])
    new_game = Game.new(player)
    Game.save_game(new_game)
  redirect '/play'
  end

  get '/play' do
    @player_1 = @game.player.name
    #@computer_name = @game.computer.name
    erb :play
  end

  get '/start_game' do
    @player_1 = @game.player.name
    @game.player_move = params[:player_move]
    erb :start_game
  end
  post '/choice' do
    @game.player_move = params[:player_move]
    redirect '/result'
  end
  get '/result' do
    @player_1 = @game.player.name
    @player_move = @game.player_move
    @pc_move = @game.pc.pc_move
    erb :result

  end

  
  run! if app_file == $0
end
