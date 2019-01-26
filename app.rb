require 'sinatra/base'
require './lib/middle'
require './lib/computer'
require './lib/player'
class RockPaperScissors < Sinatra::Base
  
  enable :sessions

  before do
    @game = Middle.game_instance
  end

  get '/' do
    erb :index
  end
  
  post '/name' do
    @game = Middle.create_game(Player.new(params[:name]), Computer.new)
    p @game
    redirect '/game'
  end

  get '/game' do
    @name = @game.players.first.name
    @computer = @game.players.last.name
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