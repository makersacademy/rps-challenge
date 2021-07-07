require "sinatra/base"
require "./lib/player"
require "./lib/game"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  get "/choose_opponent" do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    erb :choose_opponent
  end

  get "/names" do
    @game = Game.instance
    player_2 = Player.new(params[:player_2_name])
    @game.create_player_2(player_2)
    p @game.player_2.name
    p @game
    #@game = Game.create(Player.new(params[:player_1_name]), player_2)
    redirect('/play_multiplayer')
  end

  get "/play_multiplayer" do
    @game = Game.instance
    erb :play_multiplayer
  end


  get "/play_singleplayer" do
    computer = Player.new("Computer")
    @game = Game.instance
    @game.create_computer(computer)
    erb :play_singleplayer
  end

  get "/rock_computer" do
    @game = Game.instance
    @computer_move = @game.random_selection
    erb :rock_computer
  end

  get "/paper_computer" do
    @game = Game.instance
    @computer_move = @game.random_selection
    erb :paper_computer
  end

  get "/scissors_computer" do
    @game = Game.instance
    @computer_move = @game.random_selection
    erb :scissors_computer
  end

  run! if app_file == $0
end
