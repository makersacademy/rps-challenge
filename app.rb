require 'sinatra/base'
require './lib/player.rb'
require './lib/computer_player.rb'
require './lib/game.rb'
require './lib/scores.rb'

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
    @game = Game.create(Player.new(params[:player_name]), ComputerPlayer.new) if Game.instance.nil?
    @game = Game.instance
    erb(:play_one_player)
  end

  post '/play_two_player' do
    @game = Game.create(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    @score = Scores.new
    erb(:play_two_player)
    @p1, @p2 = '', ''
  end

  post '/play_game_1p' do
    @game = Game.instance
    @score = Scores.new
    @cp = ComputerPlayer.new.make_choice
    @choice = params[:choice]
    erb(:play_game_1p)
  end

  post '/play_game_2p' do
    @game = Game.instance
    @score = Scores.new
  end
end