require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/second_name' do
      @game = Game.create(params[:player_name])
      # @game.first_player(params[:player_name])
      erb :second_name
  end

  post '/name' do
    @game = Game.instance
    @game.second_player(params[:player_name])
    erb :play
  end

  post '/next_choice' do
    @game = Game.instance
    @game.player1.set_choice(params[:choice].to_sym)
    erb :second_choice
  end

  post '/result' do
    @game = Game.instance
    @game.player2.set_choice(params[:choice].to_sym)
    @choice1 = @game.player1.choice
    @choice2 = @game.player2.choice
    @winner = @game.winner
    erb :result
  end

end
