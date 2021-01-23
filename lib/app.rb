require 'sinatra/base'
require_relative "game"
require_relative "player"

class RockPaperScissors < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/new_player" do
    Game.create(Player.new(params["name"]))
    redirect "/play"
  end

  get "/play" do
    @game = Game.instance
    
    erb :play
  end


  run! if app_file == $0
end
