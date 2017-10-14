require 'sinatra/base'
require_relative './lib/game'

class Rocky < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    Game.create_game(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb :play, { locals: { player_name: Game.current_game.player, weapons: Game.current_game.weapons } }
  end

  get '/result' do
    Game.current_game.play(params[:weapon])
    erb :result, { locals: { player_name: Game.current_game.player, result: Game.current_game.result } }
  end

end
  