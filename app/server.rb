require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  set :public_folder, Proc.new { File.join(root, "..", "public") }

  Game = Game.new

  get '/' do
    erb :index
  end

  post '/game' do
    Game.player = Player.new(session[:Name])
    session[:Name] = params[:Name]
    redirect to '/game'
  end

  get '/game' do
    @player = session[:Name]
    erb :game
  end

  post '/scores' do
    Game.player.choice = params[:choice]
    @player = session[:Name]
    redirect to '/scores'
  end

  get '/scores' do
    Game.result
    @winner = Game.winner
    @player = session[:Name]
    @choice = Game.player.choice
    @computer = Game.computer_choice
    erb :scores
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end