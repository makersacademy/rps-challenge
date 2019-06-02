require 'sinatra/base'

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
    @chosen_move = params[:move]
    erb :result
  end
end