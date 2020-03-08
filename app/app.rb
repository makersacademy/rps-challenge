require 'sinatra/base'
require_relative '../lib/computer'
require_relative '../lib/game'
class RPS < Sinatra::Base
enable :sessions
  
  get '/' do
    session[:computer] = Computer.new
    session[:game] = Game.new
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game-start'
  end

  get '/game-start' do
    @name = session[:name]
    erb :game_start
  end

  post '/game' do
    game = session[:game]
    @computer_choice = session[:computer].make_choice
    @choice = params[:choice] 
    @name = session[:name]
    game.rps_logic(@choice, @computer_choice)
    @computer_score = game.computer_score
    @player_score = game.player_1_score
    redirect '/end' if (game.player_1_score == 3 || game.computer_score == 3)
    erb :game
  end

  get '/end' do
    @game = session[:game]
    erb :end
  end

# This will start a server automatically if the ruby 
# file is executed directly
  run! if app_file == $0
end