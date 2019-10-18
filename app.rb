require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/answer' do
    $game.store_answer(params[:answer])
    redirect ('/result')
  end

  get '/result' do
    $game.generate_computer_answer
    $game.outcome
    @outcome = $game.display_outcome
    erb :result
  end
end
