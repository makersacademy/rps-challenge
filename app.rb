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
    Game.create(player1)
    redirect '/play_game'
  end

  post '/multi_player_game' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    Game.create(player1, player2)
    redirect '/play_game'
  end

  before do
    @game = Game.instance
  end

  get '/play_game' do
    erb :play_game
  end


  post '/results' do
    weapon = params[:weapon].to_sym
    @game.player_choose_weapon(weapon)
    redirect '/results'
  end

  get '/results' do
    @game.computer_choose_weapon
    erb :results
  end

  run! if app_file == $0
end
