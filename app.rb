require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

before do
    @game = Game.instance
end
    
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    @game = Game.create(params[:player_1_name],params[:Mode])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    @move = params[:move]
    @game.end_of_turn
    @computer = @game.computer_move
    erb :move
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
