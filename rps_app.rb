require "sinatra/base"
require_relative "./lib/player"
require_relative "./lib/game"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    session[:game] = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect "/play"
  end

  get "/play" do
    @game = session[:game]
    erb :play
  end

  get "/results" do
    @game = session[:game]
    erb :result
  end

  run! if app_file == $0
end
