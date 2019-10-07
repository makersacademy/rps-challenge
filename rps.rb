require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  get '/register' do
    erb :index
  end

  post '/play' do
    registeredplayer1 = Player.new(params[:registeredplayer1])
    registeredplayer2 = Player.new(params[:registeredplayer2])
    @game = Game.create_players(registeredplayer1, registeredplayer2)
    erb :play
  end
  
  post '/result' do
    @game = Game.instance
    @game.registeredplayer1.tool_of_choice(params[:dropdown1])
    @game.registeredplayer2.tool_of_choice(params[:dropdown2])
    erb :result
  end

end