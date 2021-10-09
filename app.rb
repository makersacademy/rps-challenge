require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get ('/') do
    erb :index
  end

  post ('/name') do
    session[:player_name] = params[:name]
    p params
    redirect to ('/game')
  end
  
  get ('/game') do
    @player_name = session[:player_name]
    erb :game
  end

  post ('/move') do
    session[:move] = params[:move]
    # @player_move = session
    p params
    redirect to ('/result')
  end

  get ('/result') do
    @player_move = session[:move]
    erb :result
  end

  run! if app_file == $0

end
