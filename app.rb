require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/names' do
    Game.begin(params[:player1])
    redirect '/play'
  end

  get '/play' do
    @game = Game.game
    erb :play
  end



  run! if app_file == $0
 end
