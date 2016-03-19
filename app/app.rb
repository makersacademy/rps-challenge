require "sinatra/base"
require "./lib/player"

class RPS < Sinatra::Base

  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    session[:player] = Player.new(params[:player])
    redirect "/play"
  end

  get "/play" do
    @player_name = session[:player].name
    erb :play
  end

  run! if app_file == $0
end
