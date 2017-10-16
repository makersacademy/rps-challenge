require 'sinatra/base'
require './lib/game'
require './lib/computer_player'
require './lib/player'

class RockPaperScissors < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/choose_players' do
    @player2 = params[:multi_player]
    erb :names
  end


  post '/single_player_game' do
    player1 = Player.new(params[:player1])
    @game = Game.create(player1)
    redirect '/play_game'
  end

  post '/multi_player_game' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play_game'
  end

  before do
    @game = Game.instance
  end

  get '/play_game' do
    erb :play_game
  end

  post '/second_player_turn' do
    weapon = params[:weapon].to_sym
    @game.player1.choose_weapon(weapon)
    erb :second_player_turn
  end

  post '/single_player_results' do
    weapon = params[:weapon].to_sym
    @game.player1.choose_weapon(weapon)
    redirect '/single_player_results'
  end

  get '/single_player_results' do
    @game.player2.choose_weapon
    erb :single_player_results
  end

  post '/multi_player_results' do
    weapon = params[:weapon].to_sym
    @game.player2.choose_weapon(weapon)
    redirect 'multi_player_results'
  end

  get '/multi_player_results' do
    erb :multi_player_results
  end

  run! if app_file == $0
end
