require 'sinatra/base'
require './lib/game'
require './lib/player'

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
    @name = @game.player.name
    erb :play
  end

  get '/attack' do
    @game = Game.current_game
    @attack = params[:attack]
    @game.player.store_attack(@attack)
    @return_attack = @game.attack
    @outcome = @game.outcome
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
