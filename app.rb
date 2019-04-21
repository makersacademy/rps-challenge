require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/welcome'
  end

  get '/welcome' do
    @player_name = session[:player_name]
    erb :welcome
  end

  get '/game' do
    erb :game
  end

  post '/outcome' do
    @player_decision = params[:decision]
    @computer_decision = ["Rock", "Paper", "Scissors"].sample
    erb :outcome
  end

  run! if app_file == $0

end
