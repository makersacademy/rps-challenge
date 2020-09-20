require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  
  get "/" do
    erb(:index)
  end

  post "/names" do
    @player1 = params[:player1]
    @game = Game.build(@player1)
    redirect to('/play')
  end

  get "/play" do
    @game = Game.instance
    erb(:play)
  end

  post "/result" do
    @game = Game.instance
    @game.img_value(params.keys)
    @game.play
   
    erb(:result)
  end


  run! if app_file == $0
end