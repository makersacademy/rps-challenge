require "sinatra/base"
require "./lib/game"

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.new(player_1, player_2)
    erb :names
  end

  get '/play' do
    p params

    #game = Game.new(player_1, player_2)
    erb :play
  end


end
