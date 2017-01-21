#the main controller for rps web app
require 'sinatra/base'
require_relative 'lib/computer'
require_relative 'lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/result' do
    game = Game.new
    game.set_player_choice(params[:choice])
    @choice = game.player_choice
    @computer_choice = game.computer_choice
    @winner = game.winner
    erb :result
  end

end
