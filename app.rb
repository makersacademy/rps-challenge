require 'sinatra/base'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/play" do
    player = Player.new(params[:player_name])
    session[:player_name] = player.name
    redirect "/play"
  end

  get "/play" do
    @player_name = session[:player_name]
    erb :play
  end

  run! if app_file == $0
end
