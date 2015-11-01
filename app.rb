require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'
require './lib/multi_game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/single_player_sign_in' do
    erb :single_player
  end

  post '/play' do
    player = Player.new(params[:username])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
    @game.player.player_choice((params[:selection]).to_sym)
    @game.computer_weapon_choice
    erb :result
  end

  get '/multi_player_sign_in' do
    erb :multi_player
  end

  post '/multi_player_play' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $multi_game = MultiGame.new(player_1, player_2)
    redirect('/multi_play')
  end

  get '/multi_play' do
    @multi_game = $multi_game
    erb :multi_play
  end

  post '/multi_result' do
    @multi_game = $multi_game
    @multi_game.player_1.player_choice((params[:player_1_selection]).to_sym)
    @multi_game.player_2.player_choice((params[:player_2_selection]).to_sym)
    erb :multi_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
