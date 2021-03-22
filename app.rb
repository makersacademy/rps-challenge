require 'sinatra/base'
require_relative "./lib/game"

class App < Sinatra::Base
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end
  # routes for a game against the computer.
  # Need to remove extra text box - set opponent to nil?
  post '/names' do
    @game = Game.new_game(params[:name], nil)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/selection' do
    @game.update_player_selection(params[:choices])
    @game.computer
    redirect '/end'
  end

  get '/end' do
    erb @game.evaluate_game
  end

  # routes for a game against another player

  post '/names-two-player' do
    @game = Game.new_game(params[:player_1], params[:player_2])
    redirect '/player-1'
  end

  get '/player-1' do
    erb :player1
  end

  post '/player-1-selection' do
    @game.update_player_selection(params[:choices])
    redirect '/player-2'
  end

  get '/player-2' do
    erb :player2
  end

  post '/player-2-selection' do
    @game.update_opponent_selection(params[:choices])
    redirect '/evaluate'
  end

  get '/evaluate' do
    erb @game.evaluate_player_game
  end
end
