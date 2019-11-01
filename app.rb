require "sinatra"
require "sinatra/base"
require "./lib/player"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    # session[:player_1_name] = params[:player_1]
    @player = Player.create(params[:player_1])
    redirect "/play"
  end

  # before do
  #   @player = Player.instance
  # end

  get "/play" do
    @player = Player.instance
    erb :play
  end

  post "/player1_move" do
    @player = Player.instance
    session[:player1_move] = params[:radio]
    @player1_move = session[:player1_move]
    @player.weapon(@player1_move)
    redirect "/result"
  end

  get "/result" do
    @player = Player.instance
    p @player.winner
    erb :result
  end
  run! if app_file == $0
end
