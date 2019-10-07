require "sinatra/base"
require_relative "./lib/game.rb"
require_relative "./lib/player.rb"
require_relative "./lib/randomMovement.rb"

class Playing < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/movement" do
    session[:player_name] = params[:name]
    redirect "/ask_movement"
  end

  get "/ask_movement" do
    erb :askMovement
  end

  post '/showResult' do
    @player_1 = Player.new(session[:player_name], params[:movement])
    @server_player = Player.new("computer",
      RandomMovement.new().random_movement)
    @game = Game.new(@player_1, @server_player)
    @message = @game.winner_term
    erb :result
  end

  get "/two_player_game_names" do
    erb :askNamesOfTwoPlayers
  end

  post "/askMovementOfTwoPlayers" do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect "/ask_player_1_movement"
  end

  get "/ask_player_1_movement" do
    erb :player_1_movement_asking
  end

  post "/ask_player_2_movement" do
    session[:player_1_movement] = params[:player_1_movement]
    redirect "/ask_player_2_movement"
  end

  get "/ask_player_2_movement" do
    erb :player_2_movement_asking
  end

  post "/game_result" do
    session[:player_2_movement] = params[:player_2_movement]
    redirect "/game_result"
  end

  get "/game_result" do
    @player_1 = Player.new(session[:player_1_name], session[:player_1_movement])
    p(@player_1)
    @player_2 = Player.new(session[:player_2_name], session[:player_2_movement])
    p(@player_2)
    @game = Game.new(@player_1, @player_2)
    p(@game)
    @message = @game.winner_term
    p(@message)
    erb :final_result
  end

  run! if app_file == $0
end
