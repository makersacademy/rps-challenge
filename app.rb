require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.new_game(params[:player1], params[:player2], params[:weapons])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    @game.get_move(params[:moves])
    if @game.current_player == @game.player2
      redirect '/play'
    else
      redirect '/result'
    end
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
