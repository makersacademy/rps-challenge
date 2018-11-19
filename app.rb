require 'sinatra/base'
require './lib/player'
require './lib/game_1'

class Rps < Sinatra::Base
  
  before do
    @game_1 = Game_1.instance
  end

  enable :sessions

  get "/" do 
    erb :index
  end

  post "/names" do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game_1 = Game_1.create(player_1, player_2)
    redirect "/play"
  end

  get "/play" do 
    erb :play
  end

  post "/player_1_action" do
    session[:player_1_action] = @game_1.player_1_action(params[:player_1_action])
    # session[:player_2_action] = @game_1.player_2_action(params[:player_2_action])
    redirect "/play2"
  end

  get "/play2" do
    erb :play2
  end

  post "/choice" do
    session[:player_2_action] = @game_1.player_2_action(params[:player_2_action])
    redirect "/result"
  end

  get "/result" do
    @xx = session[:player_1_action]
    @yy = session[:player_2_action]
    erb :result
  end

end