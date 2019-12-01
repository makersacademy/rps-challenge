require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1_name] = params["player"]
    redirect '/play'
  end

  get '/play' do
    session[:player1] = Player.new(session[:player1_name])
    @player1 = session[:player1]
    erb(:play)
  end

  post '/move' do
    session[:move] = params["move"]
    redirect '/move_page'
  end

  get '/move_page' do
    @move = session[:move]
    # This sets the move for the player object
    @player1 = session[:player1]
    @player1.send @move.downcase.to_sym
    session[:game] = Game.new(@player1)
    @game = session[:game]
    @game.random_move
    erb(:move_page)
  end

  # start server if ruby file executed directly
  run! if app_file == $0

end
