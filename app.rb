require 'sinatra/base'
require 'sinatra'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    "Rock Paper Scissors"
    erb(:index)
  end

  post '/get-names' do
    if params[:choose_opponent] == "virtual"
      Game.new_game(params[:player1], "virtual")
      redirect '/play'
    else
      session[:player1] = params[:player1]
      redirect '/get-player2-name'
    end
  end

  get '/get-player2-name' do
    erb(:player2)
  end

  post '/start-2-player-game' do
    Game.new_game(session[:player1], "real", params[:player2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choose' do
    if Game.stored_game.type == "real"
      Game.stored_game.play(params[:choose_turn],params[:choose_turn2])
    else
      Game.stored_game.play(params[:choose_turn])
    end
    redirect '/play'
  end

  run! if app_file == $0

end
