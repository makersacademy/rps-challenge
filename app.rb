require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base

  get "/" do
    erb(:sign_in)
  end

  post "/names" do
    $game = Game.new( Player.new(params["Player 1"]), Player.new("Hal 9000") )
    redirect '/play'
  end

  get "/play" do
    @game = $game
    erb(:play)
  end

  post "/choice" do
    @game = $game
    redirect '/confirm'
  end

  get "/confirm" do

    erb(:confirm)
  end

end
