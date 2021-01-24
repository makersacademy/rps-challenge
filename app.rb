require "sinatra/base"
require "./lib/game"


class RPS < Sinatra::Base
  enable :sessions

  set :session_secret, 'super secret'

  get "/" do
    erb :name
  end

  post "/welcome" do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :welcome
  end

  get "/play" do
    @player_name = session[:player_name]
    erb :play
  end

  post "/result" do
    session[:player_move] = params[:player_move]
    @player_move = session[:player_move]
    @game = Game.new(@player_move)
    @game.computer_turn
    @game.play_game
    erb :result
  end
 
  run! if app_file ==$0
end