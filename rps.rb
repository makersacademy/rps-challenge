require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :enter_name
  end

  post '/name' do
    Game.create_a_game(params[:player_name])
    redirect to('/game')
  end

  get '/game' do
    @name = Game.current_game.name
    erb :game
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
