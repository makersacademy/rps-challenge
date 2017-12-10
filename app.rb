require 'sinatra'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb(:login)
  end

  post '/names' do
    @game = Game.create_game(params[:player1], params[:player2])
    redirect '/players'
  end

  get '/players' do
    @game = Game.game
    erb(:lobby)
  end

end