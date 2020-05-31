require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'

class RPS < Sinatra::Base 
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:single_player_name])
    player_2 = Computer.new('HAL')
    Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player = @game.player_1
    @computer = @game.player_2
    erb :play
  end

  post '/move' do
    @game = Game.instance
    @game.player_1.move = params[:move].to_sym
    @game.player_2.pick_move
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @player = @game.player_1
    @computer = @game.player_2
    erb @game.result(@player)
  end

  run! if app_file == $0
end
