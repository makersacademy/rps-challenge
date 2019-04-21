require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

end
