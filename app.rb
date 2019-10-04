require 'sinatra/base'
require './lib/player'
require './lib/game'

class Roshambo < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/name" do
    $humanplayer = Player.new(params[:playername])
    $computerplayer = Player.new("Bender")
    redirect '/play'
  end

  get "/play" do
    erb :play
  end

  post "/move" do
    $humanplayer.mymove(params["move"])
    erb :result
  end

  post "/playagain" do
    $computerplayer = Player.new("Bender")
    redirect "/play"
  end


  run! if app_file == $0
end
