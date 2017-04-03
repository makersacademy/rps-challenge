require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

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

  post '/choice' do
    @game = Game.instance
    @game.player.player_choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb :result
  end

end
