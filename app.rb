require 'sinatra'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/log_in_one_player' do
    erb :log_in_one_player
  end

  get '/log_in_two_player' do
    erb :log_in_two_player
  end

  post '/player_name' do
    player_1 = Player.new(params[:name])
    @game = Game.create(player_1)
    redirect '/play_one_player'
  end

  get '/play_one_player' do
    @game = Game.instance
    erb :play_one_player
  end

  post '/player_names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play_two_player'
  end

  get '/play_two_player' do
    @game = Game.instance
    if @game.turn == @game.player_1
      Game.instance.calculate_winner
    end
    erb :play_two_player
  end

  post '/rock_1p' do
    Game.instance.player_1.make_move("Rock")
    Game.instance.calculate_winner
    redirect '/play_one_player'
  end

  post '/paper_1p' do
    Game.instance.player_1.make_move("Paper")
    Game.instance.calculate_winner
    redirect '/play_one_player'
  end

  post '/scissors_1p' do
    Game.instance.player_1.make_move("Scissors")
    Game.instance.calculate_winner
    redirect '/play_one_player'
  end

  post '/rock_2p' do
    Game.instance.turn.make_move("Rock")
    Game.instance.switch_turn
    redirect '/play_two_player'
  end

  post '/paper_2p' do
    Game.instance.turn.make_move("Paper")
    Game.instance.switch_turn
    redirect '/play_two_player'
  end

  post '/scissors_2p' do
    Game.instance.turn.make_move("Scissors")
    Game.instance.switch_turn
    redirect '/play_two_player'
  end
end
