require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  GAME = Game.new

  get '/' do
    erb :index
  end

  post '/game' do
    GAME.player = Player.new(session[:Name])
    session[:Name] = params[:Name]
    redirect to '/game'
  end

  get '/game' do
    @player = session[:Name]
    erb :game
  end

  post '/scores' do
    GAME.player.choice = params[:choice]
    @player = session[:Name]
    redirect to '/scores'
  end

  get '/scores' do
    GAME.result
    @winner = GAME.winner
    @player = session[:Name]
    @choice = GAME.player.choice
    @computer = GAME.computer_choice
    erb :scores
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end