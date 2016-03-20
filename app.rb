require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    Game.start params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.current_game
    @name = @game.player_name
    erb :play
  end

  get '/attack' do
    @attack = params[:attack]
    @game = Game.current_game
    @return_attack = @game.attack
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
