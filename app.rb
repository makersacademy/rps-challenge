require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    'Hello RPS!'
  end

  get '/register' do
    erb :index
  end

  post '/name' do
    @p1_name = params[:p1_name_input]
    @player1 = Player.new(@p1_name)
    @player2 = Player.new("The Computer")
    $game = Game.new(@player1, @player2)
    erb :play
  end

  post '/result' do
    @p1_choice = params[:p1_choice_input]
    @p2_choice = $game.get_choice
    @p1_name = $game.player1.name
    @p2_name = $game.player2.name
    @msg = $game.get_winner(@p1_choice, @p2_choice, @p1_name, @p2_name)
    erb :winner
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
