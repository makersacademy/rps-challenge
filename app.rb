require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get ('/') do
    # "Welcome to Rock Paper Scissors!"
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

  run! if app_file == $0

end
