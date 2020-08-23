require "sinatra/base"
require "./lib/bot"
require "./lib/game"
require_relative "app_helpers" # contain all helper methods required

class App < Sinatra::Base

  before do 
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post '/get_name' do 
    set_single_play_game
    redirect "/options"
  end

  get "/options" do
    erb :options
  end

  post "/player_choice" do
    set_single_play_round
    redirect "/options"
  end

  get "/battle" do 
    @winner = @game.winner(@game.player_1, @game.player_2)
    erb :battle
  end

  get "/play_again" do 
    @game.player_2.round_choice
    redirect "/options"
  end

  get "/multyplay" do 
    erb :multyplay
  end

  post "/start_multy_game" do 
    set_multy_play_game
    redirect "/options"
  end

  post "/player_1_option" do 
    set_player_move(@game.player_1)
    redirect "/options"
  end

  get "/play_again_multy" do 
    reset_round
    redirect "/switch_turn"
  end
  
  get "/switch_turn" do
    @game.switch_turn
    erb :switch_turn
  end

  post "/player_2_option" do 
    set_player_move(@game.player_2)
    redirect "/options"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
