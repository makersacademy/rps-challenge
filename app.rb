require 'sinatra/base'
require './lib/middle'

class RockPaperScissors < Sinatra::Base
  
  enable :sessions

  before do
    @game = Middle.game_instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    @game = Middle.create_game(session[:name], Middle.computer)
    p @game
    redirect '/game'
  end

  get '/game' do
    @name = @game.players[0]
    erb :game
  end

  post '/play' do
    # Take player 1's play and set it in game...
    session[:rock] = params[:rock]
    session[:paper] = params[:paper]
    session[:scissors] = params[:scissors]
    redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    @computer_choice = ['rock', 'paper', 'scissors'].sample
    @rock = session[:rock]
    @paper = session[:paper]
    @scissors = session[:scissors]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end