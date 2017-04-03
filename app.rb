require 'sinatra/base'
require_relative './lib/game'

class Spar < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/result' do
    erb :result
  end

end
