require 'sinatra/base'
require_relative 'model/game'
require_relative 'model/player'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    #$game = Game.new(Player.new(params[:player1_name]))
    player = Player.new(params[:player1_name])
    @game = Game.create(player)
    redirect "/play"
  end

  get "/play" do
    @player1_name = @game.return_player_name
    #@player1_name = $game.return_player_name
    erb(:play)
  end

  post "/rock" do
    @game.make_player_choice(:rock)
    #game.make_player_choice(:rock)
    redirect "/result"
  end

  post "/paper" do
    @game.make_player_choice(:paper)
      #game.make_player_choice(:paper)
    redirect "/result"
  end

  post "/scissors" do
    @game.make_player_choice(:scissors)
      #game.make_player_choice(:scissors)
    redirect "/result"
  end

  get "/result" do
    @player1_choice = @game.return_player_choice
    #@player1_choice = $game.return_player_choice
    @robo_choice = @game.robo_choice
    #@robo_choice = $game.robo_choice
    @result = @game.calculate_result
    #@result = $game.calculate_result
    erb(:result)
  end

  run! if app_file == $0

end
