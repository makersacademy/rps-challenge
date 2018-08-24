require 'sinatra/base'
require './lib/player.rb'
require './lib/computer_player.rb'
require './lib/game.rb'

class RPS_Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/num_players' do
    @num_players = params[:num_players]
    @num_players == '1' ? redirect('/one_player') : redirect('/two_players')
  end

  get '/one_player' do
    erb(:one_player)
  end

  get '/two_players' do
    erb(:two_players)
  end

  post '/play_one_player' do
    @game = Game.create(Player.new(params[:player_name]), ComputerPlayer.new)
    erb(:play_one_player)
  end

  post '/play_two_player' do
    @game = Game.create(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    erb(:play_two_player)
  end

  post '/play_game' do
    @choice = params[:choice]
    erb(:play_game)
  end
end