require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    Game.create(player)
    redirect to '/game'
  end

  get '/game' do
    @player = Game.current_game.player
    erb :game
  end


end
