require "sinatra/base"
require "./lib/game.rb"
require "./lib/player.rb"

class Rpsgame < Sinatra::Base

  get "/" do
    erb(:index)
  end

  post "/hold" do
    @player_1 = params[:player_1]
    erb(:hold)
  end

end
