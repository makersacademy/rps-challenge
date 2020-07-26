require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/game' do
    @game = Game.new(Player.new(params[:player_1_name]))
    erb(:throw)
  end

end
