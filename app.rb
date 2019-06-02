require 'sinatra/base'
require './models/game'

class RockPaperScissors < Sinatra::Application
  enable :sessions
  set :session_secret, "My session secret"
  
  get ('/test-integration') do
    "Integration successful"
  end

  get ('/') do
    erb :index
  end

  post ('/start-game') do
    session[:player_name] = params[:player_name]
    redirect('/start-game')
  end

  get ('/start-game') do
    @player_name = session[:player_name]
    erb :start_game
  end

  post ('/result') do
    session[:move] = params[:move]
    session[:game] = Game.new
    redirect('result')
  end

  get ('/result') do
    @player_choice = session[:move]
    p @player_choice
    @game = session[:game]
    @computer_choice = @game.computer
    p @computer_choice
    @result = @game.outcome(@chosen_move)
    p @result
    erb :result
  end
end