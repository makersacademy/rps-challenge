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
    @current_player = Game.instance.current_player
    erb(:play)  
  end

  post '/make-move' do
    Game.instance.store_move(params['move'])
    if Game.instance.moves_complete?
      Game.instance.resolve_moves
      redirect '/result'
    else
      redirect '/play'
    end
  end

  get '/result' do
    @result = Game.instance.result
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
