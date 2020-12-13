require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
    enable :sessions


  get '/' do
    erb :index
  end

  post '/play' do
    @player = params[:player]
    erb :play
  end

  get '/move' do
      $new_game = Game.new(params[:user_move])
      $move = params[:user_move]
      erb :move
  end

  get '/cpu' do
      @move = $move
      @cpu = $new_game.computer_move
      erb :cpu
  end

  get '/results' do
    @results = $new_game.winner
  end

end