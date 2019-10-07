require 'sinatra/base'
require './lib/player'
require './lib/game'

class Roshambo < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/name" do
    $humanplayer = Player.new(params[:playername])
    erb :playerselection
  end

  get "/2player" do
    erb :player2nameentry
  end

  post "2playernameentry" do
    $humanplayer2 = Player.new(params[:playername])
  end

  get "/bender" do
    $computerplayer = Player.new("Bender")
    erb :play
  end

  get "/play" do
    erb :play
  end

  post "/move" do
    puts params["move"]
    $humanplayer.mymove(params["move"])
    erb :result
  end

  post "/playagain" do
    $computerplayer = Player.new("Bender")
    redirect "/play"
  end


  run! if app_file == $0
end
