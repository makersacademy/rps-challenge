require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'cy-krets'

  get '/' do
    # submit player1 name
    erb :reg_names
  end

  post '/play' do
    # show player vs computer
    # player submits their choice
    player1 = Player.new(params[:player1_name], params[:p1_choice])
    p 1
    p $game = Game.new(player1)
    p 2
    p @game = $game
    p 3
    p @game.computer_choice
    p 4
    erb :play
  end

  post '/results' do
    p 5
    player1 = Player.new(params[:player1_name], params[:p1_choice])
    
    p @game.player1.
    p 6
    p @game = $game
    p 7
    p @game.p1_choice
    p 8
    p @game.results
    # show results
    # button - play again? redirect to /play
    # button - reset player? redirect to /homepage
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
