require 'sinatra'
require './lib/game'
class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    Game.start(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = Game.current_game.name
    erb :play
  end

  post '/Rock' do
    Game.current_game.player_choice("Rock")
    redirect Game.current_game.outcome
  end

  post '/Scissors' do
    Game.current_game.player_choice("Scissors")
    redirect Game.current_game.outcome
  end

  post '/Paper' do
    Game.current_game.player_choice("Paper")
    redirect Game.current_game.outcome
  end

  get '/Win' do
    erb :win
  end

  get '/Draw' do
    erb :draw
  end

  get '/Lose' do
    erb :lose
  end

  run! if app_file == $0
end
