require 'sinatra/base'
require './lib/game'

class RPSWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    Game.create(params[:player_name])
    redirect '/play'
  end
  
  get '/play' do
    @game = Game.instance
    @player_name = @game.player_name
    erb :play
  end
end