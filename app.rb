require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/name' do
    $game = Game.new(params[:player])
    redirect '/start'
  end

  get '/start' do
    @name = $game.player_name
    erb(:play)
  end

  post '/move' do
    $game.player_move = params[:player_move]
    redirect '/playing'
  end

  get '/playing' do
    @player_move = $game.player_move
    $game.update_computer_move
    @computer_move = $game.computer_move
    @winner = $game.return_winner_name
    erb(:playing)
  end

end
