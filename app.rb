require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @@game = Game.new(Player.new(params[:player_1_name]))
    redirect '/game'
  end

  get '/game' do
    @game = @@game
    erb(:throw)
  end

  post '/result' do
    @game = @@game
  end

end
