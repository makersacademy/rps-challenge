require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:name_registration)
  end

  post '/name' do
    Game.create(params['player1_name'], params['player2_name'])
    redirect '/play'
  end

  get '/play' do
    @player1 = Game.instance.player1
    @player2 = Game.instance.player2
    erb(:play)  
  end

  post '/make-move' do
    Game.instance.resolve_move(params['move'])
    redirect '/result'
  end

  get '/result' do
    @result = Game.instance.result
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
