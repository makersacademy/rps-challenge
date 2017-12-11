require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RpsApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/names' do
    $game = Game.new(params[:option])
    @game = $game

    erb :names
  end

  post '/names' do
    game = $game

    player_1 = Player.new(params[:player_1_name])

    if game.option == 'multi'
      player_2 = Player.new(params[:player_2_name])
    else
      player_2 = Player.new
    end

    game.add_player_1(player_1)
    game.add_player_2(player_2)

    redirect :play
  end

  get '/play' do
    @game = $game
    @player_1 = @game.player_1
    @player_2 = @game.player_2

    erb :play
  end

  post '/save_choice' do
    @game = $game
    player_1 = @game.player_1
    player_1.choice = params[:choice_1]

    redirect :play
  end

  post '/show_down' do
    @game = $game
    @player_1 = @game.player_1
    @player_1.choice = params[:choice_1]

    erb :show_down
  end

  post '/show_down_players' do
    @game = $game
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    @player_2.choice = params[:choice_2]

    erb :show_down_2_players
  end




end
